Se $L \in REG$ su $\Sigma$, anche $\overline{L} \in REG?$ dove 
$$ \overline{L} = \Sigma^* \setminus L $$
La risposta e' si.
## Dimostrazione
La facciamo tramite i [[Automa a Stati Finiti - DFA]] perche' in questo caso sono piu' facili da usare.
Se $L \in REG$ allora $\exists$ un DFA $A = (Q,\Sigma,\delta,q_0,F)$ che lo accetta.
Consideriamo il [[Automa a Stati Finiti - DFA|DFA]] $B = (Q,\Sigma,\delta,q_0,Q \setminus F)$ cioe' B ha come stati finali gli stati non finali di A.
(Questa cosa l'abbiamo gia' vista in [[DFA e complementi]]). Praticamente andiamo a scambiare stati finali e non finali e in questo modo B accetta $\overline{L}$
> [!important] 
> E' importante specificare $\Sigma$. Se abbiamo due [[Alfabeto|alfabeti]] t.c $$
> $\Sigma_1 \varsubsetneqq \Sigma_2$$
> (cioe' contenuto ma diverso) e $L \in REG \ su \ \Sigma_1$ allora i complementi$$
> \Sigma_1^* \setminus L \ e \ \Sigma_2^* \setminus L$$
> sono diversi. Il complemento su $\Sigma_2$ sara' piu' grande rispetto a quello su $\Sigma_1$ perche' $\Sigma_2$ contiene $\Sigma_1$



Per esempio:
- $\Sigma_1 = \{a,b\}$
- $\Sigma_2 = \{a,b,c\}$
- $L = \{w \in \{a,b\}^* | ...\}$
$cab \in \Sigma_2$ ma $cab \not\in \Sigma_1^*$ 

