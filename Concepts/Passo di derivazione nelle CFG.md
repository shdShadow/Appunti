---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
---
Durante la derivazione di una stringa di un [[CFL - Context Free Language|CFL]] tramite [[Grammatiche CF - CFG|CFG]] cio' che andro' a fare e':
- Selezionare una qualsiasi variabile della mia forma sentenziale corrente
- La sostituisco con una regole di produzione appropriata
- E continuo cosi'...
- Fino a quando non ottengo la stringa che voglio oppure ho solo [[Simboli Terminali]] nella mia forma sentenziale
## Nota:
Dico apposta **"1 variabile"**, perche' per esempio, nei [[Linguaggi Contestuali]], devo selezionare un gruppo di simboli (possibilmente solo variabili, solo terminali oppure un po' variabili e un po' terminali) che soddisfano la testa delle [[regole-di-pruduzione|regole di produzione]] anche nel loro contesto.
## Definizione formale
In modo piu' formale:
> [!definition]
> Sia G = (V, T, P, S) una [[Grammatiche CF - CFG|CFG]].
> Sia $\alpha A\beta$ una [[Forme sentenziali|forma sentenziale]] tale che :
> - $A \in V$
> - $\alpha,\beta \in (V \cup T)*$
> Sia $A \to \gamma$ una [[regole-di-pruduzione|regola di produzione]]. Allora:
> $$ \alpha A \beta \Rightarrow \alpha \gamma \beta $$
### Osservazione sul contesto
- Sto dicendo che in un passo di derivazione io alpha e beta li riscrivo tali e quali mentre A lo sostituisco mediante la regola di produzione. Abbiamo quindi una relazione binaria tra le 2 [[Forme sentenziali]] perche' esiste una [[regole-di-pruduzione]] che mi permette di passare da una forma all'altra
- $\alpha, \beta$ forniscono un **contesto** nel quale viene effettuata la sostituzione. Sono un qualcosa che racchiudono la variabile da sostituire. 
	- Le grammatiche sono CF proprio perche' A e' sostituibile sempre, indipendentemente dal contesto. (Visto che le regole di produzione sono limitate ad un solo simbolo variabile in testa, e' chiaro che il contesto non venga considerato)
	- [[Grammatiche CF - CFG#Perche' viene detta Context-Free?]]