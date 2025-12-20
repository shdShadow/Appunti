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
Sia $L = \{a^nb^nc^kd^k | n,k \geq 0\}$
Anche in questo caso ci sono 2 sottolinguaggi (esponente n e esponente k) ma fanno parte di un altro dei due casi paradigmatici visti: i linguaggi concatenati
Consideriamo il sottolinguaggio $a^nb^n$ rappresentato dalla variabile X e $c^kd^k$ rappresentato da Y.
Scriviamo le regole di produzione:
- $X \to aXb$
- $X \to \varepsilon$
- $Y \to cYd$
- $Y \to \varepsilon$ 
Queste derivano i sottolinguaggi separatamente, ma come faccio a concatenarli?
- $S \to XY$

Facciamo un esempio di derivazione:
$S \Rightarrow aXbY \Rightarrow abY \Rightarrow abcYd \Rightarrow abccYdd \Rightarrow abccdd$
con il relativo albero sintattico:
![[Pasted image 20251219195742.png]]