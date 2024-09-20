#include "algoritmos.h"
#include "benchmark.h"
#include <iostream>
#include <vector>

std::vector<int> sizes = {100, 500, 1000, 5000, 10000};  // Diferentes valores de N

int main() {
    // Ejecutar benchmarks para BubbleSort, SelectionSort, y MergeSort con diferentes tamaños de entrada
    for (int N : sizes) {
        std::cout << "Pruebas con N = " << N << std::endl;
        ejecutarBenchmark(bubbleSort, "BubbleSort", N);
        ejecutarBenchmark(selectionSort, "SelectionSort", N);
        ejecutarBenchmark(mergeSort, "MergeSort", N);

        // Ejecutar benchmarks para las estructuras de datos con diferentes tamaños de entrada
        benchmarkLinkedList(N);
        benchmarkBST(N);
    }

    // Exportar los resultados a un archivo CSV
    exportarResultados("resultados_benchmark.csv");

    return 0;
}
