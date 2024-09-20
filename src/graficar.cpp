#include <gtk/gtk.h>
#include <cairo.h>
#include <fstream>
#include <sstream>
#include <vector>
#include <iostream>

struct DataPoint {
    int N;
    double time;
};

// Datos para cada algoritmo
std::vector<DataPoint> bubbleSortData;
std::vector<DataPoint> selectionSortData;
std::vector<DataPoint> mergeSortData;
std::vector<DataPoint> linkedListData;
std::vector<DataPoint> bstData;

void load_data(const std::string& filename) {
    std::ifstream file(filename);
    std::string line, algorithm;
    int N;
    double time;

    // Saltar la primera línea (encabezados) o cualquier línea que no contenga datos numéricos
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::getline(iss, algorithm, ',');  // Leer el algoritmo (p.ej., "BubbleSort")

        // Intentar leer los valores de N y Tiempo, ignorar las líneas que no contengan datos válidos
        try {
            std::string n_str, time_str;
            std::getline(iss, n_str, ',');
            std::getline(iss, time_str, ',');

            // Verificar si la línea tiene números válidos
            if (n_str.empty() || time_str.empty()) {
                continue;  // Si no hay datos válidos, pasar a la siguiente línea
            }

            N = std::stoi(n_str);        // Convertir el tamaño de entrada a entero
            time = std::stod(time_str);  // Convertir el tiempo a double

            // Clasificar los datos en su algoritmo correspondiente
            if (algorithm == "BubbleSort") {
                bubbleSortData.push_back({N, time});
            } else if (algorithm == "SelectionSort") {
                selectionSortData.push_back({N, time});
            } else if (algorithm == "MergeSort") {
                mergeSortData.push_back({N, time});
            } else if (algorithm == "LinkedListSearch") {
                linkedListData.push_back({N, time});
            } else if (algorithm == "BSTInsert") {
                bstData.push_back({N, time});
            }
        } catch (const std::invalid_argument& e) {
            // Si falla la conversión, significa que la línea no es válida (probablemente los encabezados)
            continue;
        }
    }
}

// Función para dibujar las gráficas
static gboolean on_draw_event(GtkWidget *widget, cairo_t *cr, gpointer user_data) {
    cairo_set_line_width(cr, 3);  // Hacer las líneas más gruesas

    // Dibujar ejes
    cairo_set_source_rgb(cr, 0, 0, 0);  // Negro para los ejes
    cairo_move_to(cr, 50, 50);
    cairo_line_to(cr, 50, 500);  // Eje Y
    cairo_line_to(cr, 600, 500);  // Eje X
    cairo_stroke(cr);

    // Etiquetas para el eje Y (tiempo)
    cairo_set_source_rgb(cr, 0, 0, 0);
    cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
    cairo_set_font_size(cr, 16);  // Hacer las etiquetas más grandes

    for (int i = 0; i <= 5; ++i) {
        std::string label = std::to_string(i * 0.1) + " s";
        cairo_move_to(cr, 10, 500 - (i * 90));
        cairo_show_text(cr, label.c_str());
    }

    // Etiquetas para el eje X (tamaño de entrada N)
    for (int i = 1; i <= 5; ++i) {
        std::string label = std::to_string(i * 2000);
        cairo_move_to(cr, 50 + (i * 110), 520);
        cairo_show_text(cr, label.c_str());
    }

    // Ajustar la escala de los datos
    double maxN = 10000.0;   // Máximo tamaño de entrada N
    double maxTime = 0.5;    // Escalado adecuado para el tiempo en segundos

    // Dibujar líneas para BubbleSort
    cairo_set_source_rgb(cr, 1, 0, 0);  // Rojo para BubbleSort
    for (size_t i = 0; i < bubbleSortData.size() - 1; ++i) {
        double x1 = 50 + (bubbleSortData[i].N / maxN) * 550;  // Escalar el eje X (N)
        double y1 = 500 - (bubbleSortData[i].time / maxTime) * 450;  // Escalar el eje Y (tiempo)
        double x2 = 50 + (bubbleSortData[i + 1].N / maxN) * 550;
        double y2 = 500 - (bubbleSortData[i + 1].time / maxTime) * 450;
        cairo_move_to(cr, x1, y1);
        cairo_line_to(cr, x2, y2);
    }
    cairo_stroke(cr);

    // Dibujar líneas para SelectionSort
    cairo_set_source_rgb(cr, 0, 1, 0);  // Verde para SelectionSort
    for (size_t i = 0; i < selectionSortData.size() - 1; ++i) {
        double x1 = 50 + (selectionSortData[i].N / maxN) * 550;
        double y1 = 500 - (selectionSortData[i].time / maxTime) * 450;
        double x2 = 50 + (selectionSortData[i + 1].N / maxN) * 550;
        double y2 = 500 - (selectionSortData[i + 1].time / maxTime) * 450;
        cairo_move_to(cr, x1, y1);
        cairo_line_to(cr, x2, y2);
    }
    cairo_stroke(cr);

    // Dibujar líneas para MergeSort
    cairo_set_source_rgb(cr, 0, 0, 1);  // Azul para MergeSort
    for (size_t i = 0; i < mergeSortData.size() - 1; ++i) {
        double x1 = 50 + (mergeSortData[i].N / maxN) * 550;
        double y1 = 500 - (mergeSortData[i].time / maxTime) * 450;
        double x2 = 50 + (mergeSortData[i + 1].N / maxN) * 550;
        double y2 = 500 - (mergeSortData[i + 1].time / maxTime) * 450;
        cairo_move_to(cr, x1, y1);
        cairo_line_to(cr, x2, y2);
    }
    cairo_stroke(cr);

    // Dibujar líneas para LinkedListSearch
    cairo_set_source_rgb(cr, 1, 0, 1);  // Morado para LinkedListSearch
    for (size_t i = 0; i < linkedListData.size() - 1; ++i) {
        double x1 = 50 + (linkedListData[i].N / maxN) * 550;
        double y1 = 500 - (linkedListData[i].time / maxTime) * 450;
        double x2 = 50 + (linkedListData[i + 1].N / maxN) * 550;
        double y2 = 500 - (linkedListData[i + 1].time / maxTime) * 450;
        cairo_move_to(cr, x1, y1);
        cairo_line_to(cr, x2, y2);
    }
    cairo_stroke(cr);

    // Dibujar líneas para BSTInsert
    cairo_set_source_rgb(cr, 1, 0.5, 0);  // Naranja para BSTInsert
    for (size_t i = 0; i < bstData.size() - 1; ++i) {
        double x1 = 50 + (bstData[i].N / maxN) * 550;
        double y1 = 500 - (bstData[i].time / maxTime) * 450;
        double x2 = 50 + (bstData[i + 1].N / maxN) * 550;
        double y2 = 500 - (bstData[i + 1].time / maxTime) * 450;
        cairo_move_to(cr, x1, y1);
        cairo_line_to(cr, x2, y2);
    }
    cairo_stroke(cr);

    // Dibujar leyenda
    cairo_set_source_rgb(cr, 1, 0, 0);  // Rojo para BubbleSort
    cairo_move_to(cr, 60, 20);
    cairo_show_text(cr, "BubbleSort");

    cairo_set_source_rgb(cr, 0, 1, 0);  // Verde para SelectionSort
    cairo_move_to(cr, 160, 20);
    cairo_show_text(cr, "SelectionSort");

    cairo_set_source_rgb(cr, 0, 0, 1);  // Azul para MergeSort
    cairo_move_to(cr, 275, 20);
    cairo_show_text(cr, "MergeSort");

    cairo_set_source_rgb(cr, 1, 0, 1);  // Morado para LinkedListSearch
    cairo_move_to(cr, 370, 20);
    cairo_show_text(cr, "LinkedListSearch");

    cairo_set_source_rgb(cr, 1, 0.5, 0);  // Naranja para BSTInsert
    cairo_move_to(cr, 510, 20);
    cairo_show_text(cr, "BSTInsert");

    return FALSE;
}

int main(int argc, char *argv[]) {
    // Cargar los datos del archivo CSV
    load_data("resultados_benchmark.csv");

    // Iniciar GTK
    GtkWidget *window;
    GtkWidget *darea;

    gtk_init(&argc, &argv);

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    darea = gtk_drawing_area_new();
    gtk_container_add(GTK_CONTAINER(window), darea);

    g_signal_connect(G_OBJECT(darea), "draw", G_CALLBACK(on_draw_event), NULL);
    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_window_set_default_size(GTK_WINDOW(window), 700, 700);  
    gtk_window_set_title(GTK_WINDOW(window), "Comparación de Algoritmos");

    gtk_widget_show_all(window);

    gtk_main();

    return 0;
}
