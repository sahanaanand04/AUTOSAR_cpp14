#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "llvm/Support/CommandLine.h"
#include "CastChecker.h"
#include "GlobalVarChecker.h"
#include "ConstructorChecker.h"
#include "ReportGenerator.h"
#include "UnusedParamChecker.h"


using namespace clang::tooling;
using namespace clang::ast_matchers;
using namespace llvm;

// Option category for command-line arguments
static cl::OptionCategory AUTOSARCheckerCategory("autosar-checker options");

class AUTOSARChecker {
public:
    void run(const std::vector<std::string> &sourcePaths) {
        // Convert std::vector<std::string> to std::vector<const char *>
        std::vector<const char *> argvPtrs;
        argvPtrs.push_back("autosar_checker"); // Fake program name
        for (const auto &path : sourcePaths) {
            argvPtrs.push_back(path.c_str());
        }

        int argc = static_cast<int>(argvPtrs.size());

        // Use CommonOptionsParser::create() instead of calling constructor directly
        auto ExpectedParser = CommonOptionsParser::create(argc, argvPtrs.data(), AUTOSARCheckerCategory);
        if (!ExpectedParser) {
            errs() << ExpectedParser.takeError();
            return;
        }

        CommonOptionsParser &OptionsParser = ExpectedParser.get();
        ClangTool Tool(OptionsParser.getCompilations(), OptionsParser.getSourcePathList());

        // Initialize checkers
        CastChecker castChecker;
        GlobalVarChecker globalVarChecker;
        ConstructorChecker constructorChecker;
        ReportGenerator reportGenerator;
        UnusedParamChecker UnusedChecker;

        // Create MatchFinder
        MatchFinder Finder;

        // Define matchers for different checks
        Finder.addMatcher(cStyleCastExpr().bind("cStyleCast"), &castChecker);
        Finder.addMatcher(varDecl(unless(isConstexpr())).bind("globalVar"), &globalVarChecker);
        Finder.addMatcher(cxxConstructorDecl(unless(isExplicit())).bind("implicitCtor"), &constructorChecker);

        // Create matcher for unused parameter checker
        DeclarationMatcher UnusedParamMatcher = parmVarDecl().bind("unusedParam");
        Finder.addMatcher(UnusedParamMatcher, &UnusedChecker);

        // Run the tool with the matchers
        Tool.run(newFrontendActionFactory(&Finder).get());

        // Generate reports after running the analysis
        reportGenerator.generateReport();
    }
};

int main(int argc, const char **argv) {
    // Use CommonOptionsParser::create() to handle command-line arguments
    auto ExpectedParser = CommonOptionsParser::create(argc, argv, AUTOSARCheckerCategory);
    if (!ExpectedParser) {
        errs() << ExpectedParser.takeError();
        return 1;
    }

    CommonOptionsParser &OptionsParser = ExpectedParser.get();
    
    // Run the checker with the source files
    AUTOSARChecker checker;
    checker.run(OptionsParser.getSourcePathList());

    return 0;
}
