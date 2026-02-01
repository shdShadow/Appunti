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
Si consideri il seguente linguaggio:
$$ L \subseteq \{0,1\}^* \text{ con stringhe in cui tutte le coppie 11 seguono tutte le coppie 00 }$$
cioe' :
$$ L = L_{11}L_{00} $$
dove :
- $L_{11}$ contiene stringhe che non cotengono 11
	- $(10+0)^*(1 + \varepsilon)$
- $L_{00}$ contiene le stringhe che non contengono 00
	- $(01 + 1)^*(\varepsilon + 0)$
Concateniamo le due ER:
$$ (10+0)^*(1+\varepsilon)(01+1)^*(\varepsilon+)$$
In realta' $(1+\varepsilon)$ e' superflua, perche' l'uno lo posso comunque ottenere nel blocchettino dopo
