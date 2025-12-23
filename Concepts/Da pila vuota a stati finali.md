#### Da pila vuota a stati finali
> [!theorem]
> Sia $L = N(P_N)$ per un [[Automi a Pila (PDA)|PDA]] $P_N = (Q, \Sigma, \Gamma, \delta_N, q_0, Z_0)$ allora $\exists$ un PDA $P_F$ tale che $L(P_F) = L$ (Esiste un pda per stati finali che accetta lo stesso linguaggio di quello per pila vuota.)
> 

![[Pasted image 20251223122231.png]]
Il nostro nuovo automa sara' cosi':
$$P_F = (Q \cup \{p_0, q_f\}, \Sigma, \Gamma \cup \{X_0\}, \delta_F, p_0, X_0, \{q_f\}) $$
_Ma se la pila e' vuota e va comunque nello stato finale?_
Andando a rivedere la definizione di [[Accettazione per stato finale]], si nota come per accettare la stringa di input deve essere vuota, cioe' consumata totalmente.
Il succo della dimostrazione e' che:
- Con il primo passo raggiungo $P_N$
- Lascio il controllo a $P_N$ che fa la sua computazione
- Se $P_N$ accetta quella stringa allora lascera' sullo stack lo start symbol di $P_F$ che mi permettera' di fare un [[Epsilon-mossa]] in uno stato finale