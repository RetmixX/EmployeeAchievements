//
// Created by retmix on 16.05.23.
//

#include "Divsion.h"
#include <memory>
#include "../../DataBaseUtil/DB.h"
#include <crow/json.h>

Divsion::Divsion(int id, const std::string &title): BaseModel(id) {
    this->title = title;
}

std::list<std::shared_ptr<BaseModel>> Divsion::allObjects() {
    return std::list<std::shared_ptr<BaseModel>>();
}

std::shared_ptr<Divsion> Divsion::findById(int id) {

    auto connection = DB::getConnection();
    connection->prepare("find_id", "select * from divisions where id = $1");
    pqxx::work work{*connection};
    pqxx::result result = work.prepared("find_id")(id).exec();

    if (result.empty()){
        throw std::exception();
    }
    work.commit();
    return Divsion::serializeModel(result.begin());
}

std::shared_ptr<Divsion> Divsion::serializeModel(const pqxx::result::const_iterator &c) {
    return std::make_shared<Divsion>(c[0].as<int>(), c[1].as<std::string>());
}

std::shared_ptr<crow::json::wvalue> Divsion::serializeJson() {
    std::shared_ptr<crow::json::wvalue> test;
    crow::json::wvalue json;
    json["id"] = this->getTitle();
    json["title"] = this->title;
    return test;
}

std::string Divsion::getTitle() {
    return this->title;
}


