---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
known: "False"
---
# Cosa ci permette di distinguere una grammatica CFG dalle altre?
La differenza chiave sta nelle [[regole-di-pruduzione|regole di produzione]], la cui testa deve essere sempre limitata ad una sola variabile.
Per vedere pero' la differenza in modo piu' schematico si faccia riferimento alla [[Gerarchia di Chomsky]] oppure specificatamente in [[Regole di produzione di linguaggi Context Free]]

# Che tipo di linguaggi generano le grammatiche Context Free?
Le grammatiche Context Free sono quelle che ci permettono di generare [[CFL - Context Free Language]]
# [[Come si genera una stringa nelle CFG]]

# [[Teorema (collegameto tra inferenza, derivazioni e alberi sintattici)]]
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

# Problemi
[[Grammatiche Ambigue]]
## Backlinks
- [[Grammatica]]
- [[regole-di-pruduzione]]
- [[CFL - Context Free Language]]
- [[Come si genera una stringa nelle CFG]]
- [[Alberi Sintattici]]
- [[passo di derivazione]]


