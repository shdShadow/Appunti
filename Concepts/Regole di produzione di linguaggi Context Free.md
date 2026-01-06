---
tags:
  - evergreen
  - insight
chapter: "5"
course: Linguaggi e Computabilita'
known: "False"
---
Le [[regole-di-pruduzione]] di una CFG hanno queste caratterestiche:
Le [[regole-di-pruduzione|regole di produzione]] hanno sempre:
	- La **testa** composta da una variabile (e solo una variabile)
	- La coda come un insieme di [[Simboli Terminali|simboli terminali]] e/o variabili
	- La definizione e' la seguente:
	- La [[Passo di derivazione nelle CFG|derivazione]] si concentra sempre su una sola variabile e riesce sempre a derivare una variabile per volta indipendentemente dal contesto in cui e' inserita.
		- Una grammatica e' **context-free** se tutte le [[regole-di-pruduzione||regole di produzione]] sono del tipo 
		  $$ A \to \gamma $$
		  con
			- $A \in V$
			-  $\gamma \in (V \cup T)^*$
		- (Si veda la composizione di una regola di produzione qui [[Componenti delle regole di produzione]]).   