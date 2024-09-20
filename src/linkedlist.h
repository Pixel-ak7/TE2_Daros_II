#ifndef LINKEDLIST_H
#define LINKEDLIST_H

struct Nodo {
    int data;
    Nodo* next;
    Nodo(int val) : data(val), next(nullptr) {}
};

class LinkedList {
public:
    Nodo* head;
    LinkedList() : head(nullptr) {}

    // Insertar al final de la lista
    void insertar(int val) {
        Nodo* nuevoNodo = new Nodo(val);
        if (head == nullptr) {
            head = nuevoNodo;
        } else {
            Nodo* temp = head;
            while (temp->next != nullptr) {
                temp = temp->next;
            }
            temp->next = nuevoNodo;
        }
    }

    // Búsqueda en la lista
    bool buscar(int val) {
        Nodo* temp = head;
        while (temp != nullptr) {
            if (temp->data == val) return true;
            temp = temp->next;
        }
        return false;
    }
};

#endif
