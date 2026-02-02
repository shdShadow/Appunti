---
course: Linguaggi e Computabilita'
known: "False"
chapter: "3"
tags:
  - evergreen
  - insight
---
Esiste una correlazione tra [[Espressioni Regolari]] e [[Automi a stati finiti]]([[Automa a Stati Finiti - DFA|DFA]], [[Automi a stati finiti - Epsilon-NFA|Epsilon NFA]] e [[Automa a stati finiti - NFA|NFA]]) e la possiamo vedere grazie a questo schemino:
![[Pasted image 20260129171830.png]]
quindi:
- Data un [[Espressioni Regolari|ER]] possiamo [[trasformazione da ER a Epsilon-NFA|costruire un Epsilon-NFA]] che accetta esattamente il linguaggio descritto dalla [[Espressioni Regolari|ER]]
- Dato un [[Automa a Stati Finiti - DFA|DFA]] possiamo ottenere l'[[Espressioni Regolari|ER]] equivalente: [[trasformazione da DFA a ER - Algoritmo per eliminazione degli stati]]