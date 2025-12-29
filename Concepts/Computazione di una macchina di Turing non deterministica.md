Il concetto e' molto simile (se non uguale) a quello gia' visto per:
- [[Automi a Pila (PDA)]]
- [[Epsilon-NFA]]
Si parte dalla [[Configurazione di un automa a Pila|configurazione iniziale]] $q_0w$e da li poi si verra' a creare un albero delle computazioni delle macchine di Turing con tanti rami quanti casi della delta esistono per quella configurazione.
E a questo punto sono sempre due i modi in cui ci possiamo immaginare la computazione:
- La macchina si sdoppia con quei casi particolari della delta. Quindi andiamo a provare tutti i "doppioni"
- Esiste un oracolo che ci dice esattamente quali "doppioni" dover usare per far si che una stringa venga accettata
![[Pasted image 20251229231116.png]]