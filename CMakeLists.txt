# 指定支持最低版本
cmake_minimum_required(VERSION 3.0.0)
PROJECT(hello)
# 设置编译器
SET(CMAKE_CXX_COMPILER "g++")
# 设置debug or release
SET(CMAKE_BUILD_TYPE Debug)
# 设置编译选项
SET (CMAKE_CPP_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=native -O3 -pthread -lpthread")
#头文件目录
INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)
#源文件目录
AUX_SOURCE_DIRECTORY(src DIR_SRCS)
#设置可执行文件编译目录
SET(EXEC_PATH ${DIR_SRCS})
#设置可执行文件名
ADD_EXECUTABLE(${PROJECT_NAME} ${EXEC_PATH})
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
#支持c++11 thread类
find_package(Threads REQUIRED)
if(THREADS_HAVE_PTHREAD_ARG)
	set_property(TARGET ${PROJECT_NAME} PROPERTY COMPILE_OPTIONS "-pthread")
	set_property(TARGET ${PROJECT_NAME} PROPERTY INTERFACE_COMPILE_OPTIONS "-pthread")
endif()
if(CMAKE_THREAD_LIBS_INIT)
	target_link_libraries(${PROJECT_NAME} "${CMAKE_THREAD_LIBS_INIT}")
endif()
