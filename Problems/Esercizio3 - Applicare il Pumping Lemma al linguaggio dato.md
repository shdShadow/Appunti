---
course: Linguaggi e Computabilita'
chapter: "4"
tags:
  - esercizio
---
# Concetti utilizzati
- [[Linguaggio]]
- [[Pumping Lemma]]
- [[linguaggi regolari]]
# Problema 
Si applichi il [[Pumping Lemma]] al linguaggio seguente:
$$ L_{pal} = \{w \in \{0,1\}^*| w = w^R\} $$
Per esempio:
- $0110 \in L_{pal}$
- $01010 \in L_{pal}$
Supponiamo che $L_{pal}$ sia un [[linguaggi regolari|linguaggio regolare]] e consideriamo una stringa $w$, per esempio fatta in questo modo (con costante n):
$$ 0^n10^n | n \geq 1$$
Spezziamo $w$ in $w=xyz$ tale seguendo sempre i vincoli del pumping lemma:
- $x = 0^{n+1}$
- $y = 0$
- $z = 10^n$
e quindi poi deve valere
$$\forall k \geq 0 \ \ xy^kz = 0^{n-1}0^k10^n \in L_{pal} $$
ma non e' vero per diversi valori di k, ad esempio:
- $k = 0$ ho $0^{n-1}10^n$
