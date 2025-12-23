> [!definition]
> Una **configurazione** o **descrizione istantanea** di un [[Automi a Pila (PDA)|PDA]]/[[Automi a Pila (DPDA)|DPDA]] e' una _tripla_ $(q, w, \gamma)$ dove:
> - $q \in Q$ e' lo **stato attuale**
> - $w \in \Sigma^*$ e' la **porzione di stringa in input non ancora consumata**
> - $\gamma \in \Gamma^*$ e' il **contenuto attuale della pila**
## Esempio:
Se abbiamo $$(q_0, abc, bcZ_0)$$
allora l'automa si trova nello stato $q_0$, deve ancora consumare $abc$ e la pila ha i simboli $bcZ_0$ letti dall'alto verso il basso
## Osservazioni
- Rappresenta come una fotografia dell' [[Automi a Pila|Automa a Pila]] in un certo istante. Rappresentano lo stato attuale dell'automa