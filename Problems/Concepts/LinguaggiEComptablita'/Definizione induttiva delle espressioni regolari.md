---
course: Linguaggi e Computabilita'
chapter: "3"
known: "False"
tags:
  - evergreen
---
- _BASE:_
	1) $\varepsilon$ e $\varnothing$ sono [[Espressioni Regolari]] (ER)
		- Il [[Linguaggio]] descritto da $\varepsilon$ e' L($\varepsilon$) = $\{\varepsilon\}$
		- Il [[Linguaggio]] descritto da $\varnothing$ e' $L(\varnothing)$ = $\varnothing$
	2) se $\textbf{a} \in \Sigma$ allora $a$ e' un _ER_. Il linguaggio denotato da _a_ e' $L(\textbf{a}) = \{a\}$
		- Si fa appunto una "a" in grassetto, per evitare l'ambiguita' e dicendo che e' una [[Espressioni Regolari|espressione regolare]]
	3) Variabili che rappresentano linguaggi, ad esempio L, sono [[Espressioni Regolari]]
1) _PASSO:_ Ci sono quattri casi proprio legati alle operazioni viste prima + 1
	1) Se $E,F$ sono [[Espressioni Regolari]] allora $E + F$ (Unione) e' un'[[Espressioni Regolari|espressione regolare]].
	   Il linguaggio denotato da $E + F$ e' $L(E+F) = L(E) \cup L(F)$ 
	2) Se $E,F$ sono [[Espressioni Regolari]] allora anche $EF$ e' un [[Espressioni Regolari|espressione regolare]] .
	   Il [[Linguaggio]] denotato da $EF$ e' $L(E) \cdot L(F)$. Per esempio:
		1) **01** e' una [[Espressioni Regolari|espressione regolare]]. Il linguaggio che denota e': $$L(\textbf{0})L(\textbf{1}) = \{0\} \cup \{1\} = \{01\}$$
	3) Se $E$ e' una [[Espressioni Regolari|espressione regolare]] allora $E^*$ e' una ER.
	   Il linguaggio denotato da $E^*$ e' $(L(E))^*$
	4) Se $E$ e' una ER, allora anche (E) (tra parentesi) e' una espressione regolare.
	   Il linguaggio che denota e': $L((E)) = L(E)$