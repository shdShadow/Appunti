### Dove si trova la cima dello stack corrente?
C'e' un registro specifico, **%esp** (stack pointer) che contiene sempre un puntatore alla cima dello stack.
Ogni volta che facciamo una push, a %esp viene sottratto 4 cosi che possa puntare alla nuova cima dello stack, allo stesso modo ogni volta che rimuoviamo un elemento tramite pop, a %esp viene sommato 4.