---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
  - insight
known: "False"
---
Supponiamo che $L$ non sia [[Linguaggi prefix free|prefix free]] quindi:
$$ \exists x,y \in L t.c \text{ che } y=xw $$
Supponiamo per assurdo che esista un [[Automi a Pila (DPDA)|DPDA]] P tale che L = N(P).
1. $x \in L \to P$ deve accettare x quindi:
$$ \exists(q_0, x,Z_0)\vdash^* (q, \varepsilon, \varepsilon) $$
2. Do all'automa anche Y in input e a parole cio' che succede e' che: siccome x e' [[prefissa di una stringa|prefissa]] di y, vuol dire che y=xw. Abbiamo visto nel punto 1 che x viene accettata. Pertanto arrivero' ad un punto in cui x verra' totalmente consumata e la mia pila sara' fisicamente vuota. Non posso quindi continuare la computazione anche della parte w di y.
$$ (q_0, y, Z_0) = (q_0, xw, Z_0) \vdash^* (q,w,\varepsilon) $$
