---
course: Linguaggi e Computabilita'
chapter: "4"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Linguaggio]]
- [[Pumping Lemma]]
- [[linguaggi regolari]]
# Problema
Si applichi il pumping lemma al seguente [[Linguaggio]]:
$$
L = \{0^n1^m |m \geq n\}
$$
Queste stringhe potrebbero essere scritte come
$$
0^n1^{m-n}1^n$$
Dobbiamo ora trovare una stringa $w$ con la famosa costante, che scegliamo essere _n_. Spezziamo quindi la stringa:
- $x = 0^{n-1}$
- $y = 0$
- $z = 1^n$
Se fosse regolare, allora deve avere 
$$ \forall k \geq 0 \ xy^kz = 0^{n-1}0^k1^m \in L$$
Anche in questo caso non vale perche' basta prendere k abbastanza grande per avere che il numero di 0 sia maggiore di m.