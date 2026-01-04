- **INPUT**: Programma P, input I per il programma P
- **DOMANDA**: il programma P con input I, prima o poi stampa la stringa "Ciao Mondo"?
> [!theorem] 
> Non esiste un programma H che risolva il problema "Ciao Mondo"
> **Dimostrazione**:
> Supponiamo per assurdo che H esista:
> ![[Pasted image 20260104114430.png]]
> 
> allora esiste anche H1 che prende in input P e I e stampa:
> - Si se stampa ciao mondo
> - "Ciao mondo" se non stampa ciao mondo
> ![[Pasted image 20260104114450.png]]
> 
> ma allora esiste H2 che prende in input P e:
> - fa una copia di P
> - Chiama H1 su P e la sua copia
>   ![[Pasted image 20260104114539.png]]
>   
>   _Ma cosa ha H2 se io gli do in Input il suo stesso codice sorgente?_
> - Se H2 con se stesso in input stampa "Ciao Mondo", allora ritorna "Si" ma e' sbagliato, doveva stampare "Ciao Mondo"
> - Se no stampa "Ciao Mondo" ma e' sbagliato
>   
>   Otteniamo quindi una **doppia contraddizione** cioe' un paradosso. Quindi non $\nexists H2, \nexists H1, \nexists H$

## Osservazione:
Alla base dei paradossi, c'e' l'autoreferenzialita'