# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Costruiamo un DFA per $L_1 = \{w \in \{0,1\}^* | \text{ w contiene 000 almeno una volta}\}$ che si puo' riscrivere anche cosi' 
$$
L_1 = \{x000y | x,y \in \{0,1\}^*\}
$$
che e' praticamente identico a quest'altro esercizio: [[Esercizio 12 - DFA per L]]

TODO: imaggine 14


Consideriamo anche questa variante:
$$L_2 = \{w \in \{0,1\}^* | \text{ w non contiene 000}\}$$
e $L_2$ e' il complemento di $L_1$: $L2 = \{0,1\}^* \setminus L_1$ e tramite questo esempio confermiamo anche questo: [[DFA e complementi]]

TODO: immagine 15