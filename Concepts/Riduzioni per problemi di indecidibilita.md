Supponiamo che $P1$ sia [[Indecidibilita'|indecidibile]].
Vogliamo dimostrare che anche $P2$ e' indecidibile. 
Se $P2$ fosse decidibile, allora $\exists$ un programma che lo risolve.
TODO: immagine schemino

Per dimostrare che questo programma non esiste, costruiamo una riduzione:
- INPUT: istanza di $P1$, cioe' il problema che sappiamo essere indecidibile
- OUTPUT: ritorna un instanza di $P2$
	- Se la risposta di P1 e' si, allora anche per P2 e' si
	- se no anche per P2 e' no
	- Se non viene codificata, allora la risposta e' un qualcosa che non codifica un istanza di P2
TODO immagine

Costruiamo l'algoritmo:


Quindi abbiamo costruito un algoritmo per P1, ==ma P1 per ipotesi non e' decidibile== quindi questo algoritmo non puo' esistere.
Supponendo che P1 sia indecidibile, abbiamo dimostrato per P2 e' indecidibile.

## Osservazione
Con questa costruzione dobbiamo stare attenti a **non fare una riduzione da P2 a P1** perche' in tal caso cercheremo di dimostrare una cosa del tipo: "Se P1 e' decidibile allora P2 e' decidibile". Pero' la prima affermazione e' falsa, quindi il tutto non e' consistente e non riusciamo a fare nulla

Invece noi con il nostro ragionamento cercavamo di dimostrare che: Se $P2$ e' decidibile allora $P1$ e' decidibile che equivale a se $P1$ e' indecidibile allora $P2$ indecidibile

>[!caution]
>Dobbiamo sempre ricordarci di fare le riduzioni da un instanza di un problema indecidibile all'istanza del problema che vogliamo dimostrare come indecidibile.


