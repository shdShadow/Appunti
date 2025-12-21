Le [[regole-di-pruduzione]] sono:
- $A \to aB, A \to a \ per \ A,B \in V, a \in T$ **lineare a destra**
- $A \to Ba, A \to A \ per \ A,B \in V, a \in T$ **lineare a sinistra**
> [!caution]
> Ma solo 1 delle due forme: quindi tutte le regole nella prima forma oppure tutte le regole nella seconda forma, non si possono mischiare

- Inoltre in entrambi i casi si puo' avere $S \to \varepsilon$ ma solo se $S$ e' lo start symbol
## Comodita'
E' stato specificato come una regola puo' andare al massimo in una [[Forme sentenziali|forma sentenziale]] con un solo [[Simboli Terminali|simbolo terminale]], pertanto regole del tipo:
$$ A \to ciao$$
non sono ammesse.
Pero', per questioni di comodita' facciamo come se lo siano perche' la loro trasformazione e' pressoche' meccanica e non implica nessun meccanismo particolare. La trasformazione di $A \to ciao$ sarebbe:
- $A \to cB$
- $B \to iC$
- $C \to aD$
- $D \to o$
## Come ricordo se sono lineari a destra o a sinistra?
Molto semplice, basta vedere dove sta la variabile:
- _Lineari a destra_: $A \to aB$ perche la variabile sta a destra
- _Lineari a sinistra_: $A \to Ba$ perche' la variabile sta a sinistra
## [[Se io uso solo regole lineari a sx o dx posso ottenere tutti i linguaggi regolari]]
# Particolarita'
Se:
- Le regole sono lineari a sinistra, allora le stringhe verranno generate da dx verso sinistra
- Le regole sono lineari a destra, allora le stringhe verranno generate da sinistra verso destra


