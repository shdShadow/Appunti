# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Proprieta' algebriche delle espressioni regolari]]
- [[Linguaggio]]
# Problemi
Consideriamo la seguente espressione regolare:
$$L ((00^*1^*)^*) $$
Abbiamo un blocco grande che puo' essere preso 0 o piu' volte:
- Sicuro la stringa vuota e' presente in L
- A sua volta, il blocco grande viene suddiviso in altri blocchettini
	- Il primo mi da per forza uno zero
	- Poi posso aggiungere altri zeri (non per forza)
	- Poi posso aggiungere altri uni (non per forza)
Questo linguaggio e' quindi:
$$L = \{\varepsilon\} \cup \{w | w \text{ inizia con 0 }\}$$
ed e' equivalente a:
$$ 0(0 + \varepsilon)^* + \varepsilon $$
