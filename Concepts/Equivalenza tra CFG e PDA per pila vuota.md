---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
---
Iniziamo con un esempio:
[[Esempio - Trasformazione da CFG a PDA]]
# Come funziona la trasformazione (formale)
Data la [[Grammatiche CF - CFG|CFG]] G = (V, T, Q, S), costruiamo il [[Automi a Pila (PDA)|PDA]] che accetta $L(G)$ [[Accettazione per pila vuota|per pila vuota]] come segue:
$$P = (\{q\}, T, V \cup T, \delta, q, S)$$
Dobbiamo ora definire la [[funzione di transizione degli stati per automi a pila non deterministici]] e ci sono due casi:
1. $\forall$ variabile A
$$ \delta(q, \varepsilon, A) = \{(q, \beta) | A \to \beta \text{ e' una regola di produzione di G } \}$$
2. $\forall$ simbolo terminale
$$ \delta(q, a, a) = \{(q, \varepsilon)\} $$
## Osservazione
Questa trasformazione e' meccanica e puo' essere fatta senza nemmeno sapere come sono formate le stringhe del linguaggio.