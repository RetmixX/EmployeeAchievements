//
// Created by retmix on 16.05.23.
//

#ifndef BACKEND_REPOSITORY_H
#define BACKEND_REPOSITORY_H
#include <list>
#include <memory>
template<typename T>
class Repository{
public:
    virtual std::list<std::shared_ptr<T>> all() = 0;
    virtual std::shared_ptr<T> findById(int id) = 0;
    virtual std::shared_ptr<T> create(T model) = 0;
    virtual void deleteObject(T model) = 0;
    virtual std::shared_ptr<T> updateById(int id, T& model) = 0;
};
#endif //BACKEND_REPOSITORY_H
