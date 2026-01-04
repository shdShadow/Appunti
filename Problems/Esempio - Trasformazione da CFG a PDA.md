---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - esercizio
  - esempio
---
# Esempio 
Si consideri una [[Grammatiche CF - CFG|CFG]] con le seguenti regole: $S \to aSb | ab$.
Il [[Automi a Pila (PDA)|PDA]] che viene generato ha un solo stato, e su di esso ha tutte le transizioni associate ad un cappio.
![[Pasted image 20251223122459.png]]
- ad inizio computazione e' **l'unico automa che sullo stack ha S e non $Z_0$
- L'idea e' che ad ogni passo di computazione, simula la [[Grammatiche CF - CFG|CFG]], togliendo e mettendo simboli sulla pila in base alle [[regole-di-pruduzione]]
	- Questo succede se in cima alla pila ho una variabile
		- Esempio: $STACK = S \to STACK = aSb$
	- Se in cima alla pila ho un [[Simboli Terminali|terminale]] va a vedere se il primo simbolo non consumato della stringa combacia; in tal caso consuma il simbolo della stringa e toglie dalla pila il simbolo in cima.
## Quando accetta?
Accetta se esiste una computazione che consuma totalmente la stringa e ha svuotato la pila completamente (fisicamente vuota)

## Computazione di aabb
Si consideri $w = aabb$ che viene generata cosi': $S \Rightarrow aSb \Rightarrow aabb$
Computiamo mediante [[Passo di computazione di un automa a Pila]] e le [[Configurazione di un automa a Pila]]:
$$ (q, aabb, S) \vdash (q, aabb, aSb) \vdash (q, abb, Sb) \vdash (q, abb, abb) \vdash (q, bb, bb) \vdash (q, b, b) \vdash (q, \varepsilon, \varepsilon)$$