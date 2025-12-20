---
tags:
  - evergreen
  - insight
course: Linguaggi e Computabilita'
chapter: "5"
---
Data una [[Grammatiche CF - CFG|CFG]]  G = {V, T, P, S} e' possibile generare una stringa in 2 modi:
- [[Derivazione di una stringa in una CFG]]
- Inferenza Ricorsiva
### Problemi/Esempi:
- [[Esercizio - Generiamo 101101]]
- [[Esercizio - Derivazioni partendo da grammatica delle espressioni]]
## Per inferenza ricorsiva
L'idea e' che si costruiscono i piccoli blocchettini dell'espressione, per poi costruire i pezzi piu' grossi che costruiscono altri pezzi piu' grossi ... fino a che il "pezzo grosso" e' proprio l'espressione stessa
### Problemi/Esempi
- [[Esercizio - Inferenza Ricorsiva della stringa a  (a + b00).]]

# I due metodi sono equivalenti?
Si:
> [!theorem]
> Derivazione e Inferenza sono equivalenti: una stringa puo' essere ottenura con un metodo $\Leftrightarrow$ puo' essere ottenuta con l'altro metodo

# Backlinks
- [[Alberi Sintattici]]
- [[Grammatica]]
- [[Grammatiche CF - CFG]]