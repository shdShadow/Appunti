---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "6"
---
# In soldoni
Un **automa a pila** e' un [[Epsilon-NFA]] + una **pila** (stack)

Ma [[come fa un automa a pila a superare il limite degli stati finiti degli epsilon NFA]]?

I PDA hanno sottointeso il fatto che sono **non deterministici**. 
Accettano **tutti e soli i [[CFL - Context Free Language]]** come si vede anche nella [[Gerarchia di Chomsky]].

[[Componenti di un Automa a Pila]]
[[Esempio di computazione di un Automa a pila (PDA)]]
# Definizione formale
Un _automa a pila_ (PDA) e' una settupla $P = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$:
- _Q_: e' un insieme finito e non vuoto di stati
- _$\Sigma$_: e' l'[[Alfabeto]] dei simboli di input usati per scrivere le stringhe date in input
- _$\Gamma$_: e' l'[[Alfabeto]] dei simboli dello stack 
- _$\delta$_: e' la [[funzione di transizione degli stati per automi a pila|funzione di transizione]]
- _$q_0 \in Q$_: e' lo stato iniziale
- _$Z_0 \in \Gamma$_: e' il simbolo inizialmente presente nella pila
	- Si vede nell'immagine in [[Componenti di un Automa a Pila]]
	- [[funzione di transizione degli stati per automi a pila#L'utilita' di Z0|Perche' Z0 serve?]]
- _$F \subseteq Q$_: e' l'insiemi degli stati finali o accettanti

# Esempi/Esercizi utili:
- [[Esempio di computazione di un Automa a pila (PDA)]]
- [[Esercizio - Automa a Pila che accetta L]]