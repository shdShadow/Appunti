# Concetti utilizzati
- [[Automi a Pila]]
- [[Automi a Pila (DPDA)]]
- [[Definizione formale di automi a pila]]
- [[Come si muove un automa a Pila]]
- [[Linguaggi prefix free]]
# Problema
DPDA per $L = \{0^n1^n | n \geq\}$
Prima cosa vedere se e' prefix free:
> Si vede ad occhio che se cancello almeno un carattere a partire dal fondo, la stringa non rispetta piu' la forma $0^n1^n$ pertanto non puo' appartenere al linguaggio

Essendo prefix free possiamo accettare per :
- [[Accettazione per pila vuota]]
- [[Accettazione per stato finale]]

## Idea
Dovrebbe impilare gli zeri, e poi quando legge gli uni cancellare gli zeri man mano dalla pila.
Ci avvaleremo di 3 stati:
- in $q_0$ carico gli zeri
- con un 1 passo in $q_1$ che cancella gli zeri con gli uni
- in $q_2$ ci passo solo se la pila e' vuota
Posso anche rimuovere q2 e far si' che accetti solo per pila vuota.
TODO: immagine esercizio1 