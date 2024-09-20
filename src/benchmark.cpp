#include "benchmark.h"
#include "linkedlist.h"
#include "bst.h"
#include <iostream>
#include <fstream>  // Para escribir en archivos
#include <chrono>
#include <cstdlib>
#include <vector>

// Almacenar los tiempos de ejecución
std::vector<std::pair<int, double>> tiempos_bubbleSort, tiempos_selectionSort, tiempos_mergeSort;
std::vector<std::pair<int, double>> tiempos_linkedListSearch, tiempos_bstInsert;

// Función para ejecutar benchmark con un solo vector
void ejecutarBenchmark(void (*algoritmo)(std::vector<int>&), const std::string& nombre, int tamano) {
    std::vector<int> datos(tamano);
    for (int i = 0; i < tamano; i++) {
        datos[i] = rand() % 1000;
    }

    auto start = std::chrono::high_resolution_clock::now();
    algoritmo(datos);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> duracion = end - start;
    std::cout << "El algoritmo " << nombre << " tomó " << duracion.count() << " segundos para N = " << tamano << std::endl;

    if (nombre == "BubbleSort") {
        tiempos_bubbleSort.push_back({tamano, duracion.count()});
    } else if (nombre == "SelectionSort") {
        tiempos_selectionSort.push_back({tamano, duracion.count()});
    } else if (nombre == "MergeSort") {
        tiempos_mergeSort.push_back({tamano, duracion.count()});
    }
}

// Función para ejecutar benchmark con un vector y dos enteros
void ejecutarBenchmark(void (*algoritmo)(std::vector<int>&, int, int), const std::string& nombre, int tamano) {
    std::vector<int> datos(tamano);
    for (int i = 0; i < tamano; i++) {
        datos[i] = rand() % 1000;
    }

    auto start = std::chrono::high_resolution_clock::now();
    algoritmo(datos, 0, tamano - 1);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> duracion = end - start;
    std::cout << "El algoritmo " << nombre << " tomó " << duracion.count() << " segundos para N = " << tamano << std::endl;
    tiempos_mergeSort.push_back({tamano, duracion.count()});
}

// Función para exportar los resultados a un archivo CSV
void exportarResultados(const std::string& filename) {
    std::ofstream file;
    file.open(filename);

    file << "BubbleSort,N,Tiempo(s)\n";
    for (const auto& par : tiempos_bubbleSort) {
        file << "BubbleSort," << par.first << "," << par.second << "\n";
    }

    file << "SelectionSort,N,Tiempo(s)\n";
    for (const auto& par : tiempos_selectionSort) {
        file << "SelectionSort," << par.first << "," << par.second << "\n";
    }

    file << "MergeSort,N,Tiempo(s)\n";
    for (const auto& par : tiempos_mergeSort) {
        file << "MergeSort," << par.first << "," << par.second << "\n";
    }

    file << "LinkedListSearch,N,Tiempo(s)\n";
    for (const auto& par : tiempos_linkedListSearch) {
        file << "LinkedListSearch," << par.first << "," << par.second << "\n";
    }

    file << "BSTInsert,N,Tiempo(s)\n";
    for (const auto& par : tiempos_bstInsert) {
        file << "BSTInsert," << par.first << "," << par.second << "\n";
    }

    file.close();
    std::cout << "Resultados exportados a " << filename << std::endl;
}

// Benchmark para la lista enlazada
void benchmarkLinkedList(int tamano) {
    LinkedList lista;
    for (int i = 0; i < tamano; i++) {
        lista.insertar(rand() % 1000);
    }

    auto start = std::chrono::high_resolution_clock::now();
    lista.buscar(rand() % 1000);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> duracion = end - start;
    std::cout << "Búsqueda en lista enlazada tomó " << duracion.count() << " segundos para N = " << tamano << std::endl;
    tiempos_linkedListSearch.push_back({tamano, duracion.count()});
}

// Benchmark para inserción en el árbol binario de búsqueda
void benchmarkBST(int tamano) {
    BinarySearchTree bst;
    for (int i = 0; i < tamano; i++) {
        bst.insertar(rand() % 1000);
    }

    auto start = std::chrono::high_resolution_clock::now();
    bst.insertar(rand() % 1000);
    auto end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> duracion = end - start;
    std::cout << "Inserción en BST tomó " << duracion.count() << " segundos para N = " << tamano << std::endl;
    tiempos_bstInsert.push_back({tamano, duracion.count()});
}
