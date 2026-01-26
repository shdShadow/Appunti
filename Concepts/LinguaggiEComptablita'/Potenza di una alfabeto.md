
Dato un [[Alfabeto]] $\Sigma$ e dato un intero $k \geq 0$, definiamo la potenza $\Sigma^k$ come l'insieme delle sequenze di simboli ([[stringa|stringhe]]) di [[stringa#Lunghezza di una stringa|lunghezza]] _k_ formate dai simboli di $\Sigma$
## Cardinalita' di una potenza
Consideriamo $\Sigma^k$ con $k \geq 1 \text{ intero }$.
Se $|\Sigma| = n$, allora $|\Sigma^k|$ = $n^k$. 
#### "Dimostrazione"
E' facile da vedere:
Cioe' $\Sigma^k$ e' l'insieme di tutte le [[stringa|stringhe]] di [[stringa#Lunghezza di una stringa|lunghezza]] k
$$
\begin{array}{cccccc}
\text { simboli } \varepsilon & n & n & n & n & n & n & ... & 001 \\
\text{ indice }1 & 2 & 3 & 4 & 5 & 6 & 7 & ... & k \\
\end{array}
$$
quindi posso avere n simboli in k posizioni diverse, per questo 
$$|\Sigma^k| = n^k$$

## Esempi/Casi particolari
Considerando l'alfabeto binario $\Sigma = \{0,1\}$, vediamo alcuni casi
- $k = 2$
$$\Sigma^2 = \{00,01,10,11\}$$
- $k = 1$
$$ \Sigma^1 = \{0,1\}$$
>[!caution]
>Non da confondere con $\Sigma = \{0,1\}$. Sono scritti nello stesso modo pero' il primo e' un **insieme di [[stringa|stringhe]]** il secondo invece e' un [[Alfabeto]]. (Uno e' un insieme di stringhe l'altro di "char")

- $k=0$. E' l'insieme di [[stringa|stringhe]] di lunghezza zero, quindi solo la **stringa vuota**
$$\Sigma^0 = \{\varepsilon\}$$
