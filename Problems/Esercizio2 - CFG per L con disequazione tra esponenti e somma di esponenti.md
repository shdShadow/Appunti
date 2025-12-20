---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
---
# Concetti utilizzati
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema
Sia $L = \{a^nb^{m+n}c^h | m > h \geq 0, n \geq 0\}$
Quindi: $\exists k > 0 | m \text{ (la variabile piu' grossa) } = h + k$
Riscriviamo quindi secondo k:
$$
a^nb^{m+n}c^h = a^nb^{h+k+n}c^h $$
Dobbiamo ora fare attenzione a non creare incroci, altrimenti non avremmo un linguaggio [[CFL - Context Free Language]] 
$$
a^nb^{h+k+n}c^h = 
\begin{cases}
a^nb^nb^hb^kc^h \\
a^nb^kb^nb^hc^h
\end{cases}$$Quindi:
L1:

- $S \to XY$
	- Y e' un linguaggio innestato
- $X \to aXb | \varepsilon$
- $Y \to bYc | Z$
- $Z \to Zb | b$
L2:
- $S \to XY$
- $X \to aXb | Z$
- $Z \to bZ | b$
- $Y \to bYc | \varepsilon$
