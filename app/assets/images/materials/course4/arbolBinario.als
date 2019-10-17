one sig Arbol{
	root : Nodo + null,
}

sig Nodo{
	left : (Nodo + null),
	right : (Nodo + null),
	//value : Int
}

one sig null{}

fact{ all n:Nodo | (n.left!=n.right) or (n.left=null or n.right=null)}

fact noDiamantes {all n : Arbol.root.*(left + right) - null | 
		no (n.left.*(left + right) - null) & (n.right.*(left + right) - null)}

//fact{all n:Nodo|#(left.n + right.n)<2}      //* esto no esta correcto *//

//fact noCiclos1 {all n:Nodo|(n->n) not in ^(left  + right)} // * verlo de otra forma *//

fact  noCiclos2 {all n : Arbol.root.*(left + right) - null | n !in n.^(left + right) }

//fact{ all n:Nodo | #(Nodo<:(^left)).n<2 and #(Nodo<:(^right)).n<2 
	///		and (n not in n.left) and (n not in n.right) and
		//	n.left!=Arbol.root and n.right!=Arbol.root}

//fact{ all n:Nodo | ((n.left != null) and (n.right != null)) => (n.left != n.right) }

//fact{all n1,n2:Nodo | (n1.left!1!=(n1.right=n2) and (n3.left!=n2 and n3.right!=n2)}

//assert hijosig{all n:Nodo|n.left=n.right or (n.left!=n.right and (n.left!=null or n.right!=null))}

//check hijosig for 5
run {} for 5


run elArbolVacioEsUnArbol {some a : Arbol | a.root = null} for 5


run todasLasHojasMismaAltura {(all disj n1, n2 : Arbol.root.*(left + right) - null |
	 (n1.left = null && n1.right = null && n2.left = null && n2.right = null) implies
				 #(n1.^(~left + ~right)) = #(n2.^(~left + ~right)))
	&&
	(#(Arbol.root.*(left + right) - null) = 5)
	&& 
	(Arbol.root.left != null && Arbol.root.right != null)
} for 5


assert noDiamantes {all n : Arbol.root.*(left + right) - null | 
		no (n.left.*(left + right) - null) & (n.right.*(left + right) - null)}
check noDiamantes for 10 but 4 int
