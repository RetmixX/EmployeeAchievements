cmake_minimum_required(VERSION 3.18.4)
project(InitDB)

set(CMAKE_CXX_STANDARD 20)

add_executable(InitDB main.cpp DataBaseUtil/DBWork.cpp DataBaseUtil/DBWork.h)
target_link_libraries(InitDB -lpqxx -lpq)