---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
---
#### Da stato finale a pila vuota
> [theorem]
> Sia $L = L(P_F)$ per un [[Automi a Pila (PDA)|PDA]] $P_F = (Q, \Sigma, \Gamma, \delta_F, q_0,  Z_0, F)$.  Allora esiste un PDA $P_N$ tale che $N(P_N) = L$,. (Esiste un pda per pila vuota che accetta lo stesso linguaggio di quello per stato finale)

![[Pasted image 20251223122338.png]]
Il nostro nuovo automa e':
$$ P_N = (Q \cup \{p_0, q\}, \Sigma, \Gamma \cup \{X_0\}, \delta_N, p_0, X_0)$$