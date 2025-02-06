#ifndef GLOBALVARCHECKER_H
#define GLOBALVARCHECKER_H

#include "clang/ASTMatchers/ASTMatchFinder.h"

class GlobalVarChecker : public clang::ast_matchers::MatchFinder::MatchCallback {
public:
    void run(const clang::ast_matchers::MatchFinder::MatchResult &Result) override;
};

#endif
