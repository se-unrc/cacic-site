sig A { }
one sig Rel { r : A -> A }
fact reflexive { A<:iden in Rel.r }
fact transitive { (Rel.r).(Rel.r) in Rel.r }

assert rEqualsItsClosure { Rel.r = A<:*(Rel.r)}
check rEqualsItsClosure for 5
