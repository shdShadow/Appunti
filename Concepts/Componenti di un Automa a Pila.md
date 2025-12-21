Un [[Automi a Pila (PDA)]] e' formato da:
TODO: immagine automa a pila

- Il "quadrato" e' il **controllo finito degli stati**, dove in ogni instante si trova in un certo stato _q_
	- Alcuni stati sono finali quindi quando la stringa viene totalmente elaborata scopriamo se e' accettata oppure rifiutata
- una stringa $w$ in input che entra **un carattere alla volta**
- il controllo finito interagisce con la **pila** dove ogni cella puo' contenere un simbolo di un alfabeto fatto apposta per la pila.
	- Il simbolo $Z_o$
	- indica la fine della pila, cioe' dopo $Z_0$ non c'e' piu' simbolo.