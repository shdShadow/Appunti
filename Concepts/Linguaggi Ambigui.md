# Definizione
Un [[CFL - Context Free Language|CFL]] e' ambiguo se ammette solo [[Grammatiche Ambigue]].

# Esempio
Per i linguaggi ambigui vediamo solo un esempio:
$$ L = \{a^nb^nc^md^m | n,m \geq 1\} \cup \{a^nb^mc^md^n | n,m \geq 1\}
$$
Se consideriamo i singoli sottolinguaggi presi singolarmente, si nota subito che non possono essere ambigui ma esattamente i 2 [[CFL - Context Free Language#Casi paradigmatici|Casi paradigmatici]]:
1. Concatenazione di 2 linguaggi
2. 2 linguaggi nidificati
Ma e' la loro **unione** il problema.
Vediamo le [[Regole di produzione di linguaggi Context Free|regole di produzione]] con: $A = a^nb^n$, $B = c^md^m$, $C = a^n...d^n$,$D = b^mc^m$ 
- $S \to AB | C$
- $A \to aAb | ab$
- $B \to cBd | cd$ 
- $C \to aCd | aDd$
- $D \to bDc | bc$
Proviamo ora a derivare la stringa $w = aabbccdd$. E' una stringa che ha n = m = 2, pertanto appartiene a tutti e due i linguaggi, sta nell'intersezione
Immagine intersezione

E per le stringhe che stanno in una intersezione di 2 [[CFL - Context Free Language|CFL]] si hanno due [[derivazione leftmost e rightmost nelle CFG|derivazioni sinistre]] (o destre).
$$S \Rightarrow_{lm} AB \Rightarrow_{lm} aAbB \Rightarrow_{lm} aabbB \Rightarrow_{lm} aabbcBd \Rightarrow_{lm} aabbccdd$$un altra possibile derivazione e' questa:
$$ S \Rightarrow_{lm} C \Rightarrow_{lm} aCd \Rightarrow_{lm} aaDdd \Rightarrow_{lm} aabDcdd \Rightarrow_{lm} aabbccdd$$

Sono 2 derivazioni sinistre distinte, quindi per il [[Grammatiche Ambigue#Teorema|teorema]] visto nelle grammatiche ambigue, ha 2 [[Alberi Sintattici]] distinti, e quindi questa grammatiche e' [[Grammatiche Ambigue|ambigua]]

## Non la posso aggiustare?
In questo caso non si puo', dimostrarlo e' molto complicato e non lo facciamo. Questo linguaggio e' quindi inerentemente ambiguo e non si puo' "aggiustare in nessun modo".
