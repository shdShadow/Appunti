---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
---
# Concetti usati
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
- [[Alberi Sintattici]]
# Problema
Sia $L = \{a^nc^kb^n|n,k > 0\}$

Regole di produzione:
- $S \to aSb$ | aCb 
- $C \to c$ | $C \to Cc$
![[Pasted image 20251219191459.png]]
## Note
- Non posso fare $S \to C$ direttamente perche' rischio di generare una stringa con sole c, che non e' ammessa nel linguaggio.
	- Sarebbe stata ammessa se $n,k \geq 0$
- E' un esempio di linguaggio nidificato, perche' si vedo come il sottolinguaggio delle C, rimane sempre tra a e b


