---
course: Linguaggi e Computabilita'
known: "False"
chapter: "4"
tags:
  - evergreen
---
Se $L,M \in REG$ su $\Sigma$, $L \setminus M \in REG$? Si, e vediamo come grazie all'[[automa prodotto]].
Si ricorda che:
$$ L \setminus M = \{w  \in \Sigma^* | w \in L \ e \ w \not \in M \}$$
Ci saranno sempre due automi, uno per L che chiameremo $A_L$ e uno per M che chiameremo $A_M$. La stringa $w$ per appartenere alla differenza insiemistica di $L \setminus M$ dovra':
- essere accettata da $A_L$
- essere rifiutata da $A_M$
Costruisco quindi l'[[automa prodotto]] dove l'unico dettaglio che dobbiamo modificare e' $F$ perche' il resto va bene cosi':
- $F = F_L \times (Q_M \setminus F_M)$
