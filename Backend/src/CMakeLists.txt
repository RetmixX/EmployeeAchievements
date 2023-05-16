cmake_minimum_required(VERSION 3.25)
project(Backend)

set(CMAKE_CXX_STANDARD 20)
find_package(Crow)
add_executable(Backend main.cpp DataBaseUtil/DB.cpp DataBaseUtil/DB.h Models/BaseModel.h Models/BaseModel.cpp Models/Employee/Employee.cpp Models/Employee/Employee.h Models/Employee/Status.cpp Models/Employee/Status.h Models/Employee/Divsion.cpp Models/Employee/Divsion.h)
target_link_libraries(Backend -lpqxx -lpq Crow::Crow)

