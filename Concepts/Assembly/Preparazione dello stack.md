## Preparazione dello stack
- Prima di eseguire una funzione, il programma carica sullo stack tutti i parametri della funzione in **ordine inverso** rispetto alla firma
- Il programma usa poi una call indicando quale funzione vuole iniziare. La call fa due cose:
		- Pusha l'indirizzo dell'istruzione successiva, che sarebbe il return address, sullo [[Lo Stack|stack]]
		- Modifica instruction pointer in %eip in modo che punti all'inizio della funzione.
- A questo punto esegue effettivamente la funzione
		- Salva il base pointer corrente, %ebp facendo _push %ebp_
		- Copia lo stack pointer a %ebp facendo _movl %esp, %ebp_. **Questo ci permette di accedere ai parametri della funzione come indirizzi "fixed" a partire dal base pointer.**

> [!question] Non possiamo usare lo stack pointer?
> Si potremmo, ma durante l'esecuzione del programma noi potremmo dover fare altre cose come pushare argumenti verso altre funzioni.
> 
> Copiare lo stack pointer nel base pointer ci permette di sapere SEMPRE dove sono i parametri della funzione anche se nel mentre facciamo push/pop di altre cose sullo stack

A questo punto il nostro stack e' quindi formato nel seguente modo:
![[Pasted image 20260123160240.png]]
