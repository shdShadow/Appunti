---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Possiamo vedere il linguaggio nel seguente modo:
$$ L = \{x01y | x,y \in \{0,1\}^*\} $$
quindi una sequenza (anche vuota) di 0 e 1, poi 01 e poi un altra sequenza di 0 e 1 possibilmente vuota.
L'automa che costruiamo ha i seguenti stati:
- $q_0 \to$ non ho visto 01
- $q_1 \to$ ho visto 0
	- Questo zero puo' essere quello "giusto", nel senso che dopo c'e' un 1 e quindi ci spostiamo in $q_2$
	- Oppure quello sbagliato, cioe' arriva poi un altro 0 e rimango in $q_1$
- $q_2 \to$ a questo punto qualsiasi cosa leggo rimango in $q_2$, ho letto almeno una volta 01
Quindi:
- $Q = \{q_0, q_1, q_2\}$
- $\Sigma = \{0,1\}$
- $q_0 \in F$ stato iniziale
- $F = \{q_2\}$
- $\delta$ la rappresentiamo con il diagramma degli stati

![[Pasted image 20260127205452.png]]
Scriviamo anche la tabella di transizione

|           | 0     | 1     |
| --------- | ----- | ----- |
| $\to q_0$ | $q_1$ | $q_0$ |
| $q_1$     | $q_1$ | $q_2$ |
| $q_2$     | $q_2$ | $q_2$ |

## Note:
- _La stringa vuota appartiene al linguaggio?_
	- No, $q_0$ non e' finale, quindi $\varepsilon$ non puo' essere $\in L$
- _Quale e' la stringa piu' corta (tranne la stringa vuota) che appartiene al linguaggio?_
	- Semplice, solo "01", cioe' il caso in cui mettiamo x,y = $\varepsilon$. Allora ci deve essere un cammino che va dallo stato iniziale a uno stato finale in cui si consuma 01.