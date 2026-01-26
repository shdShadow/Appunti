# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Costruiamo un DFA per $L = \{w \in \{0,1\}^*| \text{ le coppie 00 precedono le coppie 11 (se ci sono)}\}$
cioe' dopo 11 (se c'e'), non puo' comparire 00.
In questo caso ci conviene ragionare sulla stringa piu' corta che non puo' essere accettata: 1100, ed costruiamo il cammino piu' corto in grado che con 1100 l'automa rifiuti.

TODO :immagine 13

Ragioniamo sugli stati:
- $q_0$ e' finale, perche' il linguaggio comprende la stringa vuota. Le coppie 00 e 11 non sono obbligate ad esserci
	- Se leggo 0, allora rimango in $q_0$
	- Se leggo 1, potrebbe essere il primo 1 di 11, quindi mi sposto in $q_1$
- $q_1$ e' finale, perche' non sono obbligato ad avere 11, anche un solo 1 dopo tanti zeri e' accettato
	- Se leggo un altro 1, vuol dire che ho una coppia 11 e mi sposto in $q_2$
	- Se leggo 0, non e' successo nulla e torno in $q_0$, quella non era una coppia
- $q_2$ e' lo stato che "si mette in allerta", perche' c'e' una coppia 11 e dopo non ci deve essere 00
	- Se legge 1, vuol dire che non e' propriamente una coppia ma puo' essere una tripla, quadrupla, ... ma ovviamente ci sono sempre due 1
	- Se legge 0, passa in $q_3#, rischiamo davvero di avere 00
- $q_3$
	- Se arriva un altro 0, e' la stringa che ci manda in errore
	- Se arriva un 1, abbiamo letto una cosa del tipo 1101, quindi quell'1 potrebbe essere il primo di una coppia, e ci spostiamo in $q_2$
