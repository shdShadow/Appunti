---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Costruiamo un [[Automa a Stati Finiti - DFA|DFA]] per $L = \{w \in \{a,b\}^* | \text{ w contiene un numero pari di a e un numero dispari di b}\}$L'automa si deve ricordare due cose:
- Il numero di a
- Il numero di b
Per questo motivo ci serviranno 4 stati:
- $q_{pp}$ che indica "a pari" e "b pari"
- $q_{dp}$ che indica "a dispari" e "b pari"
- $q_{dd}$ che indica "a dispari" e "b dispari"
- $q_{pd}$ che indica "a pari" e "b dispari"
![[Pasted image 20260127210842.png]]