# Concetti utilizzati
- [[Indecidibilita']]
- [[Macchine di Turing]]
- [[Macchine di Turing#Problemi di Indecidibilita' espressi secondo le macchine di Turing]]
# Esempio
- Consideriamo questa tabella fatta cosi':
TODO: immagine tabella

- Infinite righe e colonne
- Ogni colonna ha una stringa binaria
- Ogni riga ha una [[Macchine di Turing|MdT]] che non sono altro che le stesse stringhe sulle colonne codificate come macchine di Turing
	- Essendo la codifica non iniettiva la stessa macchina puo' apparire piu' volta
- Ogni cella avra' 0,1 dove:
	- 1 se la macchina $M_n$ data in pasto le stringhe sulle colonne, le accetta
	- Altrimenti se non accetta o va in loop mettiamo 0

Consideriamo ora in particolar modo la **diagonale principale**:
> Sulla diagonale stiamo considerando tutte le MdT che prendono in input se stesse

Successivamente, neghiamo questa diagonale, quindi nell'esempio avremmo:
$$ 1010 \to 0101$$
Quindi sara' 1 se la macchina non accetta se stessa e 0 se invece accetta.
La domanda ora e', il linguaggio della diagonale completata compare come vettore riga? Cioe', viene accettato da una certa macchina di Turing?
> Si dice cosi' perche', ogni riga rappresenta una MdT e avra' 1 se accetta quella stringa. Di conseguenza ogni riga si puo' vedere come il [[linguaggi ricorsivamente enumerabili]] accettato da quella MdT

> [!caution]
> La risposta e' NO!. Perche':
> - Se consideriamo la prima riga, il primo elemento non potra' essere uguale perche' l'ho complementato
> - Se consideriamo la seconda riga, il secondo elemento sara' diverso perche' l'ho complementato,
> - ...
> - Non puo' essere associato a nessuna riga, e siccome le righe contengono TUTTI e SOLI i [[linguaggi ricorsivamente enumerabili]], tale linguaggio non potra' mai essere accettato da una [[Macchine di Turing|MdT]]

# Dimostrazione piu' formale
> [!theorem]
> $L_D$ non e' un [[linguaggi ricorsivamente enumerabili| linguaggio ricorsivamente enumerabile]]. In altre parole $\nexists$ una MdT che accetta $L_D$
> $$ L_D = w_i \in \{0,1\}^*: w_i \not \in L(M_i)$$
> Stiamo dicendo il linguaggio di diagonalizzazione, e' quel linguaggio composto da quelle stringhe che nella tabella sulla diagonale hanno 0
> 
> **Dimostrazione**:
> Se esistessa una [[Macchine di Turing|MdT]] M che accetta $L_D$ allora sarebbe $M = M_i$ per qualche $I \in \mathbb{N}$. Stiamo dicendo che se esistessa una macchina di Turing che accetta $L_D$ allora sarebbe associato ad una riga della tabella.
> Ci chiediamo se $w_i \in L_D$:
> - Se $w_i \in L_D$ allora $M_i$ accetta $w_i$ ma per definizione di $L_D$, $w_i \not \in L(M_i) = L_D$, poiche' $L_D$ contiene tutte e sole le stringhe $w_j$ tali che $M_j$ non accetta $w_j$
> - Se $w_i \not \in L_D$ allora $M_i$ non accetta $w_i$. ma per definizione di $L_D$, $w_i \in L_D$ e quindi $M_i$ dovrebbe accettare
> 
> Quindi non esiste nessuna macchina di Turing che accetti $L_D$


