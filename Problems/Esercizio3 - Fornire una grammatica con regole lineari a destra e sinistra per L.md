# Concetti Utilizzati
[[Grammatica]]
[[Grammatiche Regolari]]
[[regole di produzione di linguaggi regolari]]
[[Se io uso solo regole lineari a sx o dx posso ottenere tutti i linguaggi regolari]]
[[Come si trasformano regole lineari in un verso nell'altro]]

# Problema:
Sia $L = \{w \in \{0,1\}^* | w \text{ contiene almeno uno 0 e almeno un 1}\}$ che alla fine non e' altro che il linguaggio $L = \{0,1\}^+$
## Con regole lineari a destra
$S \to 0S, 1S, 0, 1$
## Con regole lineari a sinistra
$S \to S0, S1, 0, 1$

