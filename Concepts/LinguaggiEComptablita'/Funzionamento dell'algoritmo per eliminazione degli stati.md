# Funzionamento dell'algoritmo
- Per prima cosa, trasformiamo i simboli che etichettano gli archi dell'automa in [[Espressioni Regolari]]. Per esempio:
	![[Pasted image 20260129182552.png]]
- Scelgo uno degli  stati finali e il solo stato iniziale e il nostro obiettivo ora e' cancellare ogni stato _s_ non finale uno alla volta.
- Vediamo lo schema che ci consente di togliere uno stato _s_
	- Stato che non deve essere iniziale
	- Stato che non deve essere finale
	TODO: immagine schema
	- Lo stato s da noi considerato avra':
		- Dei predecessori $\{q_1, ..., q_k\}$ e sono stati che hanno un arco diretto verso s. Ogni arco e' etichettato con una [[Espressioni Regolari|ER]]
			- $q_1$ ha un arco verso S etichettato con $Q_1$
			- $q_2$ ha un arco verso s etichettato con $Q_2$
			- ...
		- Dei successori $\{p_1,...,p_m\}$ e sono stati per il quale s ha un arco diretto verso di loro
			- Anche in questo caso ogni arco e' etichettato con una ER
		- _s_ puo' avere un cappio etichettato con $S$ 
		- Ogni predecessore puo' essere collegato direttamente con i successori. Ogni arco e' etichettato con un espressione regolare $R_{1m}, R_{11}, R_{km}, R_{km}, ...$
		- Se non esiste un arco che collega certi stati facciamo finta che ci sia ma viene etichettato con $\varnothing$
- Vogliamo togliere s, modificando le [[Espressioni Regolari]] su tutti gli archi che restano. Rimangono predecessori e successori piu' i collegamenti diretti tra predecessori e successori
 TODO: immagine risultato
 - Per creare le ER sugli archi, guardo quali stati l'arco connette e vedo quali "ER devo consumare" per arrivarci, se ci sono piu' possibilita' sommo le varie ER, altrimenti su uno stesso cammino le concateno
 - Alla fine posso ottenere solo due casi:
	 - TODO: immagine caso 1
		 - Che ha formula: $ER = (R+SU^*T)^*SU^*$
	 - TODO: immagine caso 2
		 - Che ha formula $ER = R^*$