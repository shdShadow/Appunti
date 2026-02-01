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
# Problemi
Si consideri la seguente ER:
$$ (0^*1^*)^*000(0+1)^*$$
Analizziamo i vari blocchi:
- Il primo blocco e' formato da 0 o piu' blocchi, dove ogni blocco e' formato da zero o piu' 0 seguiti da zero o piu' 1
	- Siccome posso usare qualsiasi numero di zeri e di uni, alla fine questa parte rappresenta qualsiasi stringa binaria
- Il secondo blocco mi da 000
- Il terzo qualsiasi stringa binaria
Quindi:
$$L = \{x000y | x,y \{0,1\}^*\} $$
