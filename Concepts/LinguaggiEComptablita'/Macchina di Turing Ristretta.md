---
tags:
  - evergreen
chapter: 7-8
course: Linguaggi e Computabilita'
known: "False"
---
> [!question] Perche' uno le vorrebbe limitare?
> Perche' di solito semplificare il modello semplifica poi le dimostrazioni dei teoremi.

# Restrizione del nastro semi-infinito

![[Pasted image 20260104113411.png]]
Significa che il nastro e' infinito solo da una parte.  Solitamente si fa andando ad usare un "nastro normale" e dire che la testina non vai piu' mai a sinistra/destra della posizione iniziale.

> [!theorem]
> Ogni [[linguaggi ricorsivamente enumerabili|linguaggio]] accettato da una [[Macchine di Turing|MdT]] $M_2$ e' accettato anche da una MdT $M_1$ con i seguenti vincoli:
> - La testina di $M_1$ non va mai a sinistra dela posizione iniziale
> - $M_1$ non scrive mai blank (e' un trucco stupido che in realta' al posto che scrivere B scrive B')
> 
> **Dimostrazione per simulazione**
> Facciamo vedere che $M_1$ simula $M_2$
>  ![[Pasted image 20260104113530.png]]
> 
