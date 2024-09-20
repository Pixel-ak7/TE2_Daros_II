cmake_minimum_required(VERSION 3.10)
project(ProyectoAnalisisAlgoritmos)

set(CMAKE_CXX_STANDARD 11)

# Incluir las bibliotecas GTK y Cairo
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
pkg_check_modules(CAIRO REQUIRED cairo)

include_directories(${GTK3_INCLUDE_DIRS})
link_directories(${GTK3_LIBRARY_DIRS})

include_directories(${CAIRO_INCLUDE_DIRS})
link_directories(${CAIRO_LIBRARY_DIRS})

add_definitions(${GTK3_CFLAGS_OTHER})
add_definitions(${CAIRO_CFLAGS_OTHER})

# Crear el ejecutable para los benchmarks
add_executable(Benchmark 
    src/main.cpp 
    src/algoritmos.cpp 
    src/benchmark.cpp
)

# Crear el ejecutable para graficar
add_executable(Graficar 
    src/graficar.cpp
)

target_link_libraries(Benchmark ${GTK3_LIBRARIES} ${CAIRO_LIBRARIES})
target_link_libraries(Graficar ${GTK3_LIBRARIES} ${CAIRO_LIBRARIES})
