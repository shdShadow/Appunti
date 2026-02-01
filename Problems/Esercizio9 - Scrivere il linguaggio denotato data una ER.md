---
course: Linguaggi e Computabilita'
chapter: "3"
tags:
  - esercizio
---
# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Proprieta' algebriche delle espressioni regolari]]
- [[Linguaggio]]
# Problema
Si consideri la seguente ER:
$$ a(a+b)^*c(a+b)^*c(a+b)^*b$$
Analizziamo i vari componenti:
- Ho per forza una a all'inizio
- Poi qualsiasi stringa composta di a e b
- Poi una c
- Poi ancora qualsiasi stringa di a e b
- Poi un'altra c
- Poi ancora qualsiasi stringa di a e b
- E termiina con b
Quindi:
$$ L = \{w \in \{a,b,c\}^* | w \text{ inizia con a, termina con b e contiene due c}\}$$
