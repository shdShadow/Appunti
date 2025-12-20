---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
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
per inferenza ricorsiva

|       | Stringa       | Variabile | n regola | stringhe impiegate         |
| ----- | ------------- | --------- | -------- | -------------------------- |
| i)    | a             | I         | 5        |                            |
| ii)   | b             | I         | 6        |                            |
| iii)  | b0            | I         | 9        | (ii) uso b e costruisco b0 |
| iv)   | b00           | I         | 9        | (iii)                      |
| v)    | a             | E         | 1        | (i)                        |
| vi)   | b00           | E         | 1        | (iv)                       |
| vii)  | a + b00       | E         | 2        | (v, vi)                    |
| viii) | (a + b00)     | E         | 4        | (vii)                      |
| ix)   | a * (a + b00) | E         | 3        | (v, viii)                  |
