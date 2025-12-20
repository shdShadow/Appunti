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
Sia $L = \{a^nb^kc^kd^n | n > 0, k \geq 0\}$
Anche qui si vede che e' un linguaggio nidificato, come in [[Esercizio1 - Trovare CFG per L, con relativo albero sintattico]]: -
- Il sottolinguaggio $b^kc^k$ rimane sempre tra $a^n$ e $b^n$. Possiamo quindi indicare con una variabile X il sottolinguaggio $b^kc^k$ e cio' che rimane con S
Scriviamo le regole di produzione:
- $S \to aSd$
- $S \to aXd$
- $X \to bXc$
- $X \to \varepsilon$ 

Scriviamo ora alcuni esempi di derivazione con i relativi alberi sintattici:
- $S \Rightarrow aXd \Rightarrow ad$
- $S \Rightarrow aSd \Rightarrow aaSdd \Rightarrow aaaXddd \Rightarrow aaabXcddd \Rightarrow aaabcddd$
 
![[Pasted image 20251219195706.png]]