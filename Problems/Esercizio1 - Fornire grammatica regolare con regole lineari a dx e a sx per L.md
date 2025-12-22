---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: Appendix
---
# Concetti Utilizzati
[[Grammatica]]
[[Grammatiche Regolari]]
[[regole di produzione di linguaggi regolari]]
[[Se io uso solo regole lineari a sx o dx posso ottenere tutti i linguaggi regolari]]
[[Come si trasformano regole lineari in un verso nell'altro]]

# Problema
Sia $L = \{a^nb^m | n,m \geq 0\}$ con:
Ricordiamoci sempre questa osservazione: [[regole di produzione di linguaggi regolari#Particolarita']] che ci aiuta con la scrittura della grammatica
## Regole lineari a destra:
- $S \to \varepsilon | aS | bB | b$
- $B \to bB | b$
### Osservazioni
- E' necessario che $S \to b$ altrimenti non riesco avere la stringa con una sola b
- con $S \to \varepsilon$ riesco ad avere la stringa con n,m = 0
## Regole lineari a sinistra:
- $S \to \varepsilon | Sb | a | Aa$
- $A \to Aa | a$


