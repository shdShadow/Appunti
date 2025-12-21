# Concetti Utilizzati
[[Grammatica]]
[[Grammatiche Regolari]]
[[regole di produzione di linguaggi regolari]]
[[Se io uso solo regole lineari a sx o dx posso ottenere tutti i linguaggi regolari]]
[[Come si trasformano regole lineari in un verso nell'altro]]

# Problema
Sia G = ({S, T}, {0,1}, P ,S) con le seguenti [[regole-di-pruduzione]]:
- $S \to \varepsilon | 0S | 1T$
- $T \to 0T | 1S$
Quale e' L(G)?
$$L(G) = \{w \in {0,1}^* | w \text{ contiene un numero pari di 1 }\}$$

Si perche'1 l'unico modo per terminare la derivazione e' quando sono in S, e quando sono in S ho per forza un numero pari di 1.