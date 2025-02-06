#include "ReportGenerator.h"
#include <iostream>
#include <fstream>
#include "json/json.h"  

class ReportGenerator {
private:
    Json::Value violations;  // Stores all violations

public:
    // Function to log a rule violation
    void reportViolation(const std::string &rule, const std::string &message, int line, int column) {
        Json::Value violation;
        violation["rule"] = rule;
        violation["message"] = message;
        violation["line"] = line;
        violation["column"] = column;

        violations.append(violation);  // Store violation in memory

        std::ofstream reportFile("report.json", std::ios::app);
        if (reportFile.is_open()) {
            Json::StreamWriterBuilder writer;
            reportFile << Json::writeString(writer, violation) << std::endl;
            reportFile.close();
        } else {
            std::cerr << "Error: Unable to open report.json for writing.\n";
        }
    }

    // Function to generate a final report summary
    void generateReport() {
        std::ifstream reportFile("report.json");
        Json::Value reportData;
        Json::CharReaderBuilder reader;
        std::string errs;

        if (reportFile.is_open() && Json::parseFromStream(reader, reportFile, &reportData, &errs)) {
            reportFile.close();
        } else {
            std::cerr << "Error: Failed to read report.json\n";
            return;
        }

        // Generate a summary
        std::cout << "======= AUTOSAR Compliance Report =======\n";
        std::cout << "Total Violations: " << reportData.size() << "\n";
        for (const auto &violation : reportData) {
            std::cout << "[Rule: " << violation["rule"].asString() << "] ";
            std::cout << violation["message"].asString() << " (Line: " 
                      << violation["line"].asInt() << ", Column: " 
                      << violation["column"].asInt() << ")\n";
        }
        std::cout << "========================================\n";
    }
};