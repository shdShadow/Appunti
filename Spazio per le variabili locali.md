sUna volta caricati i parametri sullo stack e i registri %esp e %ebp nel modo corretto, come si vede in [[Preparazione dello stack]], ora bisogna riservare dello spazio per le variabili locali della funzione. _Lo facciamo spostando semplicemente lo stack pointer %esp_
	- Per esempio, se abbiamo bisogno di 2 word per eseguire una funzione, possiamo muovere lo stack pointer "in giu" di 2 word:
	  ```armasm
		  subl $8, %esp
	  ```
  - Siccome le variabili locali allocate sullo stack di una funzione, potranno esistere soltanto fino a quando la funzione esegue.
Lo stack ora e' formato nel seguente modo:
![[Pasted image 20260123160847.png]]
