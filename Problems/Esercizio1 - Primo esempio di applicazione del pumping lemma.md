---
course: Linguaggi e Computabilita'
chapter: "4"
tags:
  - esempio
---
# Concetti utilizzati
- [[Linguaggio]]
- [[Pumping Lemma]]
- [[linguaggi regolari]]
# Problema
Vogliamo dimostrare che $L_{01} = \{0^n1^n | n \geq 1\}$ non e' regolare.
Se $L_{01}$ fosse Regolare varrebbe il [[Pumping Lemma]]:
Sia $n$ la costante del [[Pumping Lemma]] (n e' la lunghezza di meta' della stringa del linguaggio). 
Poniamo $w = 0^n1^n \in L_{01}$ e lo scomponiamo in $w = xyz$ (la stringa deve essere almeno lunga quanto la costante $|w| \geq n$):
- $x = 0^{n-1}$
- $y = 0$
- $z = 1^n$
Abbiamo verificato le prime due condizioni:
- $y \neq \varepsilon$
- $|xy| \leq n$
quindi vale anche la terza. Allora $\forall k \geq 0$ deve valere $xy^kz$ cioe':
$xy^kz = 0^{n-1}0^k1^n \in L_{01} \forall k \geq 0$ ma non e' vero. Per esempio per $k=0$ abbiamo:
$$xy^0z = xz = 0^{n-1}1^n \not\in L_{01}$$ perche' non ha lo stesso numero di 0 e 1