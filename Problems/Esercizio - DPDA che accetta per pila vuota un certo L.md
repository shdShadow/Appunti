# Concetti utilizzati
[[Automi a Pila (DPDA)]]
[[funzione di transizione degli stati per automi a pila deterministici]]
[[Esercizio - Automa a Pila che accetta L]]

# Problema
Sia $L_{wcw^R} = \{wcw^R | w\ in \{0,1\}^R\}$
Ad esempio: $01C10$.
L'idea e' che:
- L'automa sara' composto da 3 stati 
- in $q_0$ impila i simboli sulla pila
- in $q_1$ cancella dalla pila e dall'input
- in $q_2$ accetta
Di per se e' molto simile a questo: [[Esercizio - Automa a Pila che accetta L]] con la differenza che dobbiamo fare particolarmente attenzione alla 'c' nel mezzo.
![[Pasted image 20251223122728.png]]


