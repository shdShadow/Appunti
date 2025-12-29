# Descrizione informale
Turing voleva dimostrare che esistesse un algoritmo in grado di dimostrare teoremi e ci provo' creando appunti la [[Macchine di Turing Deterministiche|Macchina di turing]]. Lo dimostro' in realta' Godel, dicendo che tale algoritmo non potesse esistere. Ma il teorema era puramente logico e Turing voleva qualcosa di piu' vicino alle macchine
I componenti sono:
- Un _nastro_ che sarebbe l'equivalente del foglio del matematico che usa per dimostrare teoremi. Siccome il matematico non sa a prescindere quanti fogli usera', il nastro ha dimensione infinita. E sara' quindi popolato di base da infiniti simboli che indicano che le celle sono vuote: il simbolo di Blank.
- Il _cervello_ che permette al matematico di ragionare su quello che sta scrivendo. Tale cervello detto **controllo finito**, sara' modellato da Turing come un [[Automa a Stati Finiti]] con un numero altissimo di stati. 
	- Il controllo finito potra' essere in un solo stato all'istante e decidera' poi cosa fara' in quello stato
- Il matematico deve interagire con il foglio, e lo fa attraverso una **testina** che puo'
	- leggere il contenuto della cella corrente
	- scrivere qualcosa in quella cella
	- spostarsi a sinistra o a destra di una cella.