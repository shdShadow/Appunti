---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
---
# Definizioni di Base
- [[Definizione formale di automi a pila]]
- [[Componenti di un Automa a Pila]]
- Classificazione:
	- (Caso base) [[Automi a Pila (PDA)]] Non deterministici
	- [[Automi a Pila (DPDA)]] Deterministici
## Quali sono le differenze principali tra i due?
- Cio' che contraddistingue i due sono le loro funzioni di transizione:
	- [[funzione di transizione degli stati per automi a pila non deterministici]]
	- [[funzione di transizione degli stati per automi a pila deterministici]]
# Come accettano gli automi a Pila?
Esistono due criteri per cui un automa a pila decide di accettare una stringa. Le definizioni formali sono identici sia per i [[Automi a Pila (PDA)|PDA]] che per i [[Automi a Pila (DPDA)|DPDA]]:
- [[Accettazione per stato finale]], indicato con L(P)
- [[Accettazione per pila vuota]], indicato con N(P)
Tuttavia l'equivalenza tra i due modelli cambia radicalmente a seconda del tipo di automa che stiamo considerando:
- [[Accettazione nei PDA]]
- [[Accettazione nei DPDA]]
# Sono di uguale potenza?
La risposta e' **no**. Abbiamo trovato un esempio di [[CFL - Context Free Language]] che i [[Automi a Pila (DPDA)|DPDA}]] non sono in grado di accettare: [[Esercizio - Automa a Pila che accetta L#Osservazione]] quindi:
> I DPDA sono meno potenti dei PDA

Per vedere la differenza:
- [[Cosa accettano i PDA]]
- [[Cosa accettano i DPDA]]
([[Gerarchia di Chomsky]])

Ecco un diagramma che ci aiuta a capire la differenza di potenza tra [[Automi a Pila (PDA)]], [[Automi a Pila (DPDA)]] che [[Accettazione per pila vuota|per pila vuota]] o [[Accettazione per stato finale|per stato finale]]

![[Pasted image 20251223122102.png]]
Nell'immagine si vede indicato come $L_{wcw^R}$ e' [[Linguaggi prefix free|prefix free]]. Dimostrarlo e' abbastanza facile, basta fare un ragionamento:
- Se $y \in L_{wcw^R}$ e se x e' prefissa di y, x e' ottenuta da y cancellando un simbolo dalla fine. Ma allora allora x non ha la forma richiesta dal linguaggio.
Se voglio invece dimostrare che non e' prefix-free
- Se $L non e' [[Linguaggi prefix free|prefix free]], $\exists x,y, \in L$ tale che $x \neq y$ e x e' prefissa di y
[[ragionamento per dimostrare che un linguaggio (non)e' prefix-free]]