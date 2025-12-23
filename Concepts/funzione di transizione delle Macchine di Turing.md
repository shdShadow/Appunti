Data una [[Definizione formale delle macchine di Turing|MdT]] la delta ha queste caratteristiche:
$$ \delta \times \Gamma \to Q \times \Gamma \times \{L,R\}$$
Quindi:
Prende in input:
- Lo stato attuale
- Il simbolo che si trova nella cella attualmente dalla testina

> [!question] E non prende nessun simbolo dalla stringa in input?
> No: [[Come leggono l'input le MdT]]
> 

In output:
- Il nuovo stato dove deve andare il controllo finito
- Il simbolo da scrivere a posto di quello nella cella attuale, eventualmente lo stesso
- Dove si deve spostare la testina:
	- L = Left 
	- R = Right
## E' una funzione totale o parziale
E' parziale, non e' detto che la funzione sia definita su tutte le coppie stato-simbolo.
Se raggiunge un caso non definito, la macchina si ferma ed **e' esattamente questo il modo in cui andiamo a far terminare la computazione di una [[Macchine di Turing|macchina di turing]]**

