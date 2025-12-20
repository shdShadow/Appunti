---
tags:
  - evergreen
  - insight
course: Linguaggi e Computabilita'
chapter: "5"
---
Si parla di [[derivazione in zero o piu' passi]] quando si vuole indicare che una stringa e' ottenibile da una grammatica, applicando un certo numero di [[regole-di-pruduzione|regole di produzione]] in un certo ordine
## Come si indica?
Sia G = {V, T, P, S} una [[Grammatica]]
Sia $B \in V$ lo start simbol
Sia w una stringa. 
Si indica che tale stringa e' ottenibili in uno o piu' passi da G cosi':
$$ B \Rightarrow^* w $$
## Definizione
> [!definition] (derivazione in zero o piu' passi)
> Base: $\forall \alpha \in (V \cup T)*, \alpha \Rightarrow^* \alpha$
> Sto dicendo che: data una [[Forme sentenziali|forma sentenziale]], io posso ottenere la stessa [[Forme sentenziali|forma sentenziale]] [[derivazione in zero o piu' passi|in zero o piu' passi]] (ovviamente, ce l'ho gia')
> Passo: se $\alpha \Rightarrow^* \beta \ e \ \beta \Rightarrow \gamma$ allora $\alpha \Rightarrow^* \gamma$
## Reference
Per esempio, riguardando [[Esercizio - Creazione Grammatica partendo da Linguaggio delle parentesi bilanciate |l'esercizio]], si puo' vedere come io posso ottenere la stringa ()(()) in un certo numero di passi di derivazione.

# Backlinks
- [[CFL - Context Free Language]]
- [[Grammatica]]