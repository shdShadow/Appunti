# Teorema
> [!theorem] Collegamento tra inferenza, derivazioni e alberi sintattici
> Data una [[Grammatiche CF - CFG|CFG]], i seguenti enunciati sono equivalenti:
> 1. La procedure di [[Per inferenza ricorsiva CFG|inferenza ricorsiva]] stabilisce che la stringa $w$ e' nel linguaggio generato dalla variabile $A$ (start  symbol oppure altra variabilie)
> 2. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$: $A \Rightarrow^* w$
> 3. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$ con sole [[derivazione leftmost e rightmost nelle CFG|derivazioni leftmost]]: $A \Rightarrow^{*}_{lm} w$
> 4. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$ con sole [[derivazione leftmost e rightmost nelle CFG|derivazioni rightmost]]: $A \Rightarrow^{*}_{rm} w$
> 5. Esiste un [[Alberi Sintattici|albero sintattico]] con radice $A$ e prodotto w (il prodotto e' la concatenazione di tutte le foglie)
## Dimostrazione
Per dimostrare, si usa questo schema.

### a) Dalle Inferenze agli alberi (da 1 a 5)
Si fa per induzione
L'idea e' che se esiste un [[Per inferenza ricorsiva CFG|inferenza]] che mostra che la stringa $w$ si puo' ottenere a partire dalla variabile $A$ allora questa [[Per inferenza ricorsiva CFG|inferenza]] sara' una tabella con un certo numero di riga e nell'ultima riga avro' $w$.   

Supponiamo che $w$ venga scomposta cosi':
$$w = w_1w_2 ... w_k $$
Dato che $w$ viene costruita nell'ultima riga a partire da $w_1w_2 ... w_k$ _costruite prima_. Allora io posso _tagliere la tabella_ e concentrarmi, ad esempio, sulle righe che costruiscono $w_1$, (poi $w_2, w_3, ...$).
Questa tabella e' sicuramente piu' piccola di quella di $w$ e posso allora sfruttare l'ipotesi induttiva: _Esiste un albero sintattico che costruisce $w_1$ ($w_2, w_3,...$)

![[Pasted image 20251222005121.png]]

A questo punto posso unire tutti i sottoalberi in un nuovo [[Alberi Sintattici|albero sintattico]] che avra' come prodotto la mia stringa $w_1 w_2 ... w_k$
![[Pasted image 20251222005209.png]]
### b) Dagli alberi alla derivazione sinistra
Per ottenere la derivazione sinistra ci basta visitare l'albero in profondita' verso sinistra e poi muovendosi man mano verso destra.
### c) Dagli alberi alla derivazione destra
Per ottenere la derivazione sinistra ci basta visitare l'albero in profondita' verso destra e poi muovendosi man mano verso sinistra.

Per gli ultimi due, c'e' un esempio utile: [[Esempio - Da albero sintattico a derivazione sinistra]]
