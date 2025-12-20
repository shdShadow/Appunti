---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
---
# Concetti utilizzati# Concetti utilizzati # Concetti utilizzati 
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema
Vogliamo scrivere la CFG per il linguaggio $L = \{a^{n+m}xc^nyd^m | n,m \geq 0\}$
Dobbiamo concentrarci sulla prima a, che puo' essere riscritta in due modi:
$$ a^{n + m} =
\begin{cases}
a^n + a^m \to a^n a^m xc^nyd^m \\
a^m + a^n \to a^m a^n xc^nyd^m \\
\end{cases}
\} $$

Il primo caso non e' fattibile, in quando gli esponenti si incrociano pertanto non puo' essere un CFL. Considereremo il secondo.
Consideriamo quindi i sottolinguaggi:
- $a^nxc^n$ come X
- tutto cio' che sta all'esterno come Y
e scriviamo le regole di produzione
- $S \to aSd$
- $S \to Xy$
- $X \to aXc$
- $X \to x$

## Esempi di derivazione
- Per n=0, m=0: (w = xy) $S \Rightarrow Xy \Rightarrow xy$
- Per n=1, m=0: (w = axcy) $S \Rightarrow Xy \Rightarrow aXcy \Rightarrow axcy$
- Per n=0, m=1: (w = axyd) $S \Rightarrow aSd \Rightarrow aXyd \Rightarrow axyd$
- Per n=1, m=2: (w = aaaxcydd) $S \Rightarrow aSd \Rightarrow aaSdd \Rightarrow aaXydd \Rightarrow aaaXcydd \Rightarrow aaaxcydd$

