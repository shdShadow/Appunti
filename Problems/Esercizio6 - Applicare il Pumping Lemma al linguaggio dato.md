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
Si applichi il [[Pumping Lemma]] al seguente linguaggio:
$$ L = \{0^n1^m | n \geq m\}$$
Similmente a come abbiamo fatto in [[Esercizio5 - Applicare il Pumping Lemma al linguaggio dato]], prendiamo una [[stringa]] del tipo $w =0^n1^m$ con $n$ preso come costante. Allora poniamo:
- $|y| = l \ con \ 0<l\leq n$ e $n-l < m$
La stringa  viene scomposta in:
- $x = 0^{n-l}$
- $y = 0^l$
- $z = 1^m$
A questo punto:
$$\forall k \geq 0 : xy^kz = 0^{n-l}0^{kl}y^m \in L$$
Se prendiamo $k=0$ abbiamo:
- $xy^kz  = xz = 0^{n-l}1^m$ 
Se scelgo un l abbastanza grande, la stringa non appartiene ad $L$