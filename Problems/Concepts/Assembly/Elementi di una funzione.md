- _Nome_: 
	- E' un simbolo che rappresenta l'indirizzo dove il **codice della funzione inizia**.
	- Il simbolo viene definito scrivendo il nome della funzione prima del suo codice, proprio come le label usate per i jump
	- La dichiarazione del simbolo si fa nel seguente modo:
	  ```armasm
	  .type nome_funzione, @function
	  ```
- _Parametri_
- _Variabili Locali_:
	- Dati temporanei che la funzione immagazzina e che usa mentre computa e poi butta via quando termina.
	- Le variabili locali **non** sono accessibili da nessuna altra funzione all'interno del programma.
- _Variabili statiche:_
	- Storage usato anche qui delle funzioni con la differenza che non viene buttato via dopo che la funzione termina
	- Solitamente non si usano variabili statica a meno che non siano strettamente necessarie
- _Variabili Globali_:
	- Data storage che una funzione usa per computare ma che viene gestito dall'esterno della funzione.
	- A volte valori di configurazione sono immagazzinati in variabili globali
- _Return address_:
	- E' una sorta di parametro invisibile che non viene direttamente usato dalla funzione. Dice alla funzione da dove riprendere l'esecuzione del programma una volta che termina
- _Return value_: