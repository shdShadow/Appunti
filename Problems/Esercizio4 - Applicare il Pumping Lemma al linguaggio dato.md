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
$$ L_{pal} = \{w \in \{(,)\} | w \text{ e' una stringa di parentesi bilanciate }\} $$
Alcune stringhe d'esempio:
- $\varepsilon \in L_{bal}$
- $(()) \in L_{bal}$
- $()(()) \in L_{bal}$

Tra tutte le stringhe di parentesi bilanciate ci sono quelli scritte in questo formato: $w = (^n)^n | n \geq 1$ che chiaramente sono in $L_{bal}$ in quanto apro n parentesi e poi ne chiudo altrettante.
E indovinate, indovinate, .... e' fondamentalmente lo stesso linguaggio di [[Esercizio1 - Primo esempio di applicazione del pumping lemma]].
Quindi scomponiamo $w = xyz$ come:
- $x = (^{n-1}$
- $y = ($
- $z = )^n$
Abbiamo soddisfatto le prime due condizione, quindi deve valere la terza:
$$
\forall k \geq 0 \ \ xy^kz = (^{n-1}(^k)^n \in L_bal{}
$$
Ma non e' vero per diversi valori di k, come:
- $k=0$ ho $(^{n-1}\ )^n$ quindi non puo' essere in $L_{bal}$

