---
course: Linguaggi e Computabilita'
chapter: "3"
tags:
  - esempio
---
# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[Espressioni Regolari]]
- [[Relazione tra automi a stati finiti ed espressioni regolari]]
- [[trasformazione da DFA a ER - Algoritmo per eliminazione degli stati]]
- [[Operazioni sui linguaggi]]
- [[Funzionamento dell'algoritmo per eliminazione degli stati]]
# Problema
Consideriamo il DFA in figura:
![[Pasted image 20260129185656.png]]
Prima cosa da fare, trasformare le etichette in [[Espressioni Regolari]]
![[Pasted image 20260129185823.png]]
L'unico stato finale che abbiamo e' $q_2$. Dobbiamo eliminare tutti gli altri stati non finali e non iniziali: $q_1$.
Eliminiamo $q_1$:
- Predecessori:
	- $q_0,q_3$
		- ER $q_0 \to q_1 = 1$
		- ER $q_3 \to q_1 = 0+1$
- Successori:
	- $q_3$
		- ER $q_1 \to q_2 = 0 + 1$$
- Non ci sono cappi su $q_1$ quindi ER = $\varnothing$
- Ci sono archi diretti tra ogni predecessore e successore?
	- Tra $q_0$ e $q_3$? No, quindi $R_{0,3} = \varnothing$
	- Tra $q_3$ e $q_3$? No, quindi $R_{3,3} = \varnothing$
Alla fine otteniamo:
- $R_{0,3} = \varnothing + 1\varnothing^*(0+1)=\varepsilon^*+1(0+1) = 1(0+1)$
	- Uso l'arco diretto ($\varnothing$) oppure vado in $q_3$ iniziando da $q_0$ passando da $q_1$:
		- Con 1 vado in $q_1$
		- Poi posso rimanere in $q_1$ con un cappio $\varnothing^*$
		- Poi vado in $q_3$ con (0+1)
- $R_{3,3} = \varnothing + (0+1)\varnothing^*(0+1) = (0+1)(0+1)$
	- Stesso ragionamento fatto sopra
Abbiamo ottenuto alla fine il primo caso base:
![[Pasted image 20260129191056.png]]
Pertanto possiamo usare la formula e estrarre l'espressione regolare:
$$ (0 + 1(0+1)((0+1)(0+1))^*\varnothing)^*1(0+1)((0+1)(0+1))^*$$
Si puo' semplificare (grazie alla concatenazione con $\varnothing$)
$$ 0^*1(0+1)((0+1)(0+1))^*$$