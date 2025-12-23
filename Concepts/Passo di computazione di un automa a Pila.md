Sia $P = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ un [[Automi a Pila (PDA)|PDA]]/[[Automi a Pila (DPDA)|DPDA]].
Definiamo $\vdash_p (\vdash)$ come segue:
- Supponiamo che $(p, \alpha)$ $\in \delta(q,a,x)$
	- Supponiamo che questa sia una delle coppie appartenga all'**insieme di coppie** della delta, perche' come si vede in [[funzione di transizione degli stati per automi a pila non deterministici]], si nota come il codominio produca un insieme di coppie e non una singola coppia
- Allora $\forall w \in \Sigma^*$ e $\forall \beta \in \Gamma^*$ si ha che:
$$ (q, aw, x\beta) \vdash (p, w, \alpha\beta) $$
dove:
- questa e' una [[Configurazione di un automa a Pila]]
- $q$ e' lo stato attuale dell'automa
- $aw$ e' la porzione di stringa non ancora consumata, dove $a$ e' un simbolo. E' proprio $a$ a condizionare la scelta del caso della delta
- $x\beta$ e' la pila attuale, con x che e' il simbolo in cima alla pila, quindi anche lui aiutera' a scegliere il caso della [[funzione di transizione degli stati per automi a pila non deterministici]]
- $p$ perche' nel caso considerato della [[funzione di transizione degli stati per automi a pila non deterministici]], l'automa passa allo stato $p$
- solo $w$ perche' ha consumato il primo simbolo $a$
- $\alpha\beta$ perche' la [[funzione di transizione degli stati per automi a pila]], ritorna come simboli di cui fare la [[push nei pda|push]] $\alpha$, ha consumato il primo simbolo in cima, ma rimane da tenere da parte ancora $\beta$
## Osservazioni
- il simbolo $\vdash$ rappresenta una relazione binaria tra coppie di [[Configurazione di un automa a Pila|configurazioni]]