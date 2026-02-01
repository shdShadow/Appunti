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
![[Pasted image 20260127214406.png]]

Come al solito, calcoliamo le ECLOSE:
- $ECLOSE(p) = \{p,q,r\}$
- $ECLOSE(q) = \{q\}$
- $ECLOSE(r) = \{r\}$
E scriviamo la tabella che descrive il [[Automa a Stati Finiti - DFA]]

|                   | a                 | b                 | c                 |
| ----------------- | ----------------- | ----------------- | ----------------- |
| *$\to${p,q,r} - A | {p,q,r} - A       | {q,r} - B         | {p,q,r} - A       |
| *{q,r} - B        | {p,q,r} - A       | {r} - C           | {p,q,r} - A       |
| *{r} - C          | $\varnothing$ - D | $\varnothing$ - D | $\varnothing$ - D |
| $\varnothing$ - D | $\varnothing$ - D | $\varnothing$ - D | $\varnothing$ - D |
Alcuni casi interessanti:
- $$\delta_D(\{p,q,r\},q) = ECLOSE(\delta_E(p,q) \cup \delta_E(q,a) \cup \delta_E(r,a)) = ECLOSE(\varnothing \cup \{p\} \cup \varnothing) = ECLOSE(\{p\}) = ECLOSE(p) = \{p,q,r\}$$
![[Pasted image 20260127214457.png]]
