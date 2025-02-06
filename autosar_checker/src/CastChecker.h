#ifndef CASTCHECKER_H
#define CASTCHECKER_H

#include "clang/ASTMatchers/ASTMatchFinder.h"

class CastChecker : public clang::ast_matchers::MatchFinder::MatchCallback {
public:
    void run(const clang::ast_matchers::MatchFinder::MatchResult &Result) override;
};

#endif
