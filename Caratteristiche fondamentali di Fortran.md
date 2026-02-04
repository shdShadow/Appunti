---
dg-publish: true
---
_Dove vedo che il [[Fortran]] ha tenuto conto delle prestazioni molto limitate delle macchine?_: lo vedo in una sua caratteristica chiave:

- **mancato bisogno di [[memorizzazione dinamica]]**. Consentire soltanto [[memorizzazione statica]] rendeva la gestione dei dati in memoria semplice e veloce.
	- Il linguaggio ha scelto di negare la possibilita' di variabili locali in chiamate di funzioni. La conseguenza logica di questa scelta e' la mancanza di [[ricorsione]].
- Possedeva una buona gestione di [[array]] e cicli di conteggio
	- Il ciclo di conteggio era un do-while
- **Nessuna** gestione di stringa, aritmetica decimale o input/output potente
- Gli identificatori avevano al massimo _6 caratteri_
- **Caratteristico IF a tre vie** 
- **Nessuna dichiarazione di tipi di dato utente**.
	- Struct, oggetti e/o typedef non esistevano