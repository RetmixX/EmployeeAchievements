//
// Created by retmix on 16.05.23.
//

#ifndef BACKEND_EMPLOYEE_H
#define BACKEND_EMPLOYEE_H


#include "../BaseModel.h"

class Employee: public BaseModel{
private:
    std::string name;
    std::string surname;
    std::string patronymic;
};


#endif //BACKEND_EMPLOYEE_H
