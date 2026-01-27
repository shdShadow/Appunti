# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
- [[estensione della delta per DFA]]

# Problema
Consideriamo il DFA in figura:
![[Pasted image 20260127212736.png]]

Vediamo ora un esempio di calcolo della [[estensione della delta per DFA|delta cappuccio]] sulla stringa w = 0011
$$
\hat\delta(q_0, 0011) = \hat\delta(\delta(q_0,0),011) = \hat\delta(q_2, 011) = \hat\delta(\delta(q_2,0),11)$$
$$
= \hat\delta(q_2,11) = \hat\delta(\delta(q_2,1),1) = \hat\delta(q_1,1) = \hat\delta(\delta(q_1,1), \varepsilon) = \hat\delta(q_1, \varepsilon) = q_1
$$
