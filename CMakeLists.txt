cmake_minimum_required(VERSION 3.0)

project(sort)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_BUILD_TYPE Debug)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
file(GLOB src_CPP ${PROJECT_SOURCE_DIR}/src/*.cpp)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_library(sort_lib STATIC ${PROJECT_SOURCE_DIR}/src/sort.cpp ${PROJECT_SOURCE_DIR}/include/sort.h)


link_directories(${PROJECT_SOURCE_DIR}/lib)
link_libraries(sort_lib)
add_executable(main src/main.cpp )
