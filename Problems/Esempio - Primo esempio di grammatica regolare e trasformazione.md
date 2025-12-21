## Esempio:
Consideriamo sempre la grammatica delle espressioni:
- $I \to a | b | Ia | Ib | I0 | I1$ (sono tutte lineari a sinistra) 
(Osservazione utile: [[regole di produzione di linguaggi regolari#Particolarita']])
Proviamo ora a derivare la stringa $w = b00$:
- $I \Rightarrow IO$
- $\Rightarrow Ioo$
- $\Rightarrow b00$

Ora secondo quanto detto in [[Se io uso solo regole lineari a sx o dx posso ottenere tutti i linguaggi regolari]], proviamo a creare la grammatica con solo regole lineari a destra.
Teniamo bene a mente questo: [[Come si trasformano regole lineari in un verso nell'altro]]
Primo tentativo scambiando semplicemente di posto le variabili nei corpi delle [[regole-di-pruduzione]]
- $I \to a | b | aI | bI | 0I /| 1I$
Proviamo a derivare:
$$ I \Rightarrow bI \Rightarrow b0I \Rightarrow \text{ non posso piu' andare avanti } $$
Secondo tentativo usando delle variabili d'appoggio
- $I \to aJ | bJ | a | b$
- $J \to a | b | aJ | bJ | 0J | 1J | 0 | 1$
Proviamo a derivare:
$$ I \Rightarrow bJ \Rightarrow b0J \Rightarrow b00$$
Questo approccio segue proprio cio' che abbiamo detto qui [[Come si trasformano regole lineari in un verso nell'altro]]