---
course: Linguaggi e Computabilita'
chapter: "4"
tags:
  - evergreen
  - insight
known: "False"
---
# Stati equivalenti
Due stati p,q di un [[Automa a Stati Finiti - DFA]] sono _equivalenti_ (indicato con p $\approx$ q) se $\forall w \in \Sigma^*$, ho:
$$ \hat\delta(p,w) \in F \text{ se e solo se } \hat\delta(q,w) $$
[[estensione della delta per DFA]]
Quindi i due stati sono equivalenti se e solo se:
- Per ogni stringa $w$ parto da p e finisco in uno stato finale e parto da q e finisco in uno stato finale
- Per ogni stringa $w$ partendo da p e da q finisco in uno stato non finale
- Non mi interessa che finiscano nello stesso stato
cioe' **sono equivalenti se hanno lo stesso comportamento**.
# Stati non equivalenti
Se p,q **non** sono equivalenti, si dice che sono **distinguibili** e si indica con $p \not\approx q$. Quindi $$\neg \forall w \in \Sigma^* ... = \exists w \in \Sigma^* t.c ... $$
Significa che: se $p \not\approx q$ allora $$\exists w \in \Sigma^* | \hat\delta(p,w) \in F \ e \ \hat\delta(q,w) \not\in F $$
oppure
$$ \exists w \in \Sigma^* | \hat\delta(p,w) \not \in F \ e \ \hat\delta(q,w) \in F$$quindi non hanno lo stesso comportamento.

# Osservazioni sulle relazioni di equivalenza
La relazione $\approx$ e' :
- _Riflessiva:_ $\forall p \in Q, p \approx p$
	- Certo, qualunque stringa io prenda, le due $\hat\delta$ su p hanno lo stesso comportamento
- _Simmetrica:_ $\forall p,q \in Q$ , se $p \approx q \to q \approx p$ 
- _Transitiva:_ $\forall p,q,r \in Q, p \approx q \ e \ q \approx r \to p \approx r$ 
Quindi si capisce che $\approx$ e' una **[[relazione di equivalenza]]**.