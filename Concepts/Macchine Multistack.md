Non propriamente una [[Macchine di Turing]] ed e' piu' parente degli [[Automi a Pila (PDA)]]
TODO: immagine

C'e' sempre:
- Un controllo finito che in ogni istante si trova in un certo stato q
- In input prendera una stringa $w \in \Sigma^*$
- Diverse pile
- La [[funzione di transizione degli stati per automi a pila|delta]] :
	- Guarda in che stato si trova la macchina
	- Guarda il primo simbolo non consumato della stringa
	- Guarda il simbolo che sta in cima ad ogni pila
	- Cambia stato e al posto dei simboli che ha cancellato su ogni stack, scrive una certa [[stringa]]
## Varianti e restrizioni:
- [[Macchine Multistack Determinstiche]]
- [[Macchine Multistack come contatori]]
- 