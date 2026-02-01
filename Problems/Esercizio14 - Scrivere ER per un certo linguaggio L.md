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
Dato il seguente linguaggio:
$$ L \subseteq \{0,1\}^* \text{ con stringhe contenenti al piu' una coppia di 1 consecutivi (11)}$$
E' fatta da 3 parti:
- Una parte che non contiene 11
	- $(10+0)^*$
- Una parte che ha 11 se serve
	- $(11+1+\varepsilon)$
- Un'altra parte che non contiene 11
	- $(01+0)^*$
		- Non lo posso mettere uguale a prima, perche' il secondo blocco potrebbe mettere un "11", e scrivere $(10+0)^*$ mi potrebbe inserire 10, e mi da quindi 3 "1"
