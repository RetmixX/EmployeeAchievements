//
// Created by retmix on 16.05.23.
//

#ifndef BACKEND_DB_H
#define BACKEND_DB_H
#include <pqxx/pqxx>
class DB{
private:
   static pqxx::connection *connection;

public:
    static void start(const std::string &connectionStr);
    static pqxx::connection* getConnection();
    static void closeConnection();
};
#endif //BACKEND_DB_H
