---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
  - insight
---
**Obiettivo:** fare un elenco di tutte le stringhe binarie ($\{0,1\}^*$) di qualunque lunghezza, e tale elenco deve contenere _tutte le stringhe binarie possibili_ 
Il modo piu' facile per elencarle e farlo tramite un elencazione in ordine **crescente di lunghezza**:

$$
\begin{array}{cccccc}
\text{ index }1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & ...\\
\text { string } \varepsilon & 0 & 1 & 00 & 01 & 10 & 11 & 000 & 001 & ...
\end{array}
$$
_Ok ma quindi abbiamo bisogno di un "supporto" per conoscere l'indice di una stringa?_
Beh no, ci basta rappresentare le stringhe in questo modo:
$$
\begin{array}{cccccc}
1\varepsilon & 10 & 11 & 100 & 101 & ... \\ 
\end{array}
$$
e quell'1 davanti ad ogni stringa, se calcolato in binario insieme alla stringa, ci permette di ottenere la posizione della stringa nell'elenco :
- la stringa 0 si trova in posizione 2
- la stringa 1 si trova in posizione 3
- ... 

Abbiamo quindi 2 possibili trasformazioni:
- stringa $w \in \{0,1,\}^* \to \text { indice }$ = $1w$ e leggo il numero scritto in binario
- indice $n \to w \in \{0,1\}^*$ = scrivo n in binario come $1w$, scarto l'1 iniziale e ottengo w
Queste trasformazioni, rappresentano una **funzione biunivoca**
$$ \{0,1\}^* \to \mathbb{N}$$

