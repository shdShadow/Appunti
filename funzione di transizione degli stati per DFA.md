Dato un [[Automa a Stati Finiti - DFA|DFA]] $A = (Q, \Sigma, \delta, q_0, F)$ la sua $\delta$:
- prende in input:
	- Uno stato $q \in Q$
	- Un simbolo della stringa $a \in \Sigma$
- ritorna in output
	- Un altro stato $p \in Q$ (possibilmente anche lo stesso) in cui l'automa si sposta.
$$ \delta(q,a) = p$$
La funzione viene definita (a livello matematico: dominio/codominio) cosi':
$$ \delta: Q \times \ \Sigma \to Q$$
> [!caution]
> La $\delta$ e' una funzione **TOTALE**.
> Per i [[Automa a Stati Finiti - DFA|DFA]], ci deve essere un caso della $\delta$ per ogni coppia **stato-simbolo**, perche' sono **DETERMINISTICI**, ed essendo deterministici la $\delta$ deve essere definita SEMPRE.

## Rappresentazione della delta
Solitamente lo si fa in 3 modi?
1. _Per elencazione_: cioe' vado ad elencare ogni caso della delta per ogni coppia stato-simbolo
2. _Tramite tabella di transizione_: una tabella dove sulle righe ho **gli stati** mentre sulle colonne i **simboli**. Inoltre lo stato iniziale lo si indica con una freccia $\to$ e quelli finale con un asterisco *
	1. Un esempio lo si trova [[Esempio - DFA che prende in input stringhe binarie e accetta le stringhe contenenti un numero pari di 1#Tabella di Transizione|qui]]
3. _Tramite diagramma degli stati_: sicuramente il modo piu' comodo per noi umani
	1. E' un grafo con:
		1. Un nodo per ogni stato in $Q$
		2. Degli archi etichettati con il simbolo che ci permette di passare da uno stato all'altro
		3. Lo stato iniziale viene indicato con un freccia entrante nello stato iniziale senza origine, possibilmente etichettato con "START"
		4. Gli stati finali vengono identificati con un doppio cerchio

> [!important]
> Per il diagramma degli stati, e' importante verificare che per ogni nodo ci sia un arco per ogni simbolo in $\Sigma$

