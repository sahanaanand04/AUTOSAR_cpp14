#ifndef UNUSED_PARAM_CHECKER_H
#define UNUSED_PARAM_CHECKER_H

#include "clang/ASTMatchers/ASTMatchFinder.h"

class UnusedParamChecker : public clang::ast_matchers::MatchFinder::MatchCallback {
public:
    virtual void run(const clang::ast_matchers::MatchFinder::MatchResult &Result) override;
};

#endif // UNUSED_PARAM_CHECKER_H
