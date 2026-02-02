Il codice chiamante puo' ora analizzare il valore di ritorno che la funzione ha salvato in _%eax_.
Deve anche occuparsi di eliminare i parametri pushati sullo stack prima di lasciare il controllo alla funzione, in modo da far ritornare lo stack pointer nel punto di partenza
- Possiamo semplicemente aggiungere _4 * numero_di_parametri_ all'%esp usando _addl_ se non ci interessa piu' il valore di tali parametri
## [[Distruzione dei registri]]
