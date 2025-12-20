---
tags:
  - insight
  - draft
course: Linguaggi e Computabilita'
chapter: "5"
---
Data una [[Grammatiche CF - CFG|CFG]] G, un passo di derivazione rappresenta l'applicazione di una delle regole di produzione su una variabile, ottenendo quindi delle [[Forme sentenziali|forme sentenziali]]
## Come funziona un passo di derivazione?
Per ogni forma sentenziale, si lasciano intatti i [[Simboli Terminali]], mentre si sceglie una delle variabili, e la sostituisce applicando la [[regole-di-pruduzione | regola di produzione]] da noi scelta. Non e' piu' possibile compiere passi di derivazione una volta che la forma sentenziale e' composta da soli _simboli terminali_.
## Come si indica?
Si indica tramite una **freccia doppia** ($\Rightarrow$) che rappresenta proprio una relazione binaria
> [!definition]
> $\Rightarrow$ e' una relazione binaria tra **[[Forme sentenziali]]**. Mi dice quali [[Forme sentenziali]] sono in relazione fra loro, quindi quali [[Forme sentenziali]] posso ottenere a partire da un altra forma sentenziale.
> Se scrivo $a \Rightarrow b$, sto dicendo che a e' in relazione con b.

In modo piu' formale:
> [!definition]
> Sia G = (V, T, P, S) una [[Grammatiche CF - CFG|CFG]].
> Sia $\alpha A\beta$ una [[Forme sentenziali|forma sentenziale]] tale che :
> - $A \in V$
> - $\alpha,\beta \in (V \cup T)*$
> Sia $A \to \gamma$ una [[regole-di-pruduzione|regola di produzione]]. Allora:
> $$ \alpha A \beta \Rightarrow \alpha \gamma \beta $$
### Osservazione
- Sto dicendo che in un passo di derivazione io alpha e beta li riscrivo tali e quali mentre A lo sostituisco mediante la regola di produzione. Abbiamo quindi una relazione binaria tra le 2 [[Forme sentenziali]] perche' esiste una [[regole-di-pruduzione]] che mi permette di passare da una forma all'altra
- $\alpha, \beta$ forniscono un **contesto** nel quale viene effettuata la sostituzione. Sono un qualcosa che racchiudono la variabile da sostituire. 
	- Le grammatiche sono CF proprio perche' A e' sostituibile sempre, indipendentemente dal contesto.
	- [[Grammatiche CF - CFG#Perche' viene detta Context-Free?]]
## Idea
Proprio il nome **passo di derivazione** lascia subito intendere come vengono svolte le generazioni di stringhe ([[Come si genera una stringa?]]), in quanto non lo facciamo "tutto in una volta", ma lo facciamo passo per passo

# Backlinks
- [[Come si genera una stringa?]]
- [[derivazione leftmost e rightmost]]
- [[Forme sentenziali]]
- [[Grammatiche CF - CFG]]
