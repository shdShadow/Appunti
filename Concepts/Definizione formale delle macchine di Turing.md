---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "True"
---
# Macchina di Turing (MdT)
> [!definition]
> Una _macchina di Turing(MdT)_ e' una settupla:
> $$ M = (Q, \Sigma, \Gamma, \delta, q_0, B, F)$$
> dove:
> - Q e' l'insieme finito e non vuoto degli stati
> - $\Sigma$ e' l'[[Alfabeto]] delle stringhe di input
> - $\Gamma$ e' l' [[Alfabeto]] dei simboli del nastro
> - $\delta$ e' la [[funzione di transizione delle Macchine di Turing]]
> - $q_0 \in Q$ e' lo stato iniziale
> - $B \in \Gamma \\ \Sigma$ e' il simbolo di Blank
> 	- Indica che una cella del nastro e' vuota
> 	- Similmente a [[L'utilita' di Z0]] dove la pila per la [[funzione di transizione degli stati per automi a pila]] non puo' essere mai fisicamente vuota, anche qui le celle non possono essere fisicamente vuote per la [[funzione di transizione delle Macchine di Turing]]
> 		- E' sempre presente in $\Gamma$
> - $F \subseteq Q$ e' l'insieme degli stati finali o accettanti.

