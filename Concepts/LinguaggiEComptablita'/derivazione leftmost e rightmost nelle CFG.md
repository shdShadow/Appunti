---
tags:
  - draft
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
known: "True"
---
Si parla di derivazione di una stringa leftmost o rightmost rispettivamente quando vado a sostituire sempre la variabile piu' a sinistra o piu' a destra durante l'applicazione delle [[regole-di-pruduzione]] (durante i vari [[passo di derivazione|passi di derivazione]]) di una [[Grammatica]].

## Come si indicano?
Le derivazioni leftmost si indicano cosi':
$$ \Rightarrow_{lm} $$le derivazioni rightmost si indicano cosi':
$$ \Rightarrow_{rm} $$
# Sono equivalenti?
Dal punto di vista delle derivazioni **si**, ma il concetto e' poi utile per parlare di [[ambiguita']]
Inoltre, durante la derivazione di una stringa e' possibile anche mischiare derivazioni leftmost con rightmost e comunque ottenere lo stesso la stringa.

## Ma per gli [[Alberi Sintattici]]?
Gli alberi sintattici di per se' non cambiano, cambia pero' il modo in cui li visito: Da sinistra verso destra oppure da destra verso sinistra.

# Backlinks
- [[Alberi Sintattici]]
- [[derivazione leftmost e rightmost nelle CFG]]
- [[derivazione in zero o piu' passi]]
- [[Come si genera una stringa nelle CFG]]
