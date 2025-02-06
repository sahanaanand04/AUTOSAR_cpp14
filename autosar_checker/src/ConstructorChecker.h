#ifndef CONSTRUCTERCHECKER_H
#define CONSTRUCTERCHECKER_H

#include "clang/ASTMatchers/ASTMatchFinder.h"

class ConstructorChecker : public clang::ast_matchers::MatchFinder::MatchCallback {
public:
    void run(const clang::ast_matchers::MatchFinder::MatchResult &Result) override;
};

#endif