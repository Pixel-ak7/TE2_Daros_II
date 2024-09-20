#ifndef BST_H
#define BST_H

struct TreeNode {
    int val;
    TreeNode* left;
    TreeNode* right;
    TreeNode(int v) : val(v), left(nullptr), right(nullptr) {}
};

class BinarySearchTree {
public:
    TreeNode* root;
    BinarySearchTree() : root(nullptr) {}

    // Insertar en el árbol
    void insertar(int val) {
        root = insertarRec(root, val);
    }

private:
    TreeNode* insertarRec(TreeNode* node, int val) {
        if (node == nullptr) return new TreeNode(val);
        if (val < node->val)
            node->left = insertarRec(node->left, val);
        else if (val > node->val)
            node->right = insertarRec(node->right, val);
        return node;
    }
};

#endif
