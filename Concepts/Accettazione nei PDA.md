---
chapter: "6"
course: Linguaggi e Computabilita'
tags:
  - evergreen
known: "False"
---
Abbiamo gia' visto come i PDA accettano:
- [[Accettazione per pila vuota]]
- [[Accettazione per stato finale]]
ma...:
## I due metodi accettano gli stessi linguaggi?
[[Automi a Pila (PDA)|PDA]] per [[Accettazione per stato finale|stati finali]] accettano la stessa classe di linguaggi dei [[Automi a Pila (PDA)|PDA]] per [[Accettazione per pila vuota|pila vuota]].
Cio' vuol dire che se io ho un PDA per stati finali che accetta un certo linguaggio DEVE esistere un PDA per pila vuota che accetta lo stesso linguaggio.
> [!caution]
> Spesso non e' lo stesso automa!

(vale anche il viceversa)
### Dimostrazione
- [[Da pila vuota a stati finali]]
- [[Da stato finale a pila vuota]]
E' si dice che accettano esattamente i [[CFL - Context Free Language|CFL]] anche grazie a:
- [[trasformazioni tra CFG, PDA per stack vuoto e PDA per Stato Finale]]
- [[Equivalenza tra CFG e PDA per pila vuota]]

---
## Osservazione
Dato un [[Automi a Pila (PDA)]] PDA P, non e' detto che sia $L(P) = N(P)$.
Cioe' non e' detto che il linguaggio accettato per [[Accettazione per stato finale|stati finali]] sa lo stesso di quello accettato per [[Accettazione per pila vuota|pila vuota]] dallo stesso automa senza variazioni.
