---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esempio
---
# Concetti utilizzati
- [[Automa a stati finiti - NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
- [[Epsilon-mossa]]
- [[Automi a stati finiti - Epsilon-NFA]]
# Problema
Dobbiamo costruire un [[Automi a stati finiti - Epsilon-NFA]] per il seguente linguaggio:
$$ L = \{w \in \{a,b,c\}^* | w = a^nb^mc^h \text{ con } n,m,h \geq 0\}$$
![[Pasted image 20260127112413.png]]
- $q_0$ si usa per leggere tutte le _a_
- $q_1$ si usa per leggere tutte le _b_
- $q_2$ si usa per leggere tutte le _c_ poi accettare
