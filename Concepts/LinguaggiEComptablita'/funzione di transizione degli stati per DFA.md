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

Spesso viene aggiunto uno o piu' casi che portano la computazione in uno **stato trappola**, particolarmente utile per costringere la computazione a rifiutare e a consumare l'intera stringa nel caso si riconosca subito che tale stringa non e' corretta.

> [!important]
> Per il diagramma degli stati, e' importante verificare che per ogni nodo ci sia un arco per ogni simbolo in $\Sigma$

