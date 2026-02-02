---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "2"
known: "False"
---
## Rappresentazione della delta
Solitamente lo si fa in 3 modi:
1. _Per elencazione_: cioe' vado ad elencare ogni caso della delta per ogni coppia stato-simbolo
2. _Tramite tabella di transizione_: una tabella dove sulle righe ho **gli stati** mentre sulle colonne i **simboli**. Inoltre lo stato iniziale lo si indica con una freccia $\to$ e quelli finale con un asterisco *
	1. Un esempio lo si trova [[Esempio - DFA che prende in input stringhe binarie e accetta le stringhe contenenti un numero pari di 1#Tabella di Transizione|qui]]
3. _Tramite diagramma degli stati_: sicuramente il modo piu' comodo per noi umani
	1. E' un grafo con:
		1. Un nodo per ogni stato in $Q$
		2. Degli archi etichettati con il simbolo che ci permette di passare da uno stato all'altro
		3. Lo stato iniziale viene indicato con un freccia entrante nello stato iniziale senza origine, possibilmente etichettato con "START"
		4. Gli stati finali vengono identificati con un doppio cerchio