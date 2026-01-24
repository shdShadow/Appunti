---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "False"
---
> [!definition]
> Supponiamo che la [[Macchine di Turing Deterministiche|MdT]] M si trovi nella [[Descrizione istantanee delle MdT|configurazione]] (ID) corrente:
> $$ X_1X_2...X_{i-1}qX_iX_{i+1}...X_n$$ 
> e supponiamo che $\delta(q,X_i) = (p, y, L)$
> Allora la prossima configurazione e':
> $$ X_1X_2...X_{i-2}pX_{i-1}YX_{i+1}...X_n$$
> si nota quindi che:
> - La testina si e' spostata di una posizione a sinistra (L)
> - Lo stato e' cambiato in p, come indicato dal caso della delta
> - La cella precedentemente puntata dalla testina ha cambiato simbolo con Y, come indicato dal caso della delta.
> Possiamo quindi dire che:
> $$X_1X_2...X_{i-1}qX_iX_{i+1}...X_n \vdash_M X_1X_2...X_{i-1}qX_iX_{i+1}...X_n$$
> (porta in un passo alla configurazione...)

## Casi particolari
Sempre considerando lo stesso caso della [[funzione di transizione delle Macchine di Turing|delta]]: $\delta(q,X_i) = (p, y, L)$ e la stessa [[Macchine di Turing Deterministiche|Macchina di Turing]] M:
- $i = 1$, allora 
	- $$qX_1X_2...X_n \vdash_M pByX_2...X_n$$
	- cioe', mi sposto a sinistra di 1, ma alla mia sinistra o dei Blank, pertanto lo specifico. Il Simbolo nella mia posizione precedente ($X_1$) viene sovrascritto da y e mi sposto nello stato p.
- $i = n, y = B. Allora:
	- $$ X_1X_2...X_{n-1}qX_n \vdash_M X_1X_2...X_{n-2}pX_{n-1}$$
	- come prima, q passa in p e mi sono spostato di una posizione a sinistra. La differenza da prima, e' che in questo caso mi viene richiesto di inserire un carattere di Blank in posizione $X_n$ che' rappresenta la coda del nastro e non mi e' necessario specificarlo visto che dopo non c'e nulla ma soli blank.