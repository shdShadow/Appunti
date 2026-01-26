Abbiamo visto che la [[funzione di transizione degli stati per NFA]] e' definita nel seguente modo:
$$ \delta : Q \times \Sigma \to 2^Q $$
mentre le funzione $\hat \delta$ non prende in input un solo simbolo ma un'intera [[stringa]]
$$ \hat\delta: Q \times \Sigma^* \to 2^Q $$
quindi $\hat\delta(q,w)$ ci restituisce l'insieme di stati in cui l'automa si trovera' quando parte da q e consuma tutto w.
# Definizione per induzione
Come in [[estensione della delta per DFA]], anche qui ci sono due definizioni ed entrambe lavorano per induzione sulla lunghezza della stringa
## Prima definizione: intuitiva
- _BASE:_ se $|w| = 0$ allora $\hat\delta(q,w) = \hat\delta(q,\varepsilon) = \{q\} \ \forall q \in Q$
	- Se io leggo zero simboli (la stringa e' vuota), allora io rimango fermo in q, qualsiasi sia q. In questo caso un insieme perche' la [[funzione di transizione degli stati per automi a stati finiti]] e' quella non deterministica
- _PASSO:_ se $|w| > 0$ e quindi $w = ax$ con $a \in \Sigma$ e $x \in \Sigma^*$. 
	- Posto $\delta(q,a) = \{p_1,p_2, ... , p_k\}$
	- Allora $\hat\delta(q,w) = \bigcup\limits_{i=1}^{k} \hat\delta(p_1,x)$
		- Isoliamo il primo carattere.
		- Abbiamo detto che l'automa partiva da q e ha consumato il simbolo _a_, ed e' finito nell'insieme di stati $\{p_1,p_2,...,p_k\}$. Ora devo consumare il resto della stringa, cioe' _x_ ma _x_ puo' essere consumata a partire da uno qualsiasi di quegli stati $\{p_1,p_2,...,p_k\}$ ([[Computazione e non determinismo NFA|Duplicazione]]). Ciasuna computazione sara' a sua volta un insieme di stati, che noi poi dobbiamo unire per ottenere il risultato di $\hat\delta(q,w)$.
## Seconda definizione: da libro
- _BASE:_ se $|w| = 0$ allora $\hat\delta(q,w) = \hat\delta(q,\varepsilon) = \{q\} \ \forall q \in Q$
- _PASSO:_ se $|w| > 0$ quindi $w = xa$ con $x \in \Sigma^*$ e $a \in \Sigma$
	- Posto $\hat\delta(q,x) = \{p_1,p_2,...,p_k\}$
	- Allora $\hat\delta(q,w) = \bigcup\limits_{i=1}^{k}\delta(p,a) = \{r_1,r_2,...,r_m\}$
		- Isoliamo l'ultimo carattere
		- Prima faremo quindi la chiamata ricorsiva, consumando la x e ottenendo l'insieme di stati in cui l'automa si ferma consumando _x_, poi nel secondo passo consumiamo la _a_, vedendo in quale altri insiemi di stati finira' la computazione. Tutti questi altri insiemi di stati verranno poi uniti per ottenere il risultato della computazione
# Esercizi/Esempi
- Un esempio dove si usa il secondo caso della delta cappuccio: [[Esercizio - Computazione della delta cappuccio di un NFA da libro]]
