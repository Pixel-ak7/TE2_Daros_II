#ifndef BENCHMARK_H
#define BENCHMARK_H

#include <vector>
#include <string>

// Declaración de funciones para ejecutar benchmarks
void ejecutarBenchmark(void (*algoritmo)(std::vector<int>&), const std::string& nombre, int tamano);
void ejecutarBenchmark(void (*algoritmo)(std::vector<int>&, int, int), const std::string& nombre, int tamano);
void benchmarkLinkedList(int tamano);
void benchmarkBST(int tamano);

// Nueva función para exportar los resultados
void exportarResultados(const std::string& filename);

#endif
