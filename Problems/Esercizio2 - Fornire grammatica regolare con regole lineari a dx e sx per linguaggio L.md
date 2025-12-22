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
Sia $L = \{ab^ncd^me | n \geq 0, m > 0\}$
Ricordiamoci sempre questa osservazione: [[regole di produzione di linguaggi regolari#Particolarita']] che ci aiuta con la scrittura della grammatica
## Regole lineari a dx
Generiamo quindi da sx a destra.
- $S \to aA$
- $A \to bA | cB$
- $B \to dB | dE$
- $E \to e$

## Regole lineari a sx
Generiamo quindi da destra verso sinistra
- $S \to Ae$
- $A \to Ad | Bd$
- $B \to Cc$
- $C \to Cb | a$

