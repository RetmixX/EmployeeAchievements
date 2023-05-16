//
// Created by retmix on 15.05.23.
//

#include "DBWork.h"
#include <iostream>
pqxx::connection* DBWork::connection = nullptr;

void DBWork::start(const std::string &connectionStr) {
    try{
        connection = new pqxx::connection(connectionStr);
    }catch (std::exception& exception){
        std::cerr<<exception.what()<<std::endl;
        exit(1);
    }
}

pqxx::connection *DBWork::getConnection() {
    return connection;
}

void DBWork::closeConnection() {
    if (connection == nullptr) return;

    connection->disconnect();
    delete connection;
    connection = nullptr;
}

void DBWork::executeQuery(const std::string &query) {
    if (connection == nullptr) return;
    pqxx::work work(*connection);
    try{
        work.exec(query);
        work.commit();
    }catch (std::exception &exception){
        std::cout<<exception.what()<<std::endl;
        work.abort();
    }
}
