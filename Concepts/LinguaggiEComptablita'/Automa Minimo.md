---
chapter: "4"
course: Linguaggi e Computabilita'
tags:
  - evergreen
known: "False"
---
Dato un [[Automa a Stati Finiti - DFA|DFA]] $A = (Q, \Sigma, \delta, q_0, F)$, l'**automa minimo** $B$ e' un [[Automa a Stati Finiti - DFA|DFA]] che tra tutti quelli che accettano $L(A)$ contiene il **piu' piccolo numero possibile di stati**.

Per trovare tale automa minimo c'e' un algoritmo che ci permette di passare da A a B
Si basa su una nozione di [[equivalenza tra stati]]. E tramite quella relazione, cio' che fa l'[[Automa Minimo]]
e' prendere come stati le [[classi di equivalenza]] andando a far collassare tutti quegli stati che sono fra loro [[equivalenza tra stati|equivalenti]].

# [[Algoritmo Riempi-Tabella + Esempio]]
### Note
La procedura di minimizzazione vista non funziona con gli [[Automa a stati finiti - NFA|NFA]] ma funziona solo con i [[Automa a Stati Finiti - DFA|DFA]].
# Complessita' dell'algoritmo Riempi-Tabella
Consideriamo un [[Automa a Stati Finiti - DFA|DFA]] $A = (Q, \Sigma, \delta,q_0,F)$ con $|Q| = n$. Il numero di coppie (cioe' il numero di celle nella tabella) e': 
$$ \frac{n(n-1)}{2} = \theta(n^2)
$$
Ogni passata richiede di vedere tutte le celle, quindi $\theta(n^2)$. 
Nel caso peggiore metto 1 crocetta per ogni passata e nel caso peggiore avro' $\theta(n^2)$ passate. Quindi:
$$ tempo\_totale = \theta(n^4) $$
# Teorema:
Se due stati non sono distinti dall'algoritmo **riempi-tabella** allora sono **[[equivalenza tra stati|equivalenti]]**

# Unicita' dell'automa minimo
L'automa minimo e' **unico** ed e' quello ottenuto con la procedura dell'[[Algoritmo Riempi-Tabella + Esempio]].

Fa una dimostrazione per assurdo, prendendo l'[[Automi a stati finiti]] costruito con [[Algoritmo Riempi-Tabella + Esempio]], suppone poi per assurdo che ce ne sia uno piu' piccolo e fa vedere che in realta' non puo' esistere