---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "6"
---
# Concetti usati
[[Automi a Pila (PDA)]]
[[Esempio di computazione informale di un Automa a pila (PDA)]]
[[Grammatiche CF - CFG]]
[[Come si muove un PDA]]
[[Computazione in zero o piu' passi di un PDA]]
[[Passo di computazione di un PDA]]
# Problema
Devo creare un [[Automi a Pila (PDA)]] che accetta:
$$ L_{ww^R} = \{ww^R | w \in \{0,1\}^*\} $$
E' il linguaggio delle stringhe binarie palindrome di lunghezza pari
La [[Grammatiche CF - CFG]] di questo linguaggio e':
- $S \to 0S0 | 1S1 | \varepsilon$

Costruiamo il PDA tenendo in considerazione la stringa $011110$ come esempio. (Teniamo traccia dello stack con STACK=xyz dove x e' il simbolo che sta in cima)
- L'automa parte da $q_0$
- A questo punto l'automa inizia a leggere/carica i caratteri di $w$ 1 simbolo alla volta e li carica man mano sullo stack.
- Ad un certo punto, decide in modo non deterministico che $w$ e' finita e passa allo stato $q_1$. (STACK = 110)
- In $q_1$ inizia a confrontare quello che resta con quello che c'e' sulla pila. "Fortuna" vuole, che quello che resta corrisponde con quello che c'e' sulla pila. (STACK = 110, stringa che rimane= 110)
	- Se sono effettivamente palindrome, andra' a consumare man mano, 1 simbolo dalla stringa e 1 simbolo dalla cima fino ad incontrare $Z_0$, andra' in $q_2$ e accetta
	- Se non sono palindrome, allora ci sara' una computazione in cui il simbolo in input non combaciera' con quello in cima alla pila, pertanto la computazione si ferma e non accetta.
## Definizione formale del PDA
$$P = (\{q_0, q_1, q_2\}(Q), \{0,1\}(\Sigma), \{0,1,Z_0\}(\Gamma), \delta, q_0, Z_0, \{q_2\})$$
Definiamo la delta in tutti i suoi casi:
- $\delta(q_0, 0, Z_0) = \{q_0, 0Z_0\}$
	- Scrivo 0Z0 proprio perche' la delta consuma sempre il simbolo in cima sulla pila, e siccoma la pila non puo' essere MAI fisicamente vuota, DEVO rimetterlo
- $\delta(q_0, 1, Z_0) = \{q_0, 1Z_0\}$
- $\delta(q_0, 0, 0) = \{q_0, 00\}$
- $\delta(q_0, 0, 1) = \{q_0, 01\}$
- $\delta(q_0, 1, 0) = \{q_0, 10\}$
- $\delta(q_0, 1, 1) = \{q_0, 11\}$
Ho "finito" w, faccio la [[Epsilon-mossa]] per passare in $q_1$ per vedere i "match"
- $\delta(q_0, \varepsilon, Z_0) = \{q_1, Z_0\}$
- $\delta(q_0, \varepsilon, 0) = \{q_1, 0\}$
- $\delta(q_0, \varepsilon, 1) = \{q_1, 1\}$
- $\delta(q_1, 0, 0) = \{q_1, \varepsilon\}$
- $\delta(q_1, 1, 1) = \{q_1, \varepsilon\}$
- $\delta(q_0, \varepsilon, Z_0) = \{q_2, Z_0\}$
Scrivere tutti i casi della delta in questo modo e' piuttosto scomodo, pertanto la possiamo rappresentare in [[rappresentazione funzione di transizione dei PDA in forma grafica.|in forma grafica]]
![[Pasted image 20251222004306.png]]
# Osservazione
Questo linguaggio non puo' essere accettato da nessun [[Automi a Pila (DPDA)]]
## Computazione di una stringa
Proviamo con la stringa $w = 1111$. Essendo di base un [[Epsilon-NFA]], per ogni stato ci possono essere anche piu' mosse possibili quindi:
- o ci avvaliamo dell'[[oracolo]]
- oppure ogni possibilita' finisce per "sdoppiare" l'automa
Andremo a rappresentarla con il secondo caso
TODO: immagine computazione 1111