Dato $A_L = (Q_L, \Sigma, \delta_L, q_L, F_L)$ e $A_M = (Q_M, \Sigma, \delta_M, q_M, F_M)$.
Costruiamo l'automa $A = (Q_L \times Q_M, \Sigma, \delta, (q_L, q_M), F_L \times F_M)$ dove:
- $Q_L \times Q_M = \{(p,q) | p \in Q_L \ q \ \in Q_M\}$
L'idea e' che questo [[automa prodotto]] in uno stato riesce a tenere traccia sia dello stato di $A_L$ che dello stato di $A_M$. Ogni volta che fa una mossa, aggiorna il suo stato simulando sia $A_L$ che $A_M$.
Ci interessa ora capire come funzione la sua [[funzione di transizione degli stati per automi a stati finiti|delta]]. Un caso generico e':
$$ \delta((p,q),a)$$
ma $(p,q)$ e' una coppia di stati e $p \in A_L$ e $q \in A_M$ $\delta_L$ sugli stati di $A_L$ e $\delta_M$ sugli stati di $A_M$, e ci avremo come risultato un altra coppia di stati.
$$ (\delta_L(p,a),\delta_M(q,a)) $$
$w \in \Sigma^*$ e' accettata da $A$ sse e' accettata sia da $A_L$ che da $A_M$, quindi sse $w \in L$ e $w \in M$ e quindi sse $w \in L \cap M$ 

---
L'automa prodotto viene usato anche in altre dimostrazioni come [[proprieta' di chiusura rispetto alla differenza insiemistica]]

# Esempi/esercizi
- [[Esercizio1 - Primo esempio degli automi prodotto]]
- 