sig A { }
one sig Rel { r : A -> A }


fact reflexive { A<:iden in Rel.r }
fact symmetric { Rel.r = ~(Rel.r) }

assert rEqualsItsClosure { r = A<:*(Rel.r) }
check rEqualsItsClosure for 5
