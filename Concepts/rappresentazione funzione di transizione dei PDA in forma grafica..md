---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "6"
---
Simili ai vari tipi di [[Grafo]]:
- Stato iniziale si indica con un arco entrante in un nodo senza origine con l'etichetta start
- Gli stati finali si indicano sempre con il doppio cerchio
- Gli archi vengono etichettati con $a,X / \alpha$ dove:
	- _a_ rappresenta il secondo elemento della [[funzione di transizione degli stati per automi a pila non deterministici]], quindi il simbolo in input della stringa
	- $X \in \Gamma$ rappresenta il simbolo che dovrebbe essere in cima allo stack per poter usare quel caso della delta e rappresenta il terzo elemento della [[funzione di transizione degli stati per automi a pila non deterministici]]
	- _$\alpha$_ indica cosa andremo a scrivere sullo stack se viene applicato quel caso della delta.
	- Riassumibile con immagine sottostante
![[Pasted image 20251222004847.png]]