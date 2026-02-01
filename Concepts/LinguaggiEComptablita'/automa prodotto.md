---
course: Linguaggi e Computabilita'
chapter: "4"
known: "False"
tags:
  - evergreen
  - insight
---
Dato $A_L = (Q_L, \Sigma, \delta_L, q_L, F_L)$ e $A_M = (Q_M, \Sigma, \delta_M, q_M, F_M)$.
Costruiamo l'automa $A = (Q_L \times Q_M, \Sigma, \delta, (q_L, q_M), F_L \times F_M)$ dove:
- $Q_L \times Q_M = \{(p,q) | p \in Q_L \ q \ \in Q_M\}$
L'idea e' che questo [[automa prodotto]] in uno stato riesce a tenere traccia sia dello stato di $A_L$ che dello stato di $A_M$. Ogni volta che fa una mossa, aggiorna il suo stato simulando sia $A_L$ che $A_M$.
Ci interessa ora capire come funzione la sua [[funzione di transizione degli stati per automi a stati finiti|delta]]. Un caso generico e':
$$ \delta((p,q),a)$$
ma $(p,q)$ e' una coppia di stati e $p \in A_L$ e $q \in A_M$ $\delta_L$ sugli stati di $A_L$ e $\delta_M$ sugli stati di $A_M$, e ci avremo come risultato un altra coppia di stati.
$$ (\delta_L(p,a),\delta_M(q,a)) $$
$w \in \Sigma^*$ e' accettata da $A$ sse e' accettata sia da $A_L$ che da $A_M$, quindi sse $w \in L$ e $w \in M$ e quindi sse $w \in L \cap M$ 

## Nota:
- Se $A$ contiene _n_ stati e $B$ contiene _m_ stati, il numero massimo di stati che potra' avere l'automa prodotto sara' _n * m_ stati. Quindi a differenza della [[trasformazione da epsilon NFA a DFA]], l'automa non ha un numero esponenziale di stati e quindi non tende ad esplodere.
- Siccome l'automa prodotto rappresenta [[Operazioni sui linguaggi|l'intersezione]] di due linguaggi, e' possibile che sia vuota e quindi che non ci siano stati finali.
---
L'automa prodotto viene usato anche in altre dimostrazioni come [[proprieta' di chiusura rispetto alla differenza insiemistica]]

# Tabella di transizione degli stati per gli automi prodotto
Scrivere la tabella per la [[funzione di transizione degli stati per automi a stati finiti]] e' simile a come si fa durante [[trasformazione da NFA a DFA]] e [[trasformazione da epsilon NFA a DFA]]:
- Si inserisce nella tabella solo la coppia che rappresenta lo stato iniziale come riga
- Si applica la delta su per ogni simbolo in $\Sigma$
- Ogni volta che si scopre una coppia di stati nuova la si aggiunge alla tabella come riga

# Esempi/esercizi
- [[Esercizio1 - Primo esempio degli automi prodotto]]
- [[Esercizio2 - Automa Prodotto]]
- [[Esercizio3 - Automa Prodotto]]
- 