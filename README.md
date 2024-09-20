Requisitos
Para ejecutar este proyecto, necesitarás las siguientes bibliotecas:

GTK: para la interfaz gráfica.
Cairo: para las gráficas.


--------------------------------------------------------------------------------------------------------------------------------------------
Instrucciones de uso

Crear el directorio de compilación
Crea un directorio de compilación y cambia a él.

mkdir build
cd build

Compilar el proyecto
Ejecuta los siguientes comandos para compilar el proyecto:

cmake ..
make

Esto generará dos ejecutables:
Benchmark: Ejecuta los benchmarks y genera el archivo CSV con los resultados.
Graficar: Genera las gráficas basadas en los resultados del archivo CSV.

--------------------------------------------------------------------------------------------------------------------------------------------

Ejecutar los benchmarks
Ejecuta el siguiente comando para correr los benchmarks y generar el archivo resultados_benchmark.csv:

./Benchmark
La salida en consola mostrará algo como esto:


Pruebas con N = 100
El algoritmo BubbleSort tomó 4.4293e-05 segundos para N = 100
El algoritmo SelectionSort tomó 2.3283e-05 segundos para N = 100
El algoritmo MergeSort tomó 2.8954e-05 segundos para N = 100
...
Pruebas con N = 10000
El algoritmo BubbleSort tomó 0.410664 segundos para N = 10000
El algoritmo SelectionSort tomó 0.3197 segundos para N = 10000
El algoritmo MergeSort tomó 0.00759763 segundos para N = 10000
Los resultados también se guardarán en el archivo resultados_benchmark.csv:

BubbleSort,N,Tiempo(s)
BubbleSort,100,4.4293e-05
BubbleSort,500,0.00112362
BubbleSort,1000,0.00876682
...
BSTInsert,10000,9e-08
Paso 5: Graficar los resultados
Después de generar el archivo CSV, ejecuta el siguiente comando para ver las gráficas de los resultados:

--------------------------------------------------------------------------------------------------------------------------------------------

./Graficar
Esto abrirá una ventana que mostrará las líneas para los algoritmos y estructuras de datos, con las siguientes leyendas:

Rojo: BubbleSort
Verde: SelectionSort
Azul: MergeSort
Morado: LinkedListSearch
Naranja: BSTInsert

--------------------------------------------------------------------------------------------------------------------------------------------