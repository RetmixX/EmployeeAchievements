cmake_minimum_required(VERSION 3.25)
project(Backend)

set(CMAKE_CXX_STANDARD 20)
find_package(Crow)
add_executable(Backend main.cpp)
target_link_libraries(Backend -lpqxx -lpq Crow::Crow)

