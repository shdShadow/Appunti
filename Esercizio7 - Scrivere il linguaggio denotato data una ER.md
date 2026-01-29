# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Proprieta' algebriche delle espressioni regolari]]
# Problemi
Si consideri la seguente espressione regolare:
$$L (a(a+b)^*b)$$
e' facile capire che stringhe denota:
- Il primo blocco mi da per forza una a
- Poi concateno una qualsiasi stringa composta da a e b
- Il tutto termina con una b
Quindi:
$$ L = \{w \in \{a,b\}^* | w \text{ inizia con a e finisce con b }\} $$
