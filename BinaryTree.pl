binaryTree(nil).
binaryTree(t(left,_,right)):-
    binaryTree(left),
    binaryTree(right).
