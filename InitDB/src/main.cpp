#include <iostream>
#include <fstream>
#include <sstream>
#include "DataBaseUtil/DBWork.h"
#include <algorithm>

std::string getConnectionString(int argc, char *argv[]);
std::string readFile(const std::string& path);

int main(int argc, char *argv[]) {

    std::string seedParam = argv[6];
    std::string sqlInitDB = readFile("../../sql/init.sql");

    DBWork::start(getConnectionString(argc, argv));

    DBWork::executeQuery(sqlInitDB);
    if (seedParam.ends_with("YES")){
        std::string sqlFakeData = readFile("../../sql/data.sql");
        DBWork::executeQuery(sqlFakeData);
    }
    DBWork::closeConnection();

    return 0;
}

std::string readFile(const std::string& path){
    std::string data;
    std::ifstream file(path);
    if (file.is_open()){
        std::stringstream buffer;
        buffer<<file.rdbuf();
        data = buffer.str();
    } else{
        std::cerr<<"File not found"<<std::endl;
        exit(1);
    }
    data.erase(std::remove(data.begin(), data.end(), '\n'), data.cend());

    return data;
}

std::string getConnectionString(int argc, char *argv[]){
    std::string connectionString;
    for (int i = 1; i < argc-1; ++i) {
        connectionString.append(argv[i]).append(" ");
    }
    return connectionString;
}
