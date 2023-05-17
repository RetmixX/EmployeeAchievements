//
// Created by retmix on 16.05.23.
//

#ifndef BACKEND_BASEMODEL_H
#define BACKEND_BASEMODEL_H
#include <memory>
#include <crow/json.h>
#include <pqxx/result>
#include <list>

class BaseModel{
private:
    int id = -1;
public:
    [[nodiscard]] int getId() const;
    BaseModel() = default;
    explicit BaseModel(int id);
    virtual std::shared_ptr<crow::json::wvalue> serializeJson() = 0;
};
#endif //BACKEND_BASEMODEL_H
