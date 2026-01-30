Se $L,M$ sono [[linguaggi regolari]] sull'[[Alfabeto]] $\Sigma$. La loro $L \cup M$ e' anch'essa regolare?
Si, sotto segue la dimostrazione:
## Dimostrazione 1
Se $L,M \in REG$ , $\exists$ due [[Automi a stati finiti]] $R$ e $S$ che li accettano. Il seguente [[Automi a stati finiti - Epsilon-NFA|EPsilon-NFA]] che accetta $L \cup M$, che quindi $\in REG$
TODO: immagine proprieta' di chiusura sull'unione

## Dimostrazione 2
Se $L,M \in REG$ esistono due [[Espressioni Regolari]] che li denotano. L'ER $L+M$ denota $L \cup M$ che quindi e' un [[linguaggi regolari]]