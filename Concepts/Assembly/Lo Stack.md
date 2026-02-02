- Regione di memoria che fa in modo che le funzioni possano eseguire correttamente.
- Lo stack cresce verso il basso, cioe' lo stack di sistema si trova all'indirizzo piu' alto e poi cresce verso il basso.
Tramite istruzioni push, possiamo aggiungere altri elementi in cima allo stack, allora la cima dello stack deve muoversi di conseguenza per fare spazio al nuovo elemento.

- [[Stack Pointer|Dove si trova la cima dello stack corrente?]]
- [[Devo per forza poppare un elemento per leggerlo dallo stack?]]

## Istruzioni
- **pushl**: caricare un valore in cima allo stack (cioe' ad un indirizzo di memoria piu' basso)
	- prende un operando: il registro da "pushare" sullo stack
- **popl**: rimuove l'elemento in cima allo stack e poi lo carica in un registro o in memoria a nostro piacimento.
	- prende un operando: il registro dove salvare il dato "poppato"