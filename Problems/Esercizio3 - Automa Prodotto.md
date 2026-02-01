---
course: Linguaggi e Computabilita'
chapter: "4"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Linguaggio]]
- [[linguaggi regolari]]
- [[Proprieta' di chiusura dei linguaggi regolari]]
- [[automa prodotto]]
- [[stringa]]
# Problema
Consideriamo i due [[Automi a stati finiti]] dati:
![[Pasted image 20260131143809.png]]
![[Pasted image 20260131143823.png]]
Costruiamo l'[[automa prodotto]] andando a scrivere la tabella di transizione:

|                    | 0                | 1               |
| ------------------ | ---------------- | --------------- |
| $\to(p_0,q_0)$ - A | $(p_0,q_1)$ - B  | $(p_1,q_2)$ - C |
| $(p_0,q_1)$ - B    | $(p_0, q_1)$ - B | $(p_1,q_2)$ - C |
| $(p_1,q_2)$ - C    | $(p_0, q_0)$ - A | $(p_1,q_1)$ - D |
| $(p_1,q_1)$ - D    | $(p_0, q_1)$ - B | $(p_1,q_2)$ - C |
E disegniamo anche il suo diagramma
![[Pasted image 20260131144340.png]]