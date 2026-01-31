# Concetti utilizzati
- [[Automa a stati finiti - Epsilon NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[trasformazione da epsilon NFA a DFA]]
- [[Automa a Stati Finiti - DFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
- [[Epsilon-mossa]]
- [[Epsilon Chiusura]]
# Problemi
Si consideri il seguente [[Automa a stati finiti - Epsilon NFA]]:
![[Pasted image 20260131144621.png]]
Calcoliamo le [[Epsilon Chiusura]] degli stati:
- $ECLOSE(q_0) = \{q_0,q_1,q_2\}$
	- E' lo stato iniziale
- $ECLOSE(q_1) = \{q_1,q_2\}$
- $ECLOSE(q_2) = \{q_2\}$
- $ECLOSE(q_3) = \{q_3\}$
Costruiamo la tabella

|                             | a                     | b                 |
| --------------------------- | --------------------- | ----------------- |
| $\to * \{q_0,q_1,q_2\}$ - A | $\{q_1,q_2\}$ -B      | $\{q_3\}$ - C     |
| *$\{q_1,q_2\}$ - B          | $\{q_1,q_2\}$ - B     | $\{q_3\}$ - C     |
| $\{q_3\}$ - C               | $\{q_0,q_1,q_2\}$ - A | $\{q_2\}$ - D     |
| $\{q_2\}$ - D               | $\{q_1,q_2\}$ - B     | $\varnothing$ - E |
| $\varnothing$ - E           | $\varnothing$ - E     | $\varnothing$ - E |
Alcuni casi interessanti per la [[funzione di transizione per Epsilon NFA|delta]]:
- $\delta_D(\{q_0,q_1,q_2\},a) = ECLOSE(\delta_E(q_0,a) \cup \delta_E(q_1,a) \cup \delta_E(q_2,a)) =  ECLOSE(\varnothing \cup \varnothing \cup \{q_1\}) = \{q_1,q_2\}$
- ... 
E disegniamo anche il suo diagramma degli stati:
![[Pasted image 20260131145451.png]]