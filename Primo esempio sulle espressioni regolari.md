# Concetti utilizzatti
- [[Espressioni Regolari]]
e si ricorda:
Quando abbiamo una chiusura di Kleene si applica dall'espressione che si ottiene partendo dal carattere direttamente a sinistra da "*" fino a chiudure la piu' piccola espressione regolare valida*
# Problema/Esempi
- L(($\textbf{01})^*$) = $(L((\textbf{01})))^*$ = $(L(\textbf{01}))^*$ = $(\{01\})^*$ = $\{01\}^*$ che e' uguale a $\{01\} \cdot \{01\} ...$
- $L(\textbf{01}^*)$ = $L(\textbf{0})L(\textbf{1}^*)$ = $\{0\} \cdot (L(1))^*$ = $\{0\} \cdot (\{1\})^*$ = $\{0\} \cdot \{1^*\}$ che e' uguale a $\{0\} \cdot \{1,11,111,1111,...\} = \{0,01,011,0111,...\}$ 
	- Questo ci fa capire come opera la chiusura di Kleene nelle espressioni regolari e quanto servano le parentesi