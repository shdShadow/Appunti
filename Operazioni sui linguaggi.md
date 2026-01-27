Supponiamo di avere due linguaggi $L$ e $M \subseteq \Sigma^*$. Le operazioni che possiamo fare sono:
## Unione
La indichiamo con $L \cup M$ ed e' letterlamente **l'unione insiemistica**.
Per esempio: $L = \{001,10,111\}$, $M = \{\varepsilon, 001\}$ allora $L \cup M = \{\varepsilon,001,10,111\}$
> [!question] Cosa succede se i due linguaggi sono definiti su [[Alfabeto|alfabeti]] diversi?
> Bisogna considerare i due linguaggi sull'unione dei loro [[Alfabeto|alfabeti]]

## Concatenazione
La indichiamo con $L \cdot M$ oppure solo $LM$ ed e' l'insieme di tutte le concatenazioni possibili tra tutte le stringhe di $L$ e le stringhe di $M$. 
Per esempio:
- $L = \{001,10,111\}$
- $M = \{\varepsilon, 001\}$
- $LM = \{001,001001,10,10001,111,111001\}$ 
Ovviamente non e' commutativa, come abbiamo gia' visto per le stringhe [[[stringa#Concatenazione tra stringhe]].
- $ML = \{001,001001,10,00110,111,00111\}$

## Chiusura di Kleene
Fino ad ora abbiamo visto la [[Chiusura di Kleene]] su un [[Alfabeto]], ma si puo' fare anche sui [[Linguaggio|linguaggi]]. Come per gli [[Alfabeto|alfabeti]] la indichiamo con un *: $L^*$
$$L^* = \bigcup\limits_{i \geq 0}L^i = L^0 \cup L^1 \cup L^2 ... 
$$
> La concatenazione e' associativa

dove $L^2$ = $L \cdot L$, $L^3 = L^2 \cdot L$, ... quindi piu' in generale
$$L^i = L \cdot L \cdot L \cdot ... \text{ i volte } $$
con una imposizione su $L^0 = \{\varepsilon\}$ 
> Stiamo quindi concatenando le stringhe di $L^i$ con le stringhe di $L^{i+1}$ in tutti i modi possibili

Esempio:
- $L = \{0,11\}$
- $L^0 = \{\varepsilon\}$
- $L^1 = \{0,11\}$ 
- $L^2 = \{0,11\} \cdot \{0,11\} = \{00,011,110,1111\}$
- ...

> [!important]
> Qualunque linguaggio elevato alla zero, da sempre il linguaggio contenente la [[stringa]] vuota: $\{\varepsilon\}$

> [!important]
> Negli esercizi, quando abbiamo una chiusura di Kleene si applica dall'espressione che si ottiene partendo dal carattere direttamente a sinistra da "*" fino a chiudure la piu' piccola espressione regolare valida
### Casi particolari per la chiusura di Kleene
- $\varnothing^*$ = $\varnothing^0 \cup \varnothing^1 \cup \varnothing^2 ... = \{\varepsilon\} \cup \varnothing \cup \varnothing ... = \{\varepsilon\}$
- $\{\varepsilon\}^* = \{\varepsilon\}^0 \cup \{\varepsilon\}^1 \cup \{\varepsilon\}^2 ... = \{\varepsilon\} \cup \{\varepsilon\} \cup \{\varepsilon\} ... = \{\varepsilon\}$ 

> [!important]
> Questi sono gli UNICI due casi in cui la chiusura di Kleene mi restituisce un linguaggi che non sia un insieme infinito

# Ordine di applicazione degli operatori
1) Chiusura di Kleene
2) Concatenazione
3) Unione