---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
  - insight
known: "False"
---
Si ha un caso di non determinismo quando si ha piu' di un caso della [[funzione di transizione degli stati per NFA|delta]] per una stessa configurazione. A quel punto, possiamo pensare la computazione del [[Automa a stati finiti - NFA|DFA]] in 2 modi:
- L'automa si "sdoppia", cioe' si creano tante copie dello stesso automa quanti sono i casi della delta e ognuna segue uno di quei casi che ha causato il non determinismo.
	- L'automa accetta se almeno una copia accetta
- L'automa indovina dove andare,c'e' l'[[oracolo]] che ci dice esattamente che strada percorrere per far si' che la stringa accetti.