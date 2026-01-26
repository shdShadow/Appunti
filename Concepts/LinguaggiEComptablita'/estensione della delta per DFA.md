# Funzione $\hat \delta$

Abbiamo visto che la [[funzione di transizione degli stati per DFA]] e' definita nel seguente modo:
$$ \delta : Q \times \Sigma \to Q $$
mentre le funzione $\hat \delta$ non prende in input un solo simbolo ma **un'intera [[stringa]]**:
$$ \hat\delta : Q \times \Sigma^* \to Q $$
> [!example]
> Per esempio $\hat \delta (q_0, abba)$ viene interpretato come: "l'automa partendo da $q_0$, se legge in quattro mosse abba, alla fine in che stato si trova?"
# Definizione per induzione
Esistono in realta' due modi per definire la funzione:
## Prima definizione: intuitiva
Viene fatta per induzione sulla lunghezza della [[stringa]]:
- _BASE_: se $|w| = 0$ allora $\hat\delta(q,w) = \hat\delta(q,\varepsilon) = q \ \forall q \in Q$
	- Se io leggo zero simboli (la stringa e' vuota), allora io rimango fermo in q, qualsiasi sia q
- _PASSO:_ se $|w| > 0$ e quindi $w = ax$ con $a \in \Sigma$ e $x \in \Sigma^*$ allora $\hat\delta(q,w) = \hat\delta(q,ax) = \hat\delta(\delta(q,a), x)$ 
	- Consideriamo quindi la nostra stringa come _ax_, cioe' un carattere iniziale piu' il resto della stringa. Legge quindi il carattere _a_, applicando il caso della [[funzione di transizione degli stati per DFA|delta]] associato finendo quindi in un certo stato $q \in Q$ . Da quello stato poi riparte con $\hat\delta$, leggendo la stringa x (scomposta poi nuovamente in ax'...), proseguendo con le chiamate ricorsive 
### Esempi:
- [[Esempio di calcolo della delta cappuccio versione intuitiva]]

## Seconda definizione: "del libro"
Anche questa viene fatta per induzione sulla lunghezza della [[stringa]]
- _BASE:_ se $|w| = 0$ allora $\hat\delta(q,w) = \hat\delta(q, \varepsilon) = q \ \forall q \in Q$
	- Questa rimane invariata rispetto a prima
- _PASSO_: se $|w| > 0$ e quindi $w = xa$ con $x \in \Sigma^*$ e $a \in \Sigma$ allora $\hat\delta(q,w) = \hat\delta(q,xa) = \delta(\hat\delta(q,x),a)$ 
	- In questa definizione quindi non isoliamo il primo carattere ma l'ultimo. Rispetto prima, dove prima facevamo la chiamata alla [[funzione di transizione degli stati per DFA|delta]] e poi la chiamata ricorsiva alla $\hat\delta$, qui facciamo prima la chiamata ricorsiva e poi quella "normale"

# [[Trucchetto per il calcolo di delta cappuccio]]
### Esempi
- [[Esempio di calcolo della delta cappuccio versione da libro]]

