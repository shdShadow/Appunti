# Concetti utilizzati:
- [[Espressioni Regolari]]
- [[Automa a stati finiti - Epsilon NFA]]
- [[Relazione tra automi a stati finiti ed espressioni regolari]]
- [[trasformazione da ER a Epsilon-NFA]]
- [[Operazioni sui linguaggi]]
- [[Linguaggio]]
# Problema
Dobbiamo trasformare $ER = (0+1)^*1(0+1)$ nel Epsilon-NFA corrispondente. Notiamo che c'e' una parte dell'ER che appare piu' volte: (0+1) e' quindi bene osservare subito il module che ne deriva:
TODO: immagine modulo 0+1

Ora costruiamo il modulo per $(0+1)^*$
TODO: immagine modulo $(0+1)^*$

Ora possiamo fare la concatenazione di tutti i moduli che ci servono:
TODO: immagine finale