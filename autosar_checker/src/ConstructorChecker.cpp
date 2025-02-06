#include "ConstructorChecker.h"
#include "clang/AST/AST.h"
#include "clang/Tooling/Tooling.h"

void ConstructorChecker::run(const clang::ast_matchers::MatchFinder::MatchResult &Result) {
    if (const clang::VarDecl *varDecl = Result.Nodes.getNodeAs<clang::VarDecl>("globalVar")) {
        if (!varDecl->getType().isConstQualified()) {
            clang::FullSourceLoc FullLocation = Result.Context->getFullLoc(varDecl->getLocStart());
            if (FullLocation.isValid()) {
                llvm::outs() << "Violation: Non-const global variable at "
                             << FullLocation.printToString(Result.Context->getSourceManager()) << "\n";
            }
        }
    }
}
