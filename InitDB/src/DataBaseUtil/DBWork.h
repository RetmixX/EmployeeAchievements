//
// Created by retmix on 15.05.23.
//
#include <pqxx/pqxx>
#ifndef INITDB_DBWORK_H
#define INITDB_DBWORK_H
class DBWork{
private:
   static pqxx::connection *connection;

public:
   static void start(const std::string& connectionStr);
   static pqxx::connection* getConnection();
   static void closeConnection();
   static void executeQuery(const std::string& query);
};
#endif //INITDB_DBWORK_H
