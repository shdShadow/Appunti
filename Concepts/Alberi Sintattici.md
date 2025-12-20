---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
---
> [!definition]
> Data una [[Grammatiche CF - CFG|CFG]] G = (V, T, P, S).
> Un [[Alberi Sintattici|albero sintattico]] per G, soddisfa le seguenti condizioni
> 1. Ogni nodo interno e' etichettato con una variabile in V
> 2. Ogni foglia e' etichettato con una variabile o con un [[Simboli Terminali|terminale]] oppure con $\varepsilon$
> 	1. Se etichettato con $\varepsilon$, la foglia deve essere **l'unico figlio** del suo genitore
> 3. Se un nodo interno e' etichettato con A, e i suoi figli sono etichettati da sinistra verso destra da $X_1,X_2, ... , X_k$ allora $A \Rightarrow X_1X_2...X_k$ e' una [[regole-di-pruduzione|regola di produzione]]
> 	1. C'e' un caso particolare ammesso: $A \Rightarrow \varepsilon$
> Soprattutto grazie alle Regole 1 e 3, si capisce come l'albero ci mostra una sorta di fotografia della [[Come si genera una stringa nelle CFG|generazione della stringa]] passo per passo con le diverse regole di produzione applicate.
## Cosa rappresentano gli alberi sintattici?
Rappresentano una derivazione di una certa stringa per una certa grammatica partendo dallo start symbol. La stringa derivata la vedo andando a leggere le foglie da sinistra verso destra.

# Backlinks
- [[derivazione leftmost e rightmost nelle CFG#Ma per gli Alberi Sintattici ?]]
- [[Come si genera una stringa nelle CFG]]
