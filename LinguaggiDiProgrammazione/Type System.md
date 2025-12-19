## Analisi Semantica
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

### Classificazione dei tipi 
I tipi possono essere classificati in due modi:
- _a seconda della loro struttura:_
	- _semplici o primitivi_: cioe' che non possono essere scomposti ulteriormente
	- _strutturati_: sono dei tipi ottenuti dai tipi primitivi tramiti operatori forniti dal linguaggio (Struct,...)
- _a seconda di chi li definisce_:
	- _predefiniti_: cioe' quelli di default del linguaggio
	- _user defined_: definiti appunto dal programmatore mediante gli operatori del linguaggio
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
Abbiamo gia' visto una parte del processo di tipizzazione quando abbiamo parlato di binding, lasciamo qui i riferimenti
- [[Nome, Scopi, Binding#Binding di tipo Statico|Binding di Tipo Statico]]
- [[Nome, Scopi, Binding#BINDING di tipo Dinamico|Binding di tipo dinamico]]
e si trovano anche dichiarazioni implicite e esplicite
## Small excursus: Type Coercion
Puo' essere fatta in modo implicita dal compilatore oppure esplicitamente da noi programmatori.
- _Implicita:_
	- E' operata in fase di compilazione che indebolisce il sistema di controllo di tipi per facilitare il lavoro a noi programmatori
		- Coercizione che puo' portare anche a bug e operazioni inaspettate nel nostro  codice
	- Si vede benissimo in una buona maggior parte dei linguaggi grazie ai tipi numeri

> [!example]
> ```Java
> Integer x = 0;
> Float y = 0.0f;
> Float total = 0;
> total = x + y;
> ```
> Questo codice funziona, nonostante io stia sommando x e y che sono di tipo diverse E stia assegnando un intero ad un Float. Questo e' grazie alla conversione implicita effettuata dal compilatore che Java supporta

- _Esplicita_:
	- Conversion fatta a livello programmatico (nel codice) tramite dei costrutti specifici.
	- Viene effettuata in base alle limitazioni del linguaggio e quando ha senso

> [!example]
> Linguaggi come C se ne sbattano altamente di quello che fai e puoi tranquillamente convertire un char in un puntatore (poi sono affari tuoi), altri linguaggi hanno delle limitazioni sulle coercizioni anche esplicite: in Java non puoi' castare un float in un array di interi (almeno non direttamente.
> 

Questi esempi ci portano al prossimo argomento:
## Tipizzazione Forte vs Debole

> [!definition]
> Un linguaggio e' detto **strongly typed** oppure **con tipizzazione forte** se il linguaggio supporta delle regole di tipizzazione che impediscono qualsiasi utilizzo incoerente dei tipi di dati e ogni errore e' rilevato dal compilatore.

> [!definition]
> Un linguaggio e' detto **loosely typed** oppure **con tipizzazione debole** se errori di tipo non sono rilevati sempre (dal compilatore).


## Linguaggi Type Safe vs Type Unsafe

> [!definition]
> Un linguaggio e' detto **type safe** se garantisce che tutti gli errori di tipo siano catturati, ma non per forza devono essere catturati in fase di compilazione

> [!example]
> - Linguaggi che supportano l'aritmetica dei puntatori intrinsecamente non possono essere type-safe. Perche' permette l'accesso alla memoria _raw_, bypassando il controllo dei tipi
> - Linguaggi con tipizzazione debole non per forza sono unsafe: Perl e' un linguaggio a tipizzazione debole ma presenta un controllo dei tipi in fase di esecuzione


A questo punto:
> [!question]
> Quando un linguaggio e' detto fortemente tipato? 

Un linguaggio viene considerato strongly-typed se:
- Utilizza una tipizzazione statica, pertanto i tipi delle variabili sono fissati in fase di compilazione
- Non ci sono tipi di dato che permettono l'assegnazione di tipi di valori diversi alla stessa variabile in punti diversi del programma. (Ex union)
- Impedisce qualsiasi uso di dati in modo incoerente con il proprio tipo
- La conversione esplicita puo' essere ammessa ma NON quella implicita
- Impedisce in ogni modo di bypassare il systema dei tipi

### Classificazione dei linguaggi
![[Pasted image 20251212154346.png]]
## Type System di un linguaggio
> [!definition]
> Il **type system** di un linguaggio e' l'insieme di regole che governano i tipi, quindi:
> - Insieme dei tipo predefiniti
> - Costrutti per la definizione di nuovi tipi (user defined)
> - Meccanismi per il controllo dei tipi: 
> 	- Regole di equivalenza
> 	- Regole di compatibilita'
> 	- Regole di inferenza
> - Lista dei vincoli da controllare staticamente o dinamicamente

### Regole di equivalenza
Rispondono alla domanda fondamentale: "Quando due tipi sono equivalenti? Cioe' quando sono intercambiabili senza **nessuna coercizione**?"
Per tipi primitivi il discorso e' tutto sommato semplice ma con tipi piu' strutturati e complessi come Struct o Classi?, il discorso diversa sicuramente piu' difficile.
L'equivalenza di tipo puo' essere fatta in due modi:
- _per nome_: Due variabili sono equivalenti se dichiarati nello stesso statement di dichiarazione oppure se hanno utilizzato lo stesso nome per il Tipo.
	- E' facile da implementare ma risulta restrittiva
	- Indebolita in alcuni linguaggi dove sono supportati gli alias
- _Strutturale_: due variabili hanno tipi equivalenti se hanno una struttura identica.  E qui il discorso si allarga moltissimo in quanto comparare strutture dei tipi non e' affatto facile, giusto alcuni esempi: (E' sicuramente piu' flessibile dell'equivalenza per nome)
	- quando due array sono equivalenti?
		- Se hanno lo stesso tipo di elementi?
		- Se hanno anche lo stesso numero di elementi?
	- Due enum sono uguali se hanno lo stesso numero di elementi ma i sono scritti in modo diverso?
	- Si confronta solo il tipo dei campi? anche il loro nome? anche l'ordine?
	- e se due tipi identificano cose diverse ma derivano da uno stesso tipo base

> [!example]
> ```C
> typedef celsius float;
> typedef fahrenheit float;
> // Vengono considerati equivalenti oppure no?
> ```

### Regole di compatibilita'
Sono quelle regole che permettono ad un tipo di essere implicitamente convertito in un altro, compatibile per l'appunto, dal compilatore per far si' che sia accettabile dall'operatore come operando. (abbiamo gia' fatto l'esempio di integer e Float in Java)

E' ovviamente piu' debole dell'equivalenza e inoltre non e' biderezionale come l'equivalenza.
- Due tipi equivalenti sono sempre compatibili vicendevolmente
- Due tipi compatibili no, uno e compatibile con l'altro ma non il viceversa
### Regole di inferenza
In breve, l'inferenza e' quel meccanismo tramite il quale il compilatore e' in grado di dedurre in tipo di una variabile senza che venga esplicitamente scritto
```Rust
let s = "Ciao";
// per Rust e' una stringa anche se non ho scritto esplicitamente
let s: String = "Ciao";
```