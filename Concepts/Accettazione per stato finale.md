# Definizione
Sia $P=(Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ un [[Automi a Pila (PDA)|PDA]]/[[Automi a Pila (DPDA)|DPDA]]. Il [[CFL - Context Free Language|linguaggio]] accettato da P per **stato finale** e':
$$ L(P) = \{w \in \Sigma^* | (q_0, w, Z_0) \vdash^* (q, \varepsilon, \alpha) \text{ con }q \in F , \alpha \in \Gamma^*\}$$
E' l'insieme delle stringhe tali che a partire dalla [[Configurazione di un automa a Pila|configurazione]] iniziale, in un [[Computazione in zero o piu' passi di un automa a Pila|certo numero di passi di computazione]] arrivo ad una configurazione in cui:
- mi trovo in uno stato finale
- la stringa e' stata consumata completamente
- e della pila non ci interessa lo stato (non deve essere necessariamente vuota)