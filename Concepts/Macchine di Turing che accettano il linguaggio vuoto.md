---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
---
Possiamo definire due linguaggi: 
- $L_e = \{cod(M) \in \{0,1\}^*| L(M) =\varnothing\} = \{M | L(M) = \varnothing\}$
- $L_{ne} = \{M | L(M) \neq \varnothing\}$
Cioe' rispettivamente, l'insieme delle [[Macchine di Turing]] che non accettano nessun stringa e l'insieme delle [[Macchine di Turing]] che accettano almeno una stringa.
Tramite teoremi che non definiamo, diciamo che:
- $L_{ne}$ e' [[linguaggi ricorsivamente enumerabili|ricorsivamente enumerabile]] ma non ricorsivo
- $\overline{L_{ne}}$ = $L_e$. Non puo' essere ricorsivamente enumerabile e sara' quindi indecidibile (non ricorsivamente enumerabile, per quello che si vede in [[Proprieta' 2 dei linguaggi ricorsivi]]) 

Non esiste una algoritmo generale che data una macchina, mi dice se quella macchina non accetta nessuna stringa.