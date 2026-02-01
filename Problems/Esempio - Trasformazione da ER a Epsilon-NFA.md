---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esempio
---
# Concetti utilizzati:
- [[Espressioni Regolari]]
- [[Automa a stati finiti - Epsilon NFA]]
- [[Relazione tra automi a stati finiti ed espressioni regolari]]
- [[trasformazione da ER a Epsilon-NFA]]
- [[Operazioni sui linguaggi]]
- [[Linguaggio]]
# Problema
Dobbiamo trasformare $ER = (0+1)^*1(0+1)$ nel Epsilon-NFA corrispondente. Notiamo che c'e' una parte dell'ER che appare piu' volte: (0+1) e' quindi bene osservare subito il module che ne deriva:
![[Pasted image 20260201195310.png]]
Ora costruiamo il modulo per $(0+1)^*$
![[Pasted image 20260201195546.png]]
Ora possiamo fare la concatenazione di tutti i moduli che ci servono:
![[Pasted image 20260201195556.png]]