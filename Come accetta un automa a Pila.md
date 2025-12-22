Un automa a Pila puo' accetta in due modi:
- [[Accettazione per stato finale]]
- [[Accettazione per pila vuota]]
## Come distinguo sintatticamente i linguaggi accettati nei due metodi?
I linguaggi accettati per [[Accettazione per stato finale|stato finale]] vengono indicati con $L(P)$ mentre quelli per [[Accettazione per pila vuota|pila vuota]] con $N(P)$

## I due metodi accettano gli stessi linguaggi?
[[Automi a Pila (PDA)|PDA]] per [[Accettazione per stato finale|stati finali]] accettano la stessa classe di linguaggi dei [[Automi a Pila (PDA)|PDA]] per [[Accettazione per pila vuota|pila vuota]].
Cio' vuol dire che se io ho un PDA per stati finali che accetta un certo linguaggio DEVE esistere un PDA per pila vuota che accetta lo stesso linguaggio.
> [!caution]
> Spesso non e' lo stesso automa!

(vale anche il viceversa)
### Dimostrazione
- [[Da pila vuota a stati finali]]
- [[Da stato finale a pila vuota]]

---
Ok, accettano la stessa classe di linguaggi. Ma quindi quale e' questa classe? In realta' l'abbiamo gia' visto e sono (almeno) i [[CFL - Context Free Language]], generati da [[Grammatiche CF - CFG|CFG]]. Vediamo quindi le [[trasformazioni tra CFG, PDA per stack vuoto e PDA per Stato Finale|trasformazioni possibili]].
Come si vede li', si nota come posso trasformare anche [[Grammatiche CF - CFG]] in [[Automi a Pila (PDA)]]. E' per questo motivo che si dice che i [[Automi a Pila (PDA)]] accettano **almeno** i [[CFL - Context Free Language|CFL]]

PERO'

Grazie alla dimostrazione (che non vediamo) in [[trasformazioni tra CFG, PDA per stack vuoto e PDA per Stato Finale]], da [[Automi a Pila (PDA)|PDA]] a [[Grammatiche CF - CFG|CFG]] si vede che i [[Automi a Pila (PDA)|PDA]] accettano esattamente i [[CFL - Context Free Language|CFL]].
## Osservazione
Dato un [[Automi a Pila (PDA)]] PDA P, non e' detto che sia $L(P) = N(P)$.
Cioe' non e' detto che il linguaggio accettato per [[Accettazione per stato finale|stati finali]] sa lo stesso di quello accettato per [[Accettazione per pila vuota|pila vuota]] dallo stesso automa.
