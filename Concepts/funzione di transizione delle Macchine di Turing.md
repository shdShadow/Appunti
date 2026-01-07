---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "True"
---
Data una [[Definizione formale delle macchine di Turing|MdT]] la delta ha queste caratteristiche:
$$ \delta \times \Gamma \to Q \times \Gamma \times \{L,R\}$$
Quindi:
Prende in input:
- Lo stato attuale
- Il simbolo che si trova nella cella attualmente puntata dalla testina

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
Se raggiunge un caso non definito, la macchina si ferma ed **e' esattamente questo il modo in cui andiamo a far terminare la computazione di una [[Macchine di Turing Deterministiche|macchina di turing]]**
# Come viene rappresentata?
La funzione puo' essere rappresentata, sempre in forma:
- Grafica (con il diagramma degli stati ...)
	- Molto simile a quello che abbiamo gia' visto nei [[DFA]], [[Automi a Pila]], ...
	- Ogni arco viene etichettato con:
		- **INPUT/OUTPUT**
		- L'output e' solo il simbolo da mettere sul nastro e la direzione (R-L oppure $\to - \leftarrow)$. Lo stato in cui andiamo non serve perche' si vede gia' dall' arco del disegno
- Tabellare
	- Viene usata una riga per ogni stato e una colonna per ogni simbolo in $\Gamma$ 
	- Visto che e' meno comune, un esempio puo' essere trovato qui: [[Esempio - Macchina di Turing che accetta L definito]]
# In caso di macchine di Turing non deterministiche 
L'unica differenza e' il codominio, che sara' un insieme di triple e non piu' una singola tripla:
$$ \delta(q,X) = \{(q_1, X_1, D_1),(q_2, Y_2, D_2) ...\} $$


