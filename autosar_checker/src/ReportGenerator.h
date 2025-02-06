#ifndef REPORT_GENERATOR_H
#define REPORT_GENERATOR_H

#include <string>

class ReportGenerator {
public:
    // Function to report an AUTOSAR violation
    static void reportViolation(const std::string &rule, 
                                const std::string &message, 
                                int line, int column);
    // Generates and prints the final report summary
    void generateReport();                            
    
};

#endif // REPORT_GENERATOR_H

