---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
known: "True"
---
# Definizione
Un linguaggio L ha la **proprieta' di prefisso** se $\nexists x,y \in L \text{ con } x \neq y$ e x e' prefissa di y
Cioe': $\forall y \in L$ e $\forall$ [[prefissa di una stringa|prefissa]] x di y, $x \notin L$ (prefissa = y con almeno un carattere rimosso a partire dal fondo) 
[[ragionamento per dimostrare che un linguaggio (non)e' prefix-free]]
> [!caution]
> Se il linguaggio ha anche la stringa vuota, allora significa che $\varepsilon$ e' prefissa di tutte le stringhe, pertanto il linguaggio non puo' essere prefix free
 