# Concetti utilizzati
- [[Grammatiche CF - CFG]]
- [[Alberi Sintattici]]
- [[derivazione leftmost e rightmost nelle CFG]]
- [[Derivazione di una stringa]]
- [[Teorema (collegameto tra inferenza, derivazioni e alberi sintattici)]]
# Problema
![[Pasted image 20251222003802.png]]
La stringa che vuole generare questo albero e': $w = a * (a + b00)$.
Partiamo quindi da E e generiamo varie [[Forme sentenziali]] scendendo l'albero verso sinistra:
$$ E \Rightarrow_{lm} E * E$$
scendo a sx e la prima E diventa quindi una I
$$ \Rightarrow_{lm} I * E $$
continuo con la I in a
$$ \Rightarrow_{lm} a * E $$
$$ \Rightarrow_{lm} a * (E)...$$
# Note
Quindi visitando da sinistra a destra si costruisce non solo qualsiasi stringa ma anche qualsiasi forma sentenziale intermedia