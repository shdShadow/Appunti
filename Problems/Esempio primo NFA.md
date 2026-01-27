![[Pasted image 20260127213202.png]]

Notiamo subito che se l'automa e' in $q_0$ e legge 0, puo' restare sia in $q_0$ che andare in $q_1$. Secondo cio' che abbiamo detto in [[Computazione e non determinismo NFA]], possiamo quindi pensare che l'automa si sdoppi oppure che l'oracolo ci dica che strada prendere.
## Computazioni
Analizziamo i diversi metodi di computazioni sulla stringa $w = 00101$
### Prima visione: copie di automi
![[Pasted image 20260127213319.png]]
Siccome una delle copie accetta la stringa w, allora l'automa accetta la stringa w.
### Seconda visione: oracolo
L'oracolo non percorrerebbe tutti i percorsi come fatto sopra, ma semplicemente segue quello piu' breve che porta l'automa ad accettare.
- da $q_0$ legge uno 0 e l'oracolo dice "rimani in $q_0$, perche' poi ti portera' ad uno stato accettante"
- legge poi un altro 0 e l'oracolo risponde ancora "rimani $q_0$"
- arriva un 1 e si rimane senza nessuna scelta non deterministica in $q_0$
- poi con uno 0, l'oracolo dice di andare in $q_1$
- con un 1, si passa in $q_2$

# Rappresentazione delta
Seguendo i metodi descritti [[Rappresentazione della delta per automi a stati finiti|qui]] rappresentiamo l'automa anche per elencazione e in forma tabellare
### Per elencazione
- $\delta(q_0, 0) = \{q_0,q_1\}$
- $\delta(q_1,0) = \varnothing$
- $\delta(q_2,0) = \varnothing$
- $\delta(q_0,1) = \{q_0\}$
- $\delta(q_1,1) = \{q_2\}$
- $\delta(q_2,1) = \varnothing$

### In forma tabellare

|           | 0             | 1             |
| --------- | ------------- | ------------- |
| $\to q_0$ | $\{q_0,q_1\}$ | $q_0$         |
| $q_1$     | $\varnothing$ | $\{q_2\}      |
| *$q_2$    | $\varnothing$ | $\varnothing$ |

