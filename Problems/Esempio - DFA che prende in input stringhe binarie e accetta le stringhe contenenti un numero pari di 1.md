# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Vediamo come definire i vari componenti dell'automa. Partiamo dalle cose semplici:
- $\Sigma = \{0,1\}$
	- Facile da capire, abbiamo detto che analizza stringhe binarie
- $Q$ invece? Dobbiamo ragionarci un attimo
	- In teoria l'[[Automa a Stati Finiti - DFA|automa]] deve "contare" il numero di 1, ma non puo' contare effettivamente perche' il suo numero di stati e' **finito**. Se io ho 100 stati per contare 100 "1", ma mi arriva una stringa con 101 "1", a quel punto il mio automa non funziona gia' piu'
	- A noi non interessa sapere solo se il numero di 1 che ha e' pari oppure dispari, pertanto ci basta "contarli" modulo 2
		- L'automa partira' da un certo $q_p$ che indica se il numero di 1 e' pari: all'inizio ho letto zero "1", pertanto sono pari
		- Se arriva "1", si sposta in un altro stato $q_d$ che indica che li' c'e' un numero dispari di "1"
		- Se arriva "0", rimane tranquillamente nello stesso stato
- Q sara' quindi $Q = \{q_p, q_d\}$
- $F = \{q_p\}$
- $\delta$ dobbiamo definire un caso per ogni coppia stato-simbolo essendo funzione totale:
	- $\delta(q_p, 0) = q_p$
	- $\delta(q_p,1) = q_d$
	- $\delta(q_d,0) = q_d$
	- $\delta(q_d,1) = q_p$
### Esempio di computazione
- $w = 0110101 \in L$. 
Usiamo al momento una notazione impropria essendo uno dei primi esempi:
![[Pasted image 20260127212446.png]]
Termina la computazione in $q_p$, pertanto la string $w = 0110101$ viene accettata.
- $w = \varepsilon$? Viene accettata, fa zero passi a partire da $q_p$. Siccome $q_p$ e' accettante, allora la stringa vuota viene accettata dall'automa. 
## Tabella di transizione
Giusto per completezza, rappresentiamo la [[funzione di transizione degli stati per DFA|delta]] anche sotto forma di [[funzione di transizione degli stati per DFA#Rappresentazione della delta|tabella di transizione]]

|             | 0     | 1     |
| ----------- | ----- | ----- |
| *$\to$$q_p$ | $q_p$ | $q_d$ |
| $q_d$       | $q_d$ | $q_p$ |
## Diagramma degli stati
![[Pasted image 20260127205240.png]]

