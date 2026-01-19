---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
  - insight
known: "False"
---
$$\text{MdT } M \to \text{cod}(M) \in \{0,1\}^*$$
La [[Definizione formale delle macchine di Turing|definizione]] per le macchine di turing da codificare sara' la seguente:
$$M = (Q, \{0,1\}, \Gamma, \delta, q_1, B, \{q_2\})$$dove:
- $Q = \{q_1,q_2,q_3,...q_r\}$. Puo' quindi contenere un numero arbitrario di stati, l'importante e' che:
	- Siano numerati a partire da 1
	- Il primo stato $q_1$ sia lo stato iniziale
	- Il secondo stato $q_2$ sia lo stato finale
- $\Gamma = \{X_1, X_2, ... , X_s\}$ con $X_1 = 0$, $X_2 = 1$, $X_3 = B$
	- I primi tre simboli devono quindi essere quelli, il resto poi puo' essere aggiunto a piacere
- $\{L,R\}$ vengono codificate come $D_1, D_2$

> [!question] Come viene codificata la [[funzione di transizione delle Macchine di Turing|delta]]?
> Sappiamo che la delta opera in questo modo:
> $$ \delta(q_i, X_j) = (q_k,X_l, D_m) $$
> e questa potrebbe essere tranquillamente espressa come una quintupla:
> $$ (q_i, X_j, q_k, X_l, D_m)$$
> Ma siccome abbiamo "messo in ordine tutto" (stati, simboli del nastro, direzioni) allora a noi ci bastano solo gli indici, che noi sappiamo come associare ai valori corretti
> $$ (i, j, k, l, m) $$
> Ora la possiamo trasformare in una stringa binaria cosi':
> $$ 0^i10^j10^k10^l10^m $$
> quindi per ogni indice viene scritto un certo numero di zeri e ogni elemento viene poi separato con un 1
> 
> Questo e' un singolo caso della [[funzione di transizione delle Macchine di Turing|delta]], dobbiamo poi scriverli tutti:
> $$ C_1 \ 11 \ C_2 \ 11 \ C_3 \ 11 \ $$
> Ogni caso della delta viene separato da 11


## Esempi di codifica
- [[Esempi di codifica in stringa binaria di una macchina di Turing]]
## Osservazione
- Il motivo per cui prima abbiamo scelto che gli indice debbano partire da 1,  sta proprio nella delta. Se avessimo lo stato di indice zero come faccio a scrivere $0^0$?
- A differenza dell'[[Enumerazione delle stringhe binarie]], dove si ha una corrispondenza biunivoca, nel caso delle [[Macchine di Turing|MdT]] questa cosa non e' possibile:
	- Non e' suriettiva in quanto non tutte le stringhe possono codificare la macchina di Turing. Questa cosa mi da particolarmente fastidio. La risolvo associando a tale stringa una [[Macchine di Turing]] fittizia con:
		- 2 soli stati
		- I casi della delta sono vuoti
	- Non e' nemmeno iniettiva perche' ci sono [[Macchine di Turing|MdT]] che producono stringhe diverse: "se io concateno i vari casi della delta in ordini differenti, ho la stessa macchina di turing con pero' una codifica diversa"
 
 