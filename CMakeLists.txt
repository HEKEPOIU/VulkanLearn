cmake_minimum_required(VERSION 3.16)
project(vulkanLearning)

set(CMAKE_CXX_STANDARD 17)
find_package(Vulkan REQUIRED)
add_compile_options(-O2)

add_subdirectory(thirdparty/glfw)
SET(GLM_TEST_ENABLE OFF CACHE BOOL "GLM Build unit tests")
add_subdirectory(thirdparty/glm      EXCLUDE_FROM_ALL)

add_executable(${PROJECT_NAME} src/main.cpp)

target_include_directories(${PROJECT_NAME} SYSTEM PRIVATE thridparty/glfw/include thridparty/glm/glm)
target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES} Vulkan::Vulkan glm)
target_compile_definitions(${PROJECT_NAME} PRIVATE Root_DIR="${CMAKE_CURRENT_SOURCE_DIR}/")
