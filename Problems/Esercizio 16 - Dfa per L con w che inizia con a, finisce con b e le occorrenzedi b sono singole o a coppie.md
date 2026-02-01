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
Costruiamo un DFA per $L = \{w \in \{a,b,c\}^* | \text{ w inizia con a, finisce con b, e le occorrenza di b sono singole o a coppie}\}$
Alcune stringhe di esempio:
- Accettate
	- abbcb
	- aabaab
- Non accettate
	- aaba
	- acbbbb
	- acbbb 
![[Pasted image 20260127212353.png]]