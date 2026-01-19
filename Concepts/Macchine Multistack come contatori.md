---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "False"
---
![[Pasted image 20260104114116.png]]
- Guarda il primo simbolo della porzione di stringa non consumata
- Puo' scrivere un solo tipo di simbolo
- C'e' sempre il controllo finito
- Guarda i simboli in cima alle pile (X):
	- Toglie la X da entrambe le pile e poi puo' aggiungere ad entrambe la pile una stringa di X
- Le pile poste in questo modo rappresentano un **numero**. Nella seconda pila ho 3 X, quindi quella rappresenta in numero natura _3_

> [!theorem]
> Ogni [[linguaggi ricorsivamente enumerabili]] e' accettato da **3 contatori**
> **Dimostrazione:**
> Ogni [[linguaggi ricorsivamente enumerabili]] e' accettato da un [[Automi a Pila (DPDA)|DPDA]] con 2 pile ([[Macchine Multistack]]). Sia $r - 1 = |\Gamma|$ e rappresentiamo il contenuto di una pila con un numero in base $r$.
> Quindi se la pila contiene:
> $$ X_1, X_2, ..., X_n$$
> Allora il contatore conterra':
> $$ X_n r^{n-1} + X_{n-1}r^{n-2} + ... + X_2r + X_1$$
> Quindi ho:
> - 2 contatori per rappresentare le 2 pile
> - 1 contatore ausiliario per eventuali operazioni:
> 	- _POP_ di $X_1$: tolgo $X_1$ e divido per r
> 	- _PUSH di Y_: moltiplico per r e sommo Y

La cosa interassante e' che in realta', possiamo simulare le [[Macchine di Turing|MdT]] anche con soli 2 contatori, i quali simulano 3 contatori:
> [!theorem]
> Ogni [[linguaggi ricorsivamente enumerabili]] e' accettato da una macchina con 2 contatori
> **Dimostrazione**:
> Simuliamo una macchina a 3 contatori usando una macchina a 2 contatori:
> - 3 contatori: $C1 : i$, $C2 : J$, $C3 : k$
> Che con 2  contatori diventano:
> - 2 contatori: $C1: n = 2^i3^j5^k$ + un contatore ausiliario
