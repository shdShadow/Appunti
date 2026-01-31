# Concetti utilizzati
- [[Linguaggio]]
- [[linguaggi regolari]]
- [[Proprieta' di chiusura dei linguaggi regolari]]
- [[automa prodotto]]
- [[stringa]]
# Problema 
Consideriamo i due [[Automi a stati finiti]] in figura: $A_L$ e $A_M$
TODO: immagine 

e:
- $A_L$ accetta le [[stringa|stringhe]] binarie che contengono almeno uno 0
- $A_M$ accetta tutte le [[stringa|stringhe]] binarie che contengono almeno un 1
L'automa prodotto che ne segue e':
$A = A_L \otimes A_M$ che accetta $L \cap M = \{w \in \{0,1\}^*| w \text{c ontiene almeno uno 0 e almeno un 1}\}$ 
TODO: immagine dell'automa prodotto

- Lo stato iniziale e' la coppia formata dallo stato iniziale di $A_L$ e lo stato iniziale di $A_M$, cioe' (p,r)
- da (p,r):
	- Se leggo 0, allora vado in (q,r)
	- Se leggo 1 vado in (p,s)
- da (p,s)
	- leggo un 0, vado in (q,s) che e' finale in quanto entrambi gli stati della coppia sono finali
	- leggo un 1, resto in (p,s)
- da (q,r)
	- leggo uno 0 e resto in (q,r)
	- leggo un 1, vado in (q,s)
- da (q,s)
	- leggo uno 0 e resto in (q,s)
	- leggo un 1 e resto in (q,s)
