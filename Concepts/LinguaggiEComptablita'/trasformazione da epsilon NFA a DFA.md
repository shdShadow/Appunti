Per operare questa trasformazione ci serve una funzione: la [[Epsilon Chiusura]]
L'algoritmo poi ha:
- _INPUT:_ un [[Automi a stati finiti - Epsilon-NFA|Epsilon-NFA]] $E = (Q_E, \Sigma, \delta_E, q_0, F_e)$
- _OUTPUT:_ Un [[Automa a Stati Finiti - DFA|DFA]] $D = (Q_D, \Sigma, \delta_D, q_D, F_D)$ equivalente ad E, cioe' tale che $$L(D) = L(E)$$
1. *$Q_D = 2^{Q_E}$*. Proprio come in [[trasformazione da NFA a DFA]], anche in questo caso ogni stato del [[Automa a Stati Finiti - DFA|DFA]] corrisponde ad un insieme di stati del [[Automa a stati finiti - NFA|NFA]]
	1. Se $S \in Q_D$ (e quindi $S \subseteq Q_E$) allora ECLOSE(S) = S, cioe' S e' _Epsilon-chiuso_
	2. Il massimo numero di stati che il [[Automa a Stati Finiti - DFA|DFA]] potra' avere e' $2^{Q_e}$ 
2. $q_D = ECLOSE(q_0)$
	1. Questo perche' il DFA in ogni passo di computazione consuma per forza un simbolo della [[stringa]] e si trova in uno stato che rappresenta in quel momento l'insieme di stati in cui si trova l'Epsilon-NFA. Quando partiamo dallo stato iniziale, se collegati a $q_0$ ci sono delle [[Epsilon-mossa|epsilon transizioni]], L'Epsilon-NFA puo' andare in diversi stati senza aver letto ancora nessun simbolo. Per simulare correttamente la cosa, deve tenere conto della cosa e lo fa appunto usando $ECLOSE(q_0)$ e non solo $q_0$ 
3. $F_D = \{S \in Q_D | S \cap F_E \neq \varnothing\}$
4. $\delta_D$
	1. $\forall a \in \Sigma$ e $\forall S = \{p_1,p_2, ... , p_k\} \in Q_D (S \subseteq Q_E)$. Posto $\bigcup\limits_{i=1}^{k} \delta_E(p_i,a) = \{r_1,r_2, ..., r_m\}$. Allora $\delta_D(S, a) = ECLOSE(\{r_1,r_2,...,r_m\})$
		1. Quindi come per la [[trasformazione da NFA a DFA]], vado a vedere dove ciascuno stato di S (cioe' stato del DFA ma sottoinsieme di stati del NFA) va a finire leggendo una _a_. Pero' questo e' un Epsilon-NFA, e a partire da quegli stati potrebbe avere anche [[Epsilon-mossa]]. Ne tengono conto usando la ECLOSE su ciascuno stato di $\delta_D(S,a)$ per far si che il DFA lo simuli correttamente
	2. E' possibile che nella tabella appaia come riga lo stato $\varnothing$. Questo, come in [[trasformazione da NFA a DFA]], indica uno **stato trappola**, in quanto la ECLOSE($\varnothing$) sara' sempre $\varnothing\}$
# Esempi/Esercizi
- [[Esercizio1 - Trasformazione da Epslon-NFA a DFA]]
- [[Esercizio2 - Trasformazione da Epsilon NFA a DFA]]
- [[Esercizio3 - Trasformazione da Epsilon NFA a DFA]]
- [[Esercizio4 - Trasformazione da Epsilon NFA a DFA]]
- 