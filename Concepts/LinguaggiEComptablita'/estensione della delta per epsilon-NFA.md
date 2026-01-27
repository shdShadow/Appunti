Come abbiamo gia' visto in [[estensione della delta per NFA]] e [[estensione della delta per DFA]], la $\hat\delta$ non accetta un solo simbolo in input, ma un intera stringa:
$$\hat\delta: Q \times \Sigma^* \to 2^Q$$
percio' ci restituira' un insieme di stati in cui l'automa si trovera' quando parte dallo stato iniziale e consuma tutta la stringa w in input.
# Definizione per induzione
La definizione viene fatta per induzione sulla lunghezza della [[stringa]] e come per le altre 2 $\hat\delta$, abbiamo due definizioni simili in base a come scomponiamo la [[stringa]] _w_
## Prima definizione: intuitiva
- _BASE_: se $|w| = 0$ quindi $w  = \varepsilon$ allora $\hat\delta(q,w) = \hat\delta(q,\varepsilon) = ECLOSE(q)$
	- In questo caso non possiamo dire che l'automa non puo' restare fermo perche' ci sono le [[Epsilon-mossa|epsilon-mosse]]
- _PASSO_: se $|w| > 0$ quindi $w = ax$ con $a \in \Sigma$ e $x \in \Sigma^*$.
	- Posto $ECLOSE(q) = \{p_1,p_2,...,p_k\}$ e $\{r_1,r_2,...r_m\} = ECLOSE(\bigcup\limits_{i=1}^{k}\delta(p_i,a))$ 
		- A questo punto, abbiamo consumato solo la _a_ e ottenuto l'insieme di stati in cui l'automa si puo' spostare leggendo una _a_
	- Vale quindi $\hat\delta(q,w) = \bigcup\limits_{i=1}^{m}\hat\delta(r_j,x)$ 
		- Leggendo una _a_, siamo arrivati negli stati $\{r_1,r_2,...r_m\}$ ora dobbiamo finire di leggere _x_, cioe' il resto della stringa. Quindi tramite chiamate ricorsive vedremo di volta in volta in quali stati finira' l'automa leggendo un simbolo per volta, fino a ricadere nel caso base. A quel punto uniamo il tutto e quello e' il risultato.
### Semplificazione della definizione
Possiamo anche semplificare questa definizione. Sappiamo che:
- $\delta(S,a) = \bigcup\limits_{q \in S}\delta(q,a)$ che abbiamo gia' visto in [[estensione della delta per NFA]]
La stessa cosa la posso fare per la $\hat\delta$, quindi facendola partire da un insieme di stati e non da un singolo stato:
- $\hat\delta(S, a) = \bigcup\limits_{q \in S} \hat\delta(q,w)$
Consideriamo anche il caso particolare in cui $S = \varnothing$:
- $\delta(\varnothing, a) = \varnothing \forall a \in \Sigma$
- $\hat\delta(\varnothing, w) = \varnothing \forall w \in \Sigma^*$
A questo punto sfruttiamo queste semplificazioni per riscrivere la definizione precedente:
- _BASE:_ $\hat\delta(q,\varepsilon) = ECLOSE(q)$
- _PASSO:_ se $|w| > 0$ quindi $w = ax$ con $a \in \Sigma$ e $x \in \Sigma^*$
	- Posto $P = ECLOSE(q)$,  $S = \delta(P,a)$ e $R = ECLOSE(S)$. Vale:
	$$ \hat\delta(q,w) = \hat\delta(R,x) $$
	- quindi nel passo diventa:
	$$ \hat\delta(q,ax) = \hat\delta(ECLOSE(S),x) = \hat\delta(ECLOSE(\delta(P,a)),x) = \hat\delta(ECLOSE(\delta(ECLOSE(Q),a)),x)$$


## Seconda definizione: da libro
Sfruttando sempre le semplificazioni fatte prima.
- _BASE:_ se $|w| = 0$, allora $\hat\delta(q,w) = \hat\delta(q,\varepsilon) = ECLOSE(q)$
- _PASSO:_ se $|w| > 0$ quindi $w = xa$ con $a \in \Sigma$ e $x \in \Sigma^*$
	- Posto $\hat\delta(q,x) = \{p_1,...,p_k\}$ e $\{r_1,...,r_m\} = \bigcup\limits_{i = 1}^{k}\delta(p_i,a)$. Vale che:
	$$ \hat\delta(q,w) = ECLOSE(\{r_1,...,r_m\})$$
### Semplificazione della seconda definizione
- Posto $P = \hat\delta(q,x)$, $R = \delta(P,a)$ e quindi vale $\hat\delta(q,w) = ECLOSE(R)$
Che in forma abbreviata diventa:
$$\hat\delta(q,xa) = ECLOSE(R) = ECLOSE(\delta(P,a)) = ECLOSE(\delta(\hat\delta(q,x),a)) $$
