---
course: Linguaggi e Computabilita'
known: "False"
chapter: "4"
tags:
  - evergreen
---
# Intro:
E' un teorema che mostra una proprieta' dei [[linguaggi regolari]], cioe' se un [[Linguaggio]] non ha questa proprieta', allora non e' un [[linguaggi regolari|linguaggio regolare]].
## Ragionamento iniziale/Primo esempio
Supponiamo di avere questo [[Linguaggio]]: 
$$ L_{01}= \{0^n1^n| n \geq 1\} = \{01,0011,000111, ...\} $$
Se $L_{01}$ fosse _regolare_ allora esisterebbe un [[Automi a stati finiti]] (supponiamo [[Automa a Stati Finiti - DFA|DFA]]) $A = (Q, \{0,1\}, \delta, q_0, F)$ tale che $L(A) = L_{01}$.
Supponiamo che $|Q| = k$ (A ha _k_ stati) e consideriamo la stringa $0^k$ che ha $k+1$ [[prefissa di una stringa|prefisse]], perche':
$$ \varepsilon, 0, 00, 000, ... , 0^{k-1}, 0^k $$
Supponiamo che il nostro [[Automa a Stati Finiti - DFA|DFA]] prenda in input $0^k$.
Poiche $A$ ha _k_ stati, $\exists$ due prefisse $0^i$ e $0^j$ con $i \neq j$ che portano **allo stesso stato**.
> Non e' possibile mandare ogni prefissa in uno stato diverso in quanto non ne abbiamo abbastanza

Quindi $A$ non riesce a distinguere tra $0^i$ e $0^j$. Allora se $A$ accetta la stringa $0^i 1^i \in L_{01}$ allora accetta anche 
- $0^j1^i$
- $0^i1^j$
che pero' non appartengono al linguaggio in quanto $i \neq j$ 

# Definizione del Pumping Lemma
Sia $L$ un [[linguaggi regolari|linguaggio regolare]]. $\exists$ una costante $n$ (dipende dal linguaggio in quanto non tutti gli automi hanno lo stesso numero di stati) tale che $\forall w \in L | |w| \geq n$, w puo' essere scomposta come $w = xyz$ (la [[Operazioni sui linguaggi#Concatenazione|concatenazione]] di tre pezzi) in modo che:
- $y \neq \varepsilon$
- $|xy| \leq n$
- $\forall k \geq 0$ anche $xy^kz \in L$
	- Quindi non solo $w \in L$ ma anche tutte le strighe in cui io "pompo dentro" k volte _y

> [!info] 
> Possiamo avere $x = \varepsilon$ e/o $z = \varepsilon$ ma non $y = \varepsilon$
## Dimostrazione
Se $L$ e' regolare, allora esiste un [[Automa a Stati Finiti - DFA|DFA]] $A$ che lo accetta. Supponiamo che $A$ abbia _n_ stati. Consideriamo la [[stringa]] $w$ formata da _m_ caratteri
$$w = a_1a_2...a_m \text{ con } m \geq n$$
e quindi $|w| \geq n$ e tale che $w \in L(A)$.
Poniamo $\forall i = 0,1,2,...n$  $p_i = \hat\delta(q_0,a_1...a_i)$ e poniamo $p_0=q_0$
- quindi $p_0$ e' lo stato iniziale e rimane li se non consuma nessun carattere
- Se consuma un carattere va in un certo stato $p_1$
- Se consuma due caratteri va in un certo stato $p_2$ e cosi' via...
 Dato che in $A$ ci sono "solo" _n_ stati, gli _n+1_ stati $p_0, p_1, ... , p_m$ non possono essere tutti distinti. $\exists$ allora i,j con $0 \leq i < j \leq n$ tali che $p_i = p_j$ .
 Scomponiamo $w = xyz$ tali che :
 - $x = a_1...a_i$ quindi sono i caratteri che mi portano in $p_i$
 - $y = a_{i+1}...a_j$ quindi mi porta in $p_j$ che sarebbe lo stesso $p_i$
 - $z = a_{j+1}...a_m$
Possiamo rappresentare cosi' il [[Automa a Stati Finiti - DFA|DFA]]:

Siccome $xyz$ viene accettata, anche [[stringa|stringhe]] $\not\in L$ vengono accettate come $xy^2z, xz, ...$ quindi $L$ non e' regolare

# Perche' questo tipo di linguaggi non puo' essere accettato dai DFA?
Perche' l'unica memoria degli [[Automi a stati finiti]] sono gli stati e non sono in grado di "vedere nel futuro" e neanche salvarmi una specie di contatore, come invece possiamo fare negli [[Automi a Pila]], per questo motivo devo avere uno stato **specifico** che mi dice "guarda da me hai letto n 0" e un altro stato a sua volta **specifico** che mi dice "guarda da me hai letto n 0 e n 1". Ma siccome ci possono essere infiniti 0 o 1, non mi e' possibile riconoscere questo tipo di stringhe.

# Proprieta' utile:
Se abbiamo gia' dimostrato che un sottolinguaggio non e' regolare e tale linguaggio e' contenuto in uno "piu' grande", allora anche tale linguaggio piu' grande non puo' essere regolare. Ne sono un chiaro esempio questi due esercizi: [[Esercizio1 - Primo esempio di trasformazione di DFA in ER]] e [[Esercizio2 - Applicare il Pumping Lemma al linguaggio dato]] 
# Esempi/Esercizi 
- [[Esercizio1 - Primo esempio di applicazione del pumping lemma]]
- [[Esercizio2 - Applicare il Pumping Lemma al linguaggio dato]]
- [[Esercizio3 - Applicare il Pumping Lemma al linguaggio dato]]
- [[Esercizio4 - Applicare il Pumping Lemma al linguaggio dato]]
- [[Esercizio5 - Applicare il Pumping Lemma al linguaggio dato]]
- [[Esercizio6 - Applicare il Pumping Lemma al linguaggio dato]]
