---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
known: "False"
---
# Definizione formale di Automa a Stati Finiti
Un **DFA** e' una _quintupla_
$$ A = (Q, \Sigma, \delta, q_0, F) $$
dove:
- $Q$ e' l'insieme **finito** e non vuoto di _stati_
- $\Sigma$ e' l'[[Alfabeto]] delle [[stringa|stringhe]] in ingresso
- $\delta$ e' la [[funzione di transizione degli stati per automi a stati finiti]]
- $q_0 \in Q$ e' lo stato iniziale
- $F \subseteq Q$ e' l'insieme degli **stati finali**