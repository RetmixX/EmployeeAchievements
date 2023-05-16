//
// Created by retmix on 16.05.23.
//

#include "DB.h"
#include <iostream>
pqxx::connection* DB::connection = nullptr;

void DB::start(const std::string &connectionStr) {
    try{
        connection = new pqxx::connection(connectionStr);
    }catch (std::exception& exception){
        std::cerr<<exception.what()<<std::endl;
        exit(1);
    }
}

pqxx::connection *DB::getConnection() {
    if (connection == nullptr){
        std::cerr<<"DataBase not connected"<<std::endl;
        exit(1);
    }

    return connection;
}

void DB::closeConnection() {
    if (connection != nullptr){
        connection->disconnect();
        delete connection;
        connection = nullptr;
    }

    std::cerr<<"DataBase not connected"<<std::endl;
}
