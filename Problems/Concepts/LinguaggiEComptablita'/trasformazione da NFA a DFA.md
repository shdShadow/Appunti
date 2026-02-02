---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
known: "False"
---
# Costruzione per sottoinsiemi
## Idea
Avremo che ogni stato del [[Automa a Stati Finiti - DFA|DFA]] corrisponde ad un insieme di stati del [[Automa a stati finiti - NFA|NFA]].
# Funzionamento
- _INPUT:_ Un [[Automa a stati finiti - NFA|NFA]] $N = (Q_N,\Sigma,\delta_N,q_0, F_N)$
- _OUTPUT:_ Un [[Automa a Stati Finiti - DFA|DFA]] $D = (Q_D, \Sigma, \delta_D, \{q_0\}, F_N)$
tali che L(D) = L(N).
Abbiamo:
- $Q_D = 2^{Q_N}$ Perche' ogni stato del DFA corrisponde ad un insieme di stati di $Q_N$.
	- $2^{Q_N}$ e' l'insieme delle parti, cioe' l'insieme di tutti i possibili sottoinsiemi
	- Attenzione, e' sempre meglio scoprire mano mano quali di questi stati sono raggiungibili piuttosto che scriverli direttamente tutti
- $F_D = \{S \subseteq Q_N | S \cap F_N \neq \varnothing\}$
	- Gli stati finali del DFA sono sottoinsiemi di stati del NFA
	- Tale sottoinsieme e' finale se almeno uno stato al suo interno e' finale
- $\delta_D$
	- $\forall S \subseteq Q_N$ e $\forall a \in \Sigma$ 
	$$\delta_D(S,a) = \bigcup\limits_{p \in S} \delta_N(p,a)$$
	- Quindi la computazione della [[funzione di transizione degli stati per DFA|delta]] per ogni stato S del DFA (dove ogni stato corrisponde ad un sottoinsieme di stati del NFA) equivale all'unione delle computazione della $\delta_N$ del NFA per ogni stato del sottoinsieme S.
# Esempi
- [[Problems/Esercizio1 - Trasformazione da NFA a DFA]]
- [[Esercizio2 - Trasformazione da NFA a DFA]]

