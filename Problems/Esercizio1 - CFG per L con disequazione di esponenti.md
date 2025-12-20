---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
---
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema
Sia $L = \{a^nb^m | n \geq m \geq 0\}$
Il trucco e' questo:
> Poiche $n \geq m$, $\exists k \geq 0 \text{ tale che } n = m + k$

a questo punto possiamo riscrivere il nostro linguaggio come:
$$ a^{m+k}b^m = \begin{cases}
a^ma^kb^m \\
a^ka^mb^m
\end{cases}$$

Entrambe le definizioni rappresentano due [[CFL - Context Free Language|CFL]], quindi scriviamo le regole di produzione per entrambi:
1. Linguaggio 1
	- $S \Rightarrow aSb$
	- $S \Rightarrow X$
	- $X \Rightarrow aX$
	- $X \Rightarrow \varepsilon$
2. Linguaggio 2:
	- $S \Rightarrow XY$
	- $X \Rightarrow aX$
	- $X \Rightarrow \varepsilon$
	- $Y \Rightarrow aYb$
	- $Y \Rightarrow \varepsilon$
# Note
- E' importante stare attenti al fatto che la stringa vuota e' parte del linguaggio e bisogna stare attenti nella scrittura delle regole di produzione.
- Si vedono entrambi i [[CFL - Context Free Language#Casi paradigmatici|casi paradigmatici]]:
	- L1: sono due linguaggi nidificati
	- L2: sono due linguaggi concatenati