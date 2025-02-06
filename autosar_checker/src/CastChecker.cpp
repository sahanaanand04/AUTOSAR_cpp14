#include "CastChecker.h"
#include "clang/AST/AST.h"
#include "clang/AST/FullSourceLoc.h"
#include "clang/Tooling/Tooling.h"

void CastChecker::run(const clang::ast_matchers::MatchFinder::MatchResult &Result) {
    if (const clang::CStyleCastExpr *castExpr = Result.Nodes.getNodeAs<clang::CStyleCastExpr>("cStyleCast")) {
        clang::FullSourceLoc FullLocation = Result.Context->getFullLoc(castExpr->getLocStart());
        if (FullLocation.isValid()) {
            llvm::outs() << "Violation: Avoid C-style casts at "
                         << FullLocation.printToString(Result.Context->getSourceManager()) << "\n";
        }
    }
}
