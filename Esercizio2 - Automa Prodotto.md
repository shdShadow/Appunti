# Concetti utilizzati
- [[Linguaggio]]
- [[linguaggi regolari]]
- [[Proprieta' di chiusura dei linguaggi regolari]]
- [[automa prodotto]]
- [[stringa]]
# Problema
Consideriamo i due automi seguenti:
![[Pasted image 20260131143046.png]]
- che accetta $L(A) = \{w \in \{a,b\}^* | w \text{ contiene almeno una b} \}$
![[Pasted image 20260131141916.png]]
- che accetta $L(B) = \{w \in \{a,b\}^* | \text{ w contiene un numero pari di b }\}$
Costruiamo l'[[automa prodotto]] :
$$ L(A\otimes B) = L(A) \cap L(B) = \{w \in \{a,b\}^* | \text{ che contiene 2n b, cioe' un numero pari di b ma almeno una b}\}$$
Stiamo praticamente escludendo il caso dell'automa $B$ con 0 b.
Scriviamo la tabella per la [[funzione di transizione degli stati per automi a stati finiti]]:

|                | a           | b           |
| -------------- | ----------- | ----------- |
| $\to(q_0,p_0)$ | $(q_0,p_0)$ | $(q_1,p_1)$ |
| $(q_1,p_1)$    | $(q_1,p_1)$ | $(q_1,p_0)$ |
| *$(q_1,p_0)$   | $(q_1,p_0)$ | $(q_1,p_1)$ |
E possiamo anche disegnare il suo diagramma
![[Pasted image 20260131143649.png]]