---
tags:
  - esempio
course: Linguaggi e Computabilita'
chapter: "6"
---
![[Pasted image 20251222004034.png]]

Legge il primo simbolo (a) ed entrera' in gioco la [[funzione di transizione degli stati per automi a pila non deterministici]] che come visto nella nota linkata, accetta un simbolo in input, il simbolo in cima alla pila e lo stato attuale, e agira' di conseguenza.
Cosa puo' fare?( Si vede anche qui: [[funzione di transizione degli stati per automi a pila non deterministici]])
- Sicuramente consuma il simbolo in input
- Sicuramente cancella il simbolo in cima alla pila
- Puo' cambiare lo stato
- Puo' 
	- riscrivere un simbolo sullo stack ([[push nei pda]])
	- non scrivere nulla sullo stack ([[pop nei pda]])
	- scrivere piu' simboli sulla pila ([[push nei pda]])

Quando la stringa viene consumata totalmente oppure la computazione si ferma, si vede se l'[[Automi a Pila (PDA)]] accetta/rifiuta in base allo stato dove si e' fermato.