---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
known: "False"
---
# Overview
E' il linguaggio, quindi l'insieme delle stringhe, generato da una certa [[Grammatiche CF - CFG|CFG]].
# Definizione Formale
 > [!definition] CFL
> Sia una [[Grammatiche CF - CFG|CFG]] G = (V, T, P, S).
> Il linguaggio generato da G e' :
> $$ L(G) = \{w \in T^* | S \Rightarrow^* w\} $$
> cioe' l'insieme delle stringhe formate di soli [[Simboli Terminali|simboli terminali]] che posso ottenere con una [[derivazione in zero o piu' passi]] a partire dallo _start symbol_ S della [[Grammatiche CF - CFG|CFG]] G

# Casi paradigmatici
Nei linguaggi [[CFL - Context Free Language|context free]] esistono solo 2 tipi di linguaggi possibili (poi combinabili in ogni modo):
- Linguaggi concatenati
	- [[Esercizio2 - Trovare CFG per L, con relativo albero sintattico]]
- Linguaggi nidificati
	- [[Esercizio1 - Trovare CFG per L, con relativo albero sintattico]]
	- [[Esercizio 1- Fornire una CFG per il linguaggio L]]
	- [[Esercizio 2 - Fornire CFG per linguaggio L]]
Al contrario, un esempio di linguaggio non CFL e' il seguente:
$L = \{a^nb^kc^nd^k\}$
si nota che non e' CFL perche' i due sottolinguaggi (si guardi gli esponenti) non sono ne nidificati ne concatenati ma incrociati, cosa che non e' possibile nei CFL ma solo nei [[Linguaggi Contestuali]]

# Backlinks
- [[Grammatiche CF - CFG]]