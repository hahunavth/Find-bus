cmake_minimum_required(VERSION 2.8.12)
project (TimBus)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")
add_subdirectory(cgraph)

add_subdirectory(libfdr)
# target_link_libraries(main fdr)

add_executable(bus-main bus-main.c)
target_link_libraries(bus-main cgraph)
target_link_libraries(bus-main fdr)

add_executable(ss-bus-main ss-bus-main.c  cgraph/examples/bus/getline.c)
target_link_libraries(ss-bus-main cgraph)
target_link_libraries(ss-bus-main fdr)

add_executable(graph_test graph_test.c)
target_link_libraries(graph_test cgraph)

add_executable(k55-final-exam k55-final-exam.c)
target_link_libraries(k55-final-exam cgraph)
target_link_libraries(ss-bus-main fdr)
