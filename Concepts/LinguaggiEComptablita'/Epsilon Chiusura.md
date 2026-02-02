---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
  - insight
known: "False"
---
la ε-chiusura viene solitamente espressa come _ECLOSE(q)_ e rappresenta **l'insieme di stati raggiungibili da q tramite [[Epsilon-mossa|epsilon transizioni]] piu' q stesso**.
# Definizione di ECLOSE(q) per Induzione
- _BASE:_ $q \in ECLOSE(q)$
- _PASSO:_ se $p \in ECLOSE(q)$ ed esiste una [[Epsilon-mossa]] che va da _p_ a _r_ allora anche $r \in ECLOSE(q)$
Estendiamo ora la definizione per un insieme di stati P
$$ ECLOSE(P) = \bigcup\limits_{p\in P}ECLOSE(p)$$
per esteso
$$
ECLOSE(\{p_1,p_2,...,p_k\}) = ECLOSE(p_1) \cup ECLOSE(p_2) \cup ... \cup ECLOSE(p_k)
$$
C'e' un caso particolare: $ECLOSE(\varnothing) = \varnothing$ e questo viene imposto per coerenza.
## Esempi
Riconsiderando questo automa del [[Esempio - Primo esempio di Epsilon NFA]]
![[Pasted image 20260127113052.png]]
abbiamo che:
- _ECLOSE($q_0$) = $\{q_0,q_1,q_2\}$
- ECLOSE($q_1$) = $\{q_1,q_2\}$
- ECLOSE($q_2$) = $\{q_2\}$

Altro esempio:
![[Pasted image 20260127204216.png]]
- _ECLOSE(1) = {1,2,3,4,6}_
- _ECLOSE(2) = {2,3,6}_
- _ECLOSE(3) = {3,6}_
- _ECLOSE(4) = {4}_
- _ECLOSE(5) = {5,7}_
- ECLOSE(6) = {6}
- ECLOSE(7) = {7}
