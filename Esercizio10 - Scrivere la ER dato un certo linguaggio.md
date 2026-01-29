# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Proprieta' algebriche delle espressioni regolari]]
# Problema
Si scriva la ER per $L \subseteq \{0,1\}^*$ composto da stringhe in cui ogni 1 e' seguito da 0 a meno che non sia l'ultimo carattere della stringa (cioe' la stringa non contiene 11)

La soluzione e':
$$ (10+0)^*(\varepsilon + 1)$$
- La prima parte mi da zero o piu' blocchi, dove genero sempre 10 oppure solo 0
- La seconda mi permette di avere un 1 senza essere seguito da uno zero nel caso sia l'ultimo carattere.
