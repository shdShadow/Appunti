---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
---
# Cosa ci permette di distinguere una grammatica CFG dalle altre?
La differenza chiave sta nelle [[regole-di-pruduzione|regole di produzione]], la cui testa deve essere sempre limitata ad una sola variabile.
Per vedere pero' la differenza in modo piu' schematico si faccia riferimento alla [[Gerarchia di Chomsky]] oppure specificatamente in [[Regole di produzione di linguaggi Context Free]]
# [[Come si genera una stringa nelle CFG]]

# Teorema
> [!theorem]
> Data una [[Grammatiche CF - CFG|CFG]], i seguenti enunciati sono equivalenti:
> 1. La procedure di [[Per inferenza ricorsiva CFG|inferenza ricorsiva]] stabilisce che la stringa $w$ e' nel linguaggio generato dalla variabile $A$ (start  symbol oppure altra variabilie)
> 2. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$: $A \Rightarrow^* w$
> 3. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$ con sole [[derivazione leftmost e rightmost nelle CFG|derivazioni leftmost]]: $A \Rightarrow^{*}_{lm} w$
> 4. A partire da $A$ posso [[derivazione in zero o piu' passi|derivare]] ([[Derivazione di una stringa in una CFG]]) $w$ con sole [[derivazione leftmost e rightmost nelle CFG|derivazioni rightmost]]: $A \Rightarrow^{*}_{rm} w$
> 5. Esiste un [[Alberi Sintattici|albero sintattico]] con radice $A$ e prodotto w (il prodotto e' la concatenazione di tutte le foglie)


## Nota
Le grammatiche CF si riconoscono anche durante le derivazioni, quando hanno lo stesso numero di 2 oggetti, e tali oggetti vanno costruiti insieme in un singolo passo. Un esempio:
- [[Esercizio 1- Fornire una CFG per il linguaggio L]]
al contrario di grammatiche piu' deboli, come quelle regolare in questo esercizio:
- [[Esercizio 2 - Fornire CFG per linguaggio L]]
## Insight
Inoltre, solitamente le stringhe generate da una [[Grammatiche CF - CFG|CFG]] per un [[CFL - Context Free Language]] vengono create dall'esterno verso l'interno. (Utile per gli esercizi)
## Perche' viene detta Context-Free?
Perche' io vado a riscrivere **una sola** (alla volta) delle [[Simboli Terminali|variabili]] presente in una forma sentenziale, indipendentemente dal resto della stringhe, quindi indipendentemente dal contesto.
[[Passo di derivazione nelle CFG#Osservazione sul contesto]]
## Backlinks
- [[Grammatica]]
- [[regole-di-pruduzione]]
- [[CFL - Context Free Language]]
- [[Come si genera una stringa nelle CFG]]
- [[Alberi Sintattici]]
- [[passo di derivazione]]


