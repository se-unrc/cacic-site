one sig Lista {
    size : Int,
 	head : Nodo
}

sig Nodo {
   next : (Nodo + null),
   value : Int
}

fact acyclic { all n : Nodo | n in Lista.head.*next implies n !in n.^next }

fact correctSize { Lista.size = #(Nodo<:(Lista.head.*next)) }

one sig null {}

run {} for 0 but 5 Nodo, 2 int

assert soloUnNodo { #(Nodo<:(Lista.head.*next)) = 1 }
check soloUnNodo for 0 but 5 Nodo, 4 int

run dameUnCiclo { some n : Nodo | n in n.^next } for 0 but 5 Nodo, 4 int 
