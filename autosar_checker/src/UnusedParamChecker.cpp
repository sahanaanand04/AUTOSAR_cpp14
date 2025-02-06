#include "UnusedParamChecker.h"
#include "clang/AST/Decl.h"
#include "clang/ASTMatchers/ASTMatchers.h"
#include "clang/Frontend/CompilerInstance.h"
#include <iostream>

using namespace clang;
using namespace clang::ast_matchers;

void UnusedParamChecker::run(const MatchFinder::MatchResult &Result) {
    if (const ParmVarDecl *Param = Result.Nodes.getNodeAs<ParmVarDecl>("unusedParam")) {
        if (!Param->isUsed()) {
            FullSourceLoc FullLoc = Result.Context->getFullLoc(Param->getBeginLoc());
            if (FullLoc.isValid()) {
                std::cout << "AUTOSAR Rule Violation (A13-5-5): Unused function parameter at "
                          << FullLoc.getSpellingLineNumber() << ":" 
                          << FullLoc.getSpellingColumnNumber() << std::endl;
            }
        }
    }
}

static DeclarationMatcher UnusedParamMatcher =
    parmVarDecl().bind("unusedParam");

void registerUnusedParamChecker(clang::ast_matchers::MatchFinder &Finder, UnusedParamChecker &Checker) {
    Finder.addMatcher(UnusedParamMatcher, &Checker);
}
