---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "2"
known: "False"
---
Sono [[Automi a stati finiti]] non deterministici, a differenza dei [[Automa a Stati Finiti - DFA|DFA]] che invece sono **deterministici**.
# Intro
Il funzionamento e' pressoche' identico a quello degli [[Automa a Stati Finiti - DFA|DFA]] con la differenza che:
- L'automa ad ogni istante si trova in un insieme di stati e non in un solo stato
- Per ogni simbolo letto, l'automa si sposta in un insieme di stati
- L'automa accetta se nell'insieme di stati in cui si sposta, almeno uno stato e' finale
Alcune informazioni utili
- [[Computazione e non determinismo NFA]]
- [[Esempio primo NFA]]
# [[Definizione formale di Automa a Stati Finiti]]

# Definizione di linguaggio accettato
Sia $N = (Q, \Sigma, \delta, q_0, F)$ un NFA. Il [[Linguaggio]] accettato da N e':
$$ L(N) = \{w \in \Sigma^* | \hat\delta(q_0, w) \cap F \neq \varnothing\}$$
