cmake_minimum_required(VERSION 3.11.0 FATAL_ERROR)
PROJECT(market_data_importer)

option(BUILD_SHARED_LIBS "Build the shared library" OFF)
option(Boost_USE_STATIC_LIBS "Use Boost static version" OFF)

#set(CMAKE_C_COMPILER "/usr/bin/gcc")
#set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_CXX_FLAGS "-Wall -Wextra -Wpedantic -std=c++11")
set(MAJOR 0)
set(MINOR 0)
set(PATCH 1)

if(NOT CMAKE_BUILD_TYPE)
MESSAGE(STATUS "not define build type, set to release" )
set(CMAKE_BUILD_TYPE Release )
elseif(NOT (${CMAKE_BUILD_TYPE} STREQUAL "Release" OR ${CMAKE_BUILD_TYPE} STREQUAL "Debug" ))
MESSAGE(SEND_ERROR "CMAKE_BUILD_TYPE must be either Release or Debug")
return()
endif()

set(BOOST_VER "1.67.0" CACHE STRING "boost version" )

set(Boost_USE_MULTITHREADED ON) 
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package(Boost ${BOOST_VER} REQUIRED COMPONENTS system date_time random) 

aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/socket_io ALL_SRC)
aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/socket_io/internal ALL_SRC)
file(GLOB ALL_HEADERS ${CMAKE_CURRENT_LIST_DIR}/socket_io/*.h )
set(SIO_INCLUDEDIR ${CMAKE_CURRENT_LIST_DIR})

find_package(OpenSSL)
add_library(sioclient_tls ${ALL_SRC})
target_include_directories(sioclient_tls PRIVATE ${Boost_INCLUDE_DIRS} 
    ${CMAKE_CURRENT_LIST_DIR}/src 
    ${CMAKE_CURRENT_LIST_DIR}/lib/websocketpp 
    ${CMAKE_CURRENT_LIST_DIR}/lib/rapidjson/include
    ${OPENSSL_INCLUDE_DIR}
)
set_property(TARGET sioclient_tls PROPERTY CXX_STANDARD 11)
set_property(TARGET sioclient_tls PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(sioclient_tls PRIVATE ${Boost_LIBRARIES} ${OPENSSL_LIBRARIES} )
target_compile_definitions(sioclient_tls PRIVATE -DSIO_TLS)
set_target_properties(sioclient_tls
	PROPERTIES
		SOVERSION ${MAJOR}
		VERSION ${MAJOR}.${MINOR}.${PATCH}
	)
list(APPEND TARGET_LIBRARIES sioclient_tls)


install(FILES ${ALL_HEADERS} 
    DESTINATION "${CMAKE_CURRENT_LIST_DIR}/build/include"
)

install(TARGETS ${TARGET_LIBRARIES}
    DESTINATION "${CMAKE_CURRENT_LIST_DIR}/build/lib/${CMAKE_BUILD_TYPE}"
)

install(FILES ${Boost_LIBRARIES} 
    DESTINATION "${CMAKE_CURRENT_LIST_DIR}/build/lib/${CMAKE_BUILD_TYPE}"
)

add_executable(iex_websocket_api src/main.cpp)
target_link_libraries(iex_websocket_api sioclient_tls)
target_link_libraries(iex_websocket_api pthread )
message(STATUS ${Boost_INCLUDE_DIRS} )

