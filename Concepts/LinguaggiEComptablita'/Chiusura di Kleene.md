---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "1"
known: "False"
---
La [[Chiusura di Kleene]] su un [[Alfabeto]] $\Sigma$
$$ \Sigma^*$$
ed e' definita come
$$ \Sigma^* = \Sigma^0 \cup \Sigma^1 \cup \Sigma^2 ... $$
Quindi e' l'unione di tutte le [[Potenza di una alfabeto|potenze]] a partire da $k = 0$. 
Questo insieme, tranne in casi particolari, e' un insieme **INFINITO**.
$\Sigma^*$ e' l'insieme di tutte le [[stringa|stringhe]] di [[stringa#Lunghezza di una stringa|lunghezza]] finita definite su $\Sigma$
La [[Chiusura di Kleene]] a volte viene espresse in modo piu' compatto anche cosi
$$ \bigcup_{k \geq 0}\Sigma^k$$
## Insieme particolare: $\Sigma^+$
Deriva da $\Sigma^*$ ma e' senza la stringa vuota $\varepsilon$, quindi:
$$ \Sigma^+ = \Sigma^1 \cup \Sigma^2 \cup \Sigma^3 \cup ... $$
### Connessioni tra i due insiemi:
- $\Sigma^* = \Sigma^+ \cup \{\varepsilon\}$
- $\Sigma^+ = \Sigma^* \setminus \{\varepsilon\}$ 
