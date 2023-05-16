//
// Created by retmix on 16.05.23.
//

#ifndef BACKEND_DIVSION_H
#define BACKEND_DIVSION_H


#include "../BaseModel.h"

class Divsion: public BaseModel{
private:
    std::string title;

public:
    Divsion(int id, const std::string& title);
    std::shared_ptr<crow::json::wvalue> serializeJson() override;
    static std::shared_ptr<Divsion> serializeModel(const pqxx::result::const_iterator &c);

    std::list<std::shared_ptr<BaseModel>> allObjects();

    static std::shared_ptr<Divsion> findById(int id);
    std::string getTitle();
};

#endif //BACKEND_DIVSION_H