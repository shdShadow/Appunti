---
date created: 2025-12-22 18:42
---

La funzione ha questo dominio e' codominio
$\delta: Q \times (\Sigma \ \cup \{\varepsilon\} ) \times \Gamma \to Q \times \Sigma^*$
Per far si' che si contraddistingua dagli [[Automi a Pila (PDA)]], e' richiesto che:
1. $| \delta(q, a ,x) | \leq 1  \ \forall q \in Q, \forall a \in \Sigma \cup \{ \varepsilon \}, \forall X \in \Gamma$
	1. Quindi e' richiesta che la cardinalita' dell'insieme di ogni caso della delta sia al **massimo 1**.
2. Se $|\delta(q, a, x)| \neq 0$ per qualche $a \in \Sigma$, allora $|\delta(q, \varepsilon, x)| = 0$

# Sono ammesse le [[Epsilon-mossa|epsilon mosse]] nei [[Automi a Pila (DPDA)|DPDA]]?
Le [[Epsilon-mossa]] sono ammesse nei [[Automi a Pila (DPDA)]], a patto che non creino casi di non determinismo (dove posso scegliere piu' strade). La seconda condizione qui sopra serve proprio a quello.
TODO: immagine 
