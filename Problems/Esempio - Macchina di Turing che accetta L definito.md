---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - esempio
  - esercizio
---
# Concetti utilizzati
- [[Macchine di Turing Deterministiche]]
- [[Definizione formale delle macchine di Turing]]
- [[funzione di transizione delle Macchine di Turing]]
- [[Passo di computazione di una Macchina di Turing]]
- [[Come accettano le Mdt]]

# Problema 
Creare una [[Macchine di Turing Deterministiche|mdt]] che accetta $L = \{0^n1^n | n \geq 1\}$
Avremo quindi una MdT $M = (Q,\Sigma, \Gamma, \delta,q_0, B, F)$ tale che:
- $Q = \{q_0, q_1, q_2, q_3, q_4\}$
- $\Sigma = \{0,1\}$
- $\Gamma = \{0,1,X,Y,B\}
- B che e' sempre il simbolo di Blank
- lo stato iniziale $q_0$
- $F = \{q_4\}$
Descriviamo la funzione di transizione in forma tabellare:

|                 | ==*0*==       | ==*1*==       | ==*X*==       | ==*Y*==       | ==*B*==       |
| --------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| ==***$q_0$***== | $(q1, X,R)$   | -             | -             | $(q3, Y, R)$  | -             |
| ==***$q_1$***== | $(q_1, 0, R)$ | $(q_2, Y, L)$ | -             | $(q_1, Y, R)$ | -             |
| ==***$q_2$***== | $(q_2, 0, L)$ | -             | ($q_0, X, R$) | $(q_2, Y, L)$ | -             |
| ==***$q_3$***== | -             | -             | -             | $(q_3, Y, R)$ | $(q_4, B, R)$ |
| ==***$q_4$***== | -             | -             | -             | -             | -             |
Vediamo una computazione accettante con $w = 0011$
Quindi la configurazione iniziale sara' $q_00011$
$$q_00011 \vdash Xq_1011 \vdash X0q_111 \vdash Xq_20Y1 \vdash q_2X0Y1 \vdash Xq_00Y1 \vdash XXq_1Y1 \vdash XXYq_11$$
$$ \vdash XXq_2YY \vdash Xq_2XYY \vdash XXq_0YY \vdash XXYQ_3Y \vdash XXYYq_3B \vdash XXYYBq_4B$$
$(q_4,B)$ e' una caso della delta non definito, pertanto la macchina si ferma. $q_4$ e' uno stato finale, quindi la stringa viene accettata.

![[Pasted image 20251229231315.png]]