# Concetti utilizzati
- [[Automa a Stati Finiti - DFA]]
- [[stringa]]
- [[Alfabeto]]
- [[funzione di transizione degli stati per DFA]]
# Problema
Consideriamo un [[Linguaggio]] L. descritto nel seguente modo:
$$ L = \{w \in \{0,1\}^* | w = 0^n1^m,\ con \ n,m \geq 0\}$$
_Cosa vuol dire $0^n$?_, semplicemente un certo numero n di zeri concatenati. Stessa cosa per $1^m$.
> [!question] La stringa vuota appartiene al linguaggio?
> Siccome n e m possono essere entrambi zero, la stringa vuota si, appartiene al linguaggio

Avremo un certo automa che:
- parte da un certo stato iniziale
- quando arriva uno zero si sposta in uno stato che si ricorda che fino a quel momento ha letto solo zeri. Quando arriva un 1, si sposta
- in questo stato si deve ricordare che ora sta leggendo solo 1 dopo solo zeri. Se arriva un zero non va bene e non deve accettare.
![[Pasted image 20260127205805.png]]