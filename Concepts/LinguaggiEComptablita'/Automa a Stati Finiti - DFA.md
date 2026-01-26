---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "2"
known: "False"
---
# Intro
Data una certa [[stringa]] $w = abca$, possiamo immaginarci l'[[Automi a stati finiti|automa]] come un dispositivo che ha:
- Un insieme finito di stati
- L'automa in ogni istante si puo' trovare in uno solo di questi stati
- Alcuni stati sono **finali**, cio' vuol dire che se:
	- L'automa si ferma dopo avere elaborato tutta la stringa su uno stato finale, allora significa che l'automa accetta quella stringa
	- Altrimenti la [[stringa]] non viene accettata 
L'automa consuma la [[stringa]] un simbolo alla volta, a partire dall'inizio (il carattere piu' a sinistra) partendo da un certo stato detto **iniziale**. A seconda del carattere letto e dello stato in cui si trova si spostera' in un altro stato e continuera' cosi' fino a quando la stringa e' totalmente consumata. 
> Sara' quindi a questo punto che vedo se l'automa si e' fermato in uno stato finale oppure no.

> [!caution] : L'automa non prende in input un linguaggio!
> L'automa prende in input una certa [[stringa]] ma e' costruito per accettare le [[stringa|stringhe]] di un certo [[Linguaggio]]

# [[Definizione formale di Automa a Stati Finiti]]
# Definizione di linguaggio accettato
Sia $A = (Q, \Sigma, \delta, q_0, F)$ un [[Automa a Stati Finiti - DFA|DFA]]. Il [[Linguaggio]] accettato da A e':
$$ L(A) = \{w \in \Sigma^* | \hat\delta(q_0, w) \in F\}$$
# [[DFA e complementi]]
# Esempi/Esercizi
- [[Esempio - DFA che prende in input stringhe binarie e accetta le stringhe contenenti un numero pari di 1]]
- [[Esercizio1- DFA che accetta tutte e sole le stringhe di 0 e 1 in cui compare almeno una volta la sequenza 01]]
- [[Esercizio2 - DFA che accetta le stringhe di {a,b} star contenenti un numero dispari di b]]
- [[Esercizio3 - DFA che accetta un certo L]]
- [[Esercizio4 - DFA per un certo L]]
- [[Esecizio 5 - DFA per L]]
- [[Esercizio 6 - DFA per L]]
- [[Esercizio 7 - DFA per L, numero pari di a e numero dispari di b]]
- [[Esercizio 8 - DFA per L dove w contiene un numero pari di a seguito da un numero dispari di b]]
- [[Esercizio 9 - DFA per L con numero dispari di a seguito da un numero dispari di b]]
- [[Esercizio 10 - DFA per un certo L]]
- [[Esercizio 11 - DFA per L]]
- [[Esercizio 12 - DFA per L]]
- [[Esercizio 13 - DFA per L]]
- [[Esercizio 14 e 15 - DFA per L]]
- [[Esercizio 16 - Dfa per L con w che inizia con a, finisce con b e le occorrenzedi b sono singole o a coppie]]

