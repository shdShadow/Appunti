---
tags:
  - evergreen
  - insight
course: Linguaggi e Computabilita'
chapter: Any
known: "False"
---
Vengono qui classificati i vari linguaggi i quali vengono tutti accettati da un certo tipo di [[Grammatica]] $G = (V,T,P,S)$. 
Il tipo di essa, e' proprio determinato dalle [[regole-di-pruduzione]]
TODO: immagine gerarchi di chomsky
# Tipo 0: Generali o Ricorsivamente Enumerabili
- Le [[regole di produzione di linguaggi ricorsivamente enumerabili|regole di produzione]] hanno queste caratteristiche:
- Vengono accettati da [[Macchine di Turing Deterministiche]]
# Tipo 1: Contestuali
- Abbiamo visto degli [[Esempi di linguaggi contestuali]]
- Le [[regole di produzione di linguaggi contestuali|regole di produzione]] hanno queste caratteristiche
- Sono accettati da [[Macchine di Turing che operano in spazio lineare]]
# Tipo 2: Context Free
- Le [[Regole di produzione di linguaggi Context Free|regole di produzione]] hanno queste caratteristiche
- I [[CFL - Context Free Language]] che generano sono sempre composti da sottolinguaggi nidificati oppure concatenati
- Vengono accettate da [[Automi a Pila (PDA)]]
# Tipo 3: Regolari
- Le [[regole di produzione di linguaggi regolari]]
- Accettati da [[DFA]], [[NFA]], [[Epsilon-NFA]]

# Note:
E' una gerachia "inclusiva", cioe':
- I linguaggi di tipo 3 sono anche di tipo 2
- quelli di tipo 2 sono anche di tipo 1
- quelli di tipo 1 sono anche di tipo 0