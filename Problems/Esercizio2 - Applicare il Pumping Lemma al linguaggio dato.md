# Concetti utilizzati
- [[Linguaggio]]
- [[Pumping Lemma]]
- [[linguaggi regolari]]
# Problema 
Consideriamo il [[Linguaggio]] $L_{eq} = \{w \in \{0,1\}^*| w \text{ contiene lo stesso numero di zeri e di uno }\}$. E' simile a quello che abbiamo visto nel [[Esercizio1 - Primo esempio di applicazione del pumping lemma]] con la differenza che ora possiamo avere 0 e 1 mischiati. Per esempio:
- $0101 \in L_{eq}$
- $1001 \in L_{eq}$
Per applicare il [[Pumping Lemma]] scegliamo una costante _n_, una certa [[stringa]] $w$ almeno $|w| \geq n$ e dobbiamo fare in modo che tale [[stringa]] $w$ sia spezzabile in tre parti: $w = xyz$ con:
1. $y \neq \varepsilon$
2. $|xy| \leq n$
Qui arriva un trucchetto:
> Notiamo abbastanza facilmente che in $L_{eq}$ sono presenti anche le stringhe di $L_{01}$.

Quindi come [[stringa]] $w$ posso scegliere una stringa di $L_{01}$ e fare la stessa cosa che ho fatto in [[Esercizio1 - Primo esempio di applicazione del pumping lemma]]:
- $w = 0^n1^n$
- $x = 0^{n-1}$
- $y = 0$
Quindi soddisfo la condizione $|xy| \leq n$ e anche la prima, per questo deve valere:
$$ \forall k \geq 0|  xy^kz = 0^{n-1}0^k1^n \in L_{eq}$$ ma non e' vero, perche' posso avere un numero diverso di 0 e di 1.