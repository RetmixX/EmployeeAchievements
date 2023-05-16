//
// Created by retmix on 16.05.23.
//
#include "BaseModel.h"

int BaseModel::getId() const {
    return id;
}

BaseModel::BaseModel(int id) {
    this->id = id;
}


