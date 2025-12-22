TODO: spezzare in nota separata tranne trasformazioni perche' specifiche per PDA
Un automa a Pila non deterministico puo' accetta in due modi:
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
## Osservazione
Dato un [[Automi a Pila (PDA)]] PDA P, non e' detto che sia $L(P) = N(P)$.
Cioe' non e' detto che il linguaggio accettato per [[Accettazione per stato finale|stati finali]] sa lo stesso di quello accettato per [[Accettazione per pila vuota|pila vuota]] dallo stesso automa.
