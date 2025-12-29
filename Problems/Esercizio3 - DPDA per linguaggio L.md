# Concetti utilizzati
- [[Automi a Pila]]
- [[Automi a Pila (DPDA)]]
- [[Definizione formale di automi a pila]]
- [[Come si muove un automa a Pila]]
- [[Linguaggi prefix free]]
- [[Grammatica]]
- [[Grammatiche CF - CFG]]
# Problema
DPDA per L generato da:
- $B \to BB | (B) | ()$
Esempio di derivazione:
$$ B \Rightarrow BB \Rightarrow ()B \Rightarrow ()()$$
Questo linguaggio non e' prefix-free, quindi non possiamo usare un [[Automi a Pila (DPDA)|DPDA]] per [[Accettazione per pila vuota|pila vuota]]
Usiamo 4 stati:
- $q_0$ mi serve solo come stato iniziale, e lo uso per transitare a $q_1# quando leggo una parentesi aperta
- $q_1$:
	- Ciclo in $q_1$ fino a quando leggo una parentesi aperta e sulla pila in cima c'e' una parentesi aperta
	- quando leggo una partesi chiusa passo in $q_2$
- $q_2$:
	- Ciclo in $q_2$ fino a quando leggo parentesi chiuse e in cima ho una parentesi aperta
	- Se leggo una parentesi aperta e in cima ho una paretesi aperta, torno in $q_1$
	- Se invece in $q_2$ in cima ho $Z_0$ allora passo in $q_3$ finale
- $q_3$:
	- Se in q3 leggo invece un altra aperta, torno in $q_1$
![[Pasted image 20251229231908.png]]