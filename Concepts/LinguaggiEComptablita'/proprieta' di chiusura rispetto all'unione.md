---
course: Linguaggi e Computabilita'
known: "False"
chapter: "4"
tags:
  - evergreen
---
Se $L,M$ sono [[linguaggi regolari]] sull'[[Alfabeto]] $\Sigma$. La loro $L \cup M$ e' anch'essa regolare?
Si, sotto segue la dimostrazione:
## Dimostrazione 1
Se $L,M \in REG$ , $\exists$ due [[Automi a stati finiti]] $R$ e $S$ che li accettano. Il seguente [[Automi a stati finiti - Epsilon-NFA|EPsilon-NFA]] che accetta $L \cup M$, che quindi $\in REG$
![[Pasted image 20260201210844.png]]
## Dimostrazione 2
Se $L,M \in REG$ esistono due [[Espressioni Regolari]] che li denotano. L'ER $L+M$ denota $L \cup M$ che quindi e' un [[linguaggi regolari]]

## Dimostrazione 3
Posso dimostrare che l'unione di due [[linguaggi regolari]] e' anch'essa regolare anche grazie all'[[automa prodotto]], mantenendo la sua definizione invariata, tranne per l'insieme $F$:
$$ (F_L \times Q_M)\cup (Q_L, \times F_M)$$
dove:
- il primo ci dice che $A_L$ accetta mentre il secondo ci dice che $A_M$ puo' accettare oppure no
- il secondo ci dice che $A_M$ accetta mentre il primo ci dice che $A_L$ puo' accettare oppure no