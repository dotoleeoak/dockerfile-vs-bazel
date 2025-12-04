cmake_minimum_required(VERSION 3.23)

project(HelloWorld)

add_library(hello_time)
target_sources(
  hello_time
  PRIVATE libs/hello_time.cc
  PUBLIC libs/hello_time.h)

add_library(hello_greet)
target_sources(
  hello_greet
  PRIVATE srcs/hello_greet.cc
  PUBLIC srcs/hello_greet.h)

add_executable(hello_world srcs/hello_world.cc)

target_link_libraries(hello_world hello_time hello_greet)
target_include_directories(hello_world PRIVATE ${CMAKE_SOURCE_DIR})
