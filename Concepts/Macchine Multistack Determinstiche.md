# Determistiche
> [!question] Che linguaggi accettano?
> Abbiamo gia' visto che se abbiamo 1 sola pila, con gli [[Automi a Pila (DPDA)]] accettiamo meno dei [[CFL - Context Free Language]] ([[Cosa accettano i DPDA]])
> **_Ma con 2 pile?_**

> [!theorem]
> Se un linguaggio L e' accettato da una [[Macchine di Turing|MdT]] allora e' accettato da un [[Automi a Pila (DPDA)|DPDA]] con 2 pile
> **Dimostrazione (come al solito per simulazione)**:
![[Pasted image 20260104114310.png]]> 
> E' come se:
> - Tagliassi il nastro della Mdt dove e' posizionata l mia testina e:
> 	- La parte a sinistra della testina (solo Blank) va nella prima pila
> 	- La parte a destra della testina (a,b,c,d,...) va sulla seconda pila
> La MdT pero' ha l'intera stringa tutta sul nastro all'inizio, per replicare cio' detto sopra, la macchina mulitstack andra' a:
> - Leggere tutti i simboli e li mette sulla prima pila
> - Li travasa tutti sulla seconda pila
> _Ora pero' dobbiamo simulare il fatto che la MdT va a sinistra/destra, cambia stato e scrive un simbolo sutto la testina_:
> - supponiamo di voler cambiare la "a" in "e" e spostarci a destra
> 	- La "a" viene cancellata dalla seconda pila
> 	- Scrive la "e" sulla prima pila
> 	- Ora il primo simbolo sulla seconda pila e' la "b" (mi sono spostato a destra.)
> - Ora voglio trasformare la "b" in "f" e spostarmi a sinistra:
> 	- La "b" viene cancellata dalla seconda pila
> 	- Scrivo una "f" sulla seconda pila
> 	- Per spostarsi a sinistra, "travasa" la "e" dalla prima pila sulla seconda
> 
> 