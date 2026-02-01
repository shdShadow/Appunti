---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Automa a stati finiti - NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[trasformazione da NFA a DFA]]
- [[Automa a Stati Finiti - DFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
# Problema
Considerando il seguento NFA:

|        | 0     | 1             |
| ------ | ----- | ------------- |
| $\to$p | {p,q} | {p}           |
| q      | {r}   | {r}           |
| r      | {s}   | $\varnothing$ |
| *s     | {s}   | {s}           |
Applichiamo ora l'algoritmo di [[trasformazione da NFA a DFA]]

|            | 0         | 1       |
| ---------- | --------- | ------- |
| $\to${p}   | {p,q}     | {p}     |
| {p,q}      | {p,q,r}   | {p,r}   |
| {p,q,r}    | {p,q,r,s} | {p,r}   |
| {p,r}      | {p,q,s}   | {p}     |
| *{p,q,r,s} | {p,q,r,s} | {p,r,s} |
| *{p,q,s}   | {p,q,r,s} | {p,r,s} |
| *{p,r,s}   | {p,q,s}   | {p,s}   |
| *{p,s}     | {p,q,s}   | {p,s}   |
- $\delta_D(\{p\}, 0) = \delta_N(p,0) = \{p,q\}$
- $\delta_D(\{p\},1) = \delta_N(p,1) = \{p\}$
- $\delta_D(\{p,q\},0) = \delta_N(p,0) \cup \delta_N(q,0) = \{p,q\} \cup \{r\} = \{p,q,r\}$
- $\delta_D(\{p,q\},1) = \delta_N(p,1) \cup \delta_N(q,1) = \{q\} \cup \{r\} = \{p,r\}$
- $\delta_D(\{p,q,r\},0) = \delta_N(p,0) \cup \delta_N(q,0) \cup \delta_N(r,0) = \{p,q\} \cup \{r\} \cup \{s\} = \{p,q,r,s\}$
- $\delta_D(\{p,q,r\},1) = \delta_N(p,1) \cup \delta_N(q,1) \cup \delta_N(r,1) = \{p\} \cup \{r\} \cup \varnothing = \{p,r\}$
- $\delta_D(\{p,r\},0) = \delta_N(p,0) \cup \delta_N(r,0) = \{p,q\} \cup \{s\} = \{p,q,s\}$
- $\delta_D(\{p,r\},1) = \delta_N(p,1) \cup \delta_N(r,1) = \{p\} \cup \varnothing = \{p\}$
- $\delta_D(\{p,q,r,s\},0) = \delta_N(p,0) \cup \delta_N(q,0) \cup \delta_N(r,0) \cup \delta_N(s,0) = \{p,q\} \cup \{r\} \cup \{s\} \cup \{s\} = \{p,q,r,s\}$
- $\delta_D(\{p,q,r,s\},1) = \delta_N(p,1) \cup \delta_N(q,1) \cup \delta_N(r,1) \cup \delta_N(s,1) = \{p\} \cup \{r\} \cup \varnothing \cup \{s\} = \{p,r,s\}$
- ... Direi che il metodo si e' capito