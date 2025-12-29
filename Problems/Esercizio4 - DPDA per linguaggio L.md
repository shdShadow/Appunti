# Concetti utilizzati
- [[Automi a Pila]]
- [[Automi a Pila (DPDA)]]
- [[Definizione formale di automi a pila]]
- [[Come si muove un automa a Pila]]
- [[Linguaggi prefix free]]
# Problema:
DPDA per $L = \{a^nb^mcd^mef^n | n,m \geq 0\}$
Osserviamo alcuni casi:
- $n = 0, m >0 \to a^ncef^n$
- $n = 0, m > 0 \to b^mcd^me$ 
- $n = 0, m= 0 \to ce$
- $n > 0, m >0 \to a^nb^mcd^mef^n$
E' chiaramente prefix-free, cancellare un simbolo dal fondo non rispetterebbe la forma delle stringhe del linguaggio.

Idea:
- carico le a sulla pila
- carico le b sulla pila
- cancello c senza toccare la pila
- cancello le d insieme alle b della pila
- cancello e senza toccare la pila
- cancello le f insieme alle a della pila
Usiamo:
- $q_0$:
	- Impilo le a e poi posso intraprendere piu' strade
		- Se non ci sono b vado in $q_1$ con la unica c della tringa
		- Se ci sono b allora vado in $q_3$ impilandola
- $q_3$:
	- Ciclo sulle b fino a quando ci sono e le impilo sullo stack
	- Quando arriva una c, consumo la c non toccando la pila e andando in $q_1$
- $q_1$
	- Ciclo sulle d fino a quando ci sono, consumandole insieme alle b sulla pila 
	- arriva poi sicuramente una e, che mi fa transitare in $q_2$. La e arriva o quando la pila e' vuota o quando ho una a. In entrambi i casi devo lasciare la pila inalterata.
- $q_2$
	- Ciclo sulle f cancellandole insieme alle a sulla pila
	- Quando la pila e' vuota, faccio un [[Epsilon-mossa]] e vado in $q_4$ finale. 
![[Pasted image 20251229231949.png]]