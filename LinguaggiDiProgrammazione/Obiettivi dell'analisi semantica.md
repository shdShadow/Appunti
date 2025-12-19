Gli obiettivi dell'analisi semantica sono chiari:
- Verificare gli identificatori (delle variabili) siano effettivamente dichiarati prima di essere usati in qualche espressione o contesto:
> Se io faccio _x+y_ ma x e y non sono dichiarati cosa sto sommando esattamente? -> _IL NULLA_

> [!question]
> Come si tiene traccia dello stato degli identificatori?
## Symbol Table
Lo si fa tramite una **symbol table**, utilizzata appunto come struttura di supporto per l'analisi semantica del codice e che contiene tutti gli elementi simbolici incontrati durante l'analisi.
Il risultato di questa fase e' **AST: Abstract Syntax tree** che non e' altro che una rappresentazione astratta della struttura sintattica di un programma, senza nessuno specifico riferimento alla sua struttura sintattica
> Grazie a questo meccanismo, uno stesso programma potrebbe essere portato anche su altri linguaggi senza troppe difficolta' perche' i dettagli sintattici di linguaggio sono omessi.

## Cosa e' un Data Type e un Type Descriptor?
> [!definition]
> Un **Data Type** definisce una collezione/lista di valori e un set di operazioni predefinite e supportate su tali valori. Inoltre un tipo e' caratterizzato dalla sua sintassi di dichiarazione di tipo

> [!example]
> ```C
> int x = 0;
> ```
> e' appunto la dichiarazione di tipo del tipo "Int"

> [!definition]
> Un **type descriptor** e' una struttura dati che contiene tutte le informazioni necessarie a definitre il tipo

Un tipo puo' essere:
- _Statico_: definito alll'inizio della compilazione e serve appunto al compilatore per effettuare controlli di tipo
- _Dinamico_: determinato a runtime, puo' rimanere tale oppure variare durante l'esecuzione del programma e puo' servire per eventuali controlli di tipo a run-time
> [!example]
- L'esempio piu' chiaro lo si ha con Java. Il compilatore esegue diversi controlli in fase di compilazione tramite tipo statico MA (soprattutto a cause di erediterieta' e polimorfismo) molti controlli dobbiamo farli anche noi a run-time per evitare problemi o esecuzioni inaspettate
## Controllo di Tipo
E' l'attivita' che ci assicura che gli operandi di vari operandi e operazioni siano compatibili
> [!example]
> Questo riguarda tutto: assegnamenti, dichiarazioni, uso di parametri, casting,...

Puo' essere: _statico o dinamico_
- _Statico_: Se il binding del tipo di tutte le variabili e' statico, allora e' possibile fare type-checking staticamente (quindi in fase di compilazione).
	- In tal caso viene svolto seguendo l'albero sintattico AST generato bottom-up
	- Gli svantaggi principeli di un linguaggio completamente statically-checked e' ovviamente la ridotta flessibilita' di programmazione per noi programmatori
- Dinamico: effettuato per quelle variabili con binding di tipo dinamico, quindi il cui tipo puo' cambiare in fase di esecuzione.
	- Il vantaggio dei tipi dinamici e' la maggior flessibilita di programmazione
	- Il problema e' apporta un carico computazionale non indifferente e richiede che il sistema di runtime si "ricordi" il tipo delle varie celle di memoria
	- E' una tecnica molto tipica dei linguaggi interpretati