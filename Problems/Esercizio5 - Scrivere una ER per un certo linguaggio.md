---
course: Linguaggi e Computabilita'
chapter: "3"
tags:
  - esercizio
---
# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Linguaggio]]
# Problema
Scrivere la ER pr $L \subseteq \{0,1\}^*$ composto da stringhe che contengono almeno una volta 01.
Possiamo riscrivere L come $L = \{x01y | x,y \in \{0,1\}^*\}$.
Possiamo ragionare su quella scomposizione, e creare una ER composta da tre blocchetti:
- Il primo che ci genera qualsiasi stringa: $(0+1)^*$
- Il secondo che genera 01
- Il terzo che genera ancora qualsiasi stringa: $(0 + 1)^*$
Quindi in totale abbiamo:
$$(0+1)^*01(0+1)^*$$
