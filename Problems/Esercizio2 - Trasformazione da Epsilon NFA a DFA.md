---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Automa a stati finiti - Epsilon NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[trasformazione da epsilon NFA a DFA]]
- [[Automa a Stati Finiti - DFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
- [[Epsilon-mossa]]
- [[Epsilon Chiusura]]
# Problema
![[Pasted image 20260127214206.png]]

Calcoliamoci le ECLOSE:
- $ECLOSE(p) = \{p\}$
- $ECLOSE(q) = \{p,q\}$
- $ECLOSE(r) = \{p,q,r\}$
Facciamo ora la tabella del DFA

|          | a       | b       | c       |
| -------- | ------- | ------- | ------- |
| $\to${p} | {p}     | {p,q}   | {p,q,r} |
| {p,q}    | {p,q}   | {p,q,r} | {p,q,r} |
| *{p,q,r} | {p,q,r} | {p,q,r} | {p,q,r} |
- $$\delta_D(\{p,q\},a) = ECLOSE(\delta_E(p,a) \cup \delta_E(q,a)) = ECLOSE(\{p\} \cup \{q\}) = ECLOSE(\{p,q\}) = ECLOSE(p) \cup ECLOSE(q) = \{p\} \cup \{p,q\} = \{p,q\}$$
Con il relativo disegno
![[Pasted image 20260127214247.png]]