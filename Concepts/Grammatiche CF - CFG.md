---
tags:
  - evergreen
course: Linguaggi e Computabilita'
---
# Cosa ci permette di distinguere una grammatica CFG dalle altre?
Sia G = {V, T, P, S} una [[Grammatica]].
Una grammatica e' **context-free** se tutte le [[regole-di-pruduzione||regole di produzione]] sono del tipo
$$ A \to \gamma $$
con 
- $A \in V$
- $\gamma \in (V \cup T)^*$
quindi se la testa e' sempre **solo** composta da **==1 variabile==**, mentre la coda e' puo' essere una stringa (anche vuota) sia di [[Simboli Terminali|terminali]] che di variabili.

Un linguaggio generato da una **grammatica context-free** e' ovviamente detto [[CFL - Context Free Language]]

## Nota
Le grammatiche CF si riconoscono anche durante le derivazioni, quando hanno lo stesso numero di 2 oggetti, e tali oggetti vanno costruiti insieme in un singolo passo. Un esempio:
- [[[Esercizio 1- Fornire una CFG per il linguaggio L]]]
al contrario di grammatiche piu' deboli, come quelle regolare in questo esercizio:
- [[Esercizio 2 - Fornire CFG per linguaggio L]]
Inoltre, solitamente le stringhe generate da una [[Grammatiche CF - CFG|CFG]] per un [[CFL - Context Free Language]] vengono create dall'esterno verso l'interno.

## Perche' viene detta Context-Free?
Perche' io vado a riscrivere **una sola** (alla volta) delle [[Simboli Terminali|variabili]] presente in una forma sentenziale, indipendentemente dal resto della stringhe, quindi indipendentemente dal contesto.
[[passo di derivazione#Osservazione]]
## Backlinks
[[Grammatica]]
[[regole-di-pruduzione]]

