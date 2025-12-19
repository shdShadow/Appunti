---
tags:
  - esercizio
  - evergreen
course: Linguaggi e Computabilita'
---
# Concetti utilizzati
[[Grammatica | Grammatiche]]
[[regole-di-pruduzione | regole di produzione]]
[[Come si genera una stringa?]]
[[passo di derivazione]]
[[derivazione leftmost e rightmost]]
[[derivazione in zero o piu' passi]]

# Problema
Consideriamo la grammatica con le seguenti regole di produzione:
1. $E \to I$
2. $E \to E + E$
3. $E \to E * E$
4. $E \to (E)$
5. $I \to a$
6. $I \to b$
7. $I \to Ia$
8. $I \to Ib$
9. $I \to I0$
10. $I \to I1$
La [[Grammatica]] completa e' la seguente: G = {V,T,P,S} dove:
- V = {E, I}
- T = {+, *, (, ), a, b, 0, 1}
- S = E (siamo costretti a partire dalla E, altrimenti partendo da I, non raggiungeremmo mai la E, cioe' non saremo mai in grado di generare un espressione)

Vogliamo provare a dimostrare questo:
$$ E \Rightarrow^* a * (a + b00) $$
in vari modi: iniziamo con una [[derivazione leftmost e rightmost|derivazione leftmost]]
## Leftmost
$$ E \Rightarrow_3 E * E$$
ora si nota la struttura uguale a quella richiesta. La prima E va quindi sostituita in a
$$ E * E \Rightarrow_1 I * E$$
$$ I * E \Rightarrow_5 a * E$$
concentriamoci sulla seconda parte ora: ci servono le parentesi attorno alla nostra espressione:
$$ a * E \Rightarrow_4 (E) $$
ora la nostra E deve diventare una somma di espressioni:
$$ (E) \Rightarrow_2 a * (E + E) $$
deriviamo la prima E, che deve diventare una a, quindi
$$ a * (E + E) \Rightarrow_1 a*(I+E) $$
$$ \Rightarrow_5 a * (a + E) $$
E ora deve diventare "b00", quindi prima deve diventare un identificatore
$$ \Rightarrow_1 a * (a + I) $$
$$ \Rightarrow_9 a * (a + I0) $$
$$ \Rightarrow_9 a * (a + I00) $$
$$ \Rightarrow_6 a * (a + b00)$$
## Rightmost
$$
\begin{aligned}
E \Rightarrow_3 E * E  \Rightarrow_4 E * (E) \Rightarrow_2 E * (E + E) \Rightarrow_1 E * (E + I) \Rightarrow_9 E * (E + I0) \Rightarrow_9 E * (E + I00) \Rightarrow_6 E * (E + b00) \Rightarrow_1 E * (I + b00) \Rightarrow_5 E * (a + b00) \Rightarrow_1 I * (a + b00) \Rightarrow_5 a * (a + b00)
\end{aligned}
$$

## Note:
- Anche mischiando derivazioni leftmost con derivazioni rightmost la stringa sarebbe comunque ottenibile.
- L'unico modo per terminare la derivazione di una stringa e' tramite la Regola 5 o la Regola 6