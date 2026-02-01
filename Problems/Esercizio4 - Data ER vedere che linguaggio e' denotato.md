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
Vediamo che linguaggio denota $L(0+01^*)$ 
$$= L(0) + L(01^*) = L(0) \cup L(0)L(1^*) =\{0\} \cup \{0\} \cdot (L(1))^* = \{0\} \cup \{0\} \cdot \{1\}^* = \{0\} \cup \{0,01,011,...\} = \{0,01,011,...\}$$
Quindi
$$ 0 + 01^* = 01^* $$
Ma proviamo a fare la stessa cosa ma applicando le [[Proprieta' algebriche delle espressioni regolari]]:
$$0 + 01^* = 0(\varepsilon + 1^*) = 0(1^*) = 01^*$$
