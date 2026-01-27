# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
- [[estensione della delta per DFA]]
- [[Trucchetto per il calcolo di delta cappuccio]]

# Problema
Consideriamo il DFA in figura:
![[Pasted image 20260127212652.png]]

Vediamo ora un esempio di calcolo della [[estensione della delta per DFA|delta cappuccio]] sulla stringa w = 0011:
$$\hat\delta(q_0,0011) = \delta(\hat\delta(q_0,001),1)= \delta(\delta(\hat\delta(q_0,00),1),1)...$$e' per questo motivo che e' meno intuitiva. Ci sono un sacco di parentesi! Usiamo quindi il trucchetto: le prefisse sono:
$$ \varepsilon, 0, 00, 001, 0011 $$
- $\hat\delta(q_0, \varepsilon) = q_0$
- $\hat\delta(q_0, 0) = \delta(\hat\delta(q_0, \varepsilon),0) = \delta(q_0,0) = q_2$ 
- $\hat\delta(q_0, 00) = \delta(\hat\delta(q_0, 0), 0) = \delta(q_2,0) = q_2$
- $\hat\delta(q_0, 001) = \delta(\hat\delta(q_0, 00),1) = \delta(q_2,1) = q_1$
- $\hat\delta(q_0, 0011) = \delta(\hat\delta(q_0, 001),1) = \delta(q_1,1) = q_1$
