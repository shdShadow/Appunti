---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Automa a stati finiti - Epsilon NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[trasformazione da epsilon NFA a DFA]]
- [[Automa a Stati Finiti - DFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
- [[Epsilon-mossa]]
- [[Epsilon Chiusura]]
# Problema
Consideriamo l'automa in figura e trasformiamolo in un DFA 
![[Pasted image 20260127112413.png]]
Per questioni di comodita', ci calcoliamo le ECLOSE di tutti gli stati
- $ECLOSE(q_0) = \{q_0,q_1,q_2\}$
- $ECLOSE(q_1) = \{q_1,q_2\}$
- $ECLOSE(q_2) = \{q_2\}$
Calcoliamo ora la tabella del DFA:

|                       | a                 | b             | c         |
| --------------------- | ----------------- | ------------- | --------- |
| *$\to\{q_0,q_1,q_2\}$ | $\{q_0,q_1,q_2\}$ | $\{q_1,q_2\}$ | $\{q_2\}$ |
- $$\delta_D(\{q_0,q_1,q_2\},a) = ECLOSE(\delta_E(q_0,a) \cup \delta_E(q_1,a) \cup \delta_E(q_2,a)) = ECLOSE(\{q_0\} \cup \varnothing \cup \varnothing) = ECLOSE(\{q_0\}) = ECLOSE(q_0) = \{q_0,q_1,q_2\}$$
- $$\delta_D(\{q_0,q_1,q_2\},b) = ECLOSE(\delta_E(q_0,b) \cup \delta_E(q_1,b) \cup \delta_E(q_2,b)) = ECLOSE(\varnothing \cup \{q_1\} \cup \varnothing) = ECLOSE(\{q_1\}) = ECLOSE(q_1) = \{q_1,q_2\}$$
- ...

Poi come abbiamo fatto in [[Esercizio1 - Trasformazione da NFA a DFA 1]], ci chiediamo: _Ci sono insiemi di stati che non abbiamo mai visto?_Si:
- $\{q_1,q_2\}$
- $\{q_2\}$ 
_Alcuni di questi sono finali?_ Si, entrambi. Poi li aggiungiamo come righe nella tabella 
**E poi continuiamo cosi',...**

|                           | a                     | b                 | c                 |
| ------------------------- | --------------------- | ----------------- | ----------------- |
| *$\to\{q_0,q_1,q_2\}$ - A | $\{q_0,q_1,q_2\}$ - A | $\{q_1,q_2\}$- B  | $\{q_2\}$- C      |
| *$\{q_1,q_2\}$ - B        | $\varnothing$ - D     | $\{q_1,q_2\}$ - B | $\{q_2\}$- C      |
| *$\{q_2\}$ - C            | $\varnothing$ - D     | $\varnothing$ - D | $\{q_2\}$ - C     |
| $\varnothing$ - D         | $\varnothing$ - D     | $\varnothing$ - D | $\varnothing$ - D |
E ora disegniamolo
![[Pasted image 20260127213834.png]]

