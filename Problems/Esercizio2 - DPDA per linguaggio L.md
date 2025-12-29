# Concetti utilizzati
- [[Automi a Pila]]
- [[Automi a Pila (DPDA)]]
- [[Definizione formale di automi a pila]]
- [[Come si muove un automa a Pila]]
- [[Linguaggi prefix free]]
- [[Grammatica]]
- [[Grammatiche CF - CFG]]
# Problema
DPDA per il linguaggio delle parentesti bilanciate senza $\varepsilon$, cioe' generato dalla [[Grammatiche CF - CFG|CFG]]:
- $B \to (BB) | (B) | ()$
E' prefix free? $\to$, ovviamente, se proviamo a cancellare un carattere dal fondo della stringa andiamo a rimuovere una delle parentesi chiuse che fa coppia con una aperta.

Ci avvaliamo di 3 stati:
- in $q_0$ se arrivano delle parentesi aperte, le impiliamo
	- Se arriva una parentesi chiusa, passo in $q_1$ e cancello sia quella aperta che quella chiusa
-  In $q_1$ cancello le parentesi chiuse in input con le corrispondenti aperte. Se mi arriva una aperta, torno in $q_0$
	- Se c'e' $Z_0$ in cima alla pila, allora da $q_1$ passo in $q_2$ che e' stato finale
 ![[Pasted image 20251229231750.png]]