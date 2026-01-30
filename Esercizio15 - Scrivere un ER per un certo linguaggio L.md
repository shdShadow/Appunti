# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Proprieta' algebriche delle espressioni regolari]]
- [[Linguaggio]]
# Problema
Si consideri il seguente linguaggio:
$$ L \subseteq \{a,b,c\}^* \text{ con stringhe che contengono almeno una a e almeno una b } $$
Qui abbiamo due parti:
- Una parte in cui ci assicuriamo di avere almeno una _a_ e una _b_
- Una parte dove ci ficchiamo tutto il resto
Una possibile soluzione:
$$c^*(a(a+c)^*b+b(b+c)^*a)(a+b+c)^* $$
- $c^*$ perche' all'inizio ci puo' essere qualsiasi cosa
- $a(a+c)^*$ mi assicura che ci sia una a, e poi una qualsiasi stringa di a e c
- poi la b mi assicura che ci sia la b
- Allo stesso modo, con il secondo blocco controlliamo che prima ci sia una b e poi una a
- A seguire tutto questo , puo' esserci qualsiasi stringa

