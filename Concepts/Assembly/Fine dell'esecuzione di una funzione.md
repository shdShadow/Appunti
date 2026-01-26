## Fine dell'esecuzione di una funzione
1. Si salva il suo **valore di ritorno** in %eax
2. Resetta lo stack a cio' che era prima di essere chiamato
3. Ritorna il controllo a chiunque abbia chiamato la funzione
	1. Lo fa tramite la funzione **ret**. Poppa qualsiasi cosa ci sia in cima allo stack e setta l'instruction pointer %eip a quel valore.
	2. Dobbiamo quindi resettare lo stack pointer %esp e base pointer %ebp a cio' che erano prima che la funzione iniziasse:
	3. ```armasm
	   movl %ebp, %esp
	   popl %ebp
	   ret
	   ```
> [!question] Dobbiamo eliminare anche le variabili locali?
> No, perche' e' probably che in un futuro altre push di altri stack le vadano a sovrascrivere.