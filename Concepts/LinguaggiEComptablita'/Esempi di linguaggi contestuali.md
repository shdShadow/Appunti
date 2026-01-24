---
tags:
  - evergreen
course: Linguaggi e Computabilita'
chapter: "5"
known: "True"
---
## Esempio 1:
$L = \{a^nb^nc^n | n \geq 1\}$
Si nota subito la differenza:
contariaramente con quello detto [[Grammatiche CF - CFG#Nota|qui]]: dove viene detto che le grammatiche CF si riconoscono dal fatto che bisogna generare lo stesso numero di oggetti di due oggetti contemporaneamente, nel nostro esempio ne abbiamo **3** e con una [[Grammatiche CF - CFG|CFG]] e' impossibile farlo.

La grammatica di questo linguaggio contestuale e' la seguente:
$$G = (\{S,B,C,X\}, {a,b,c}, P, S)$$
con le [[regole-di-pruduzione]] che sono:
1. $S \to aSBC$
2. $S \to aBC$ 
3. $CB \to XB$ **NON CONTEXT FREE! Due variabili in Testa!**
4. $XB \to XC$ **NON CF**
5. $XC \to BC$ **NON CF**
6. $aB \to ab$ **NON CF**
7. $bB \to bb$ **NON CF**
8. $bC \to bc$ **NON CF**
9. $cC \to cc$
> [!example] 
> In questo esempio si vede chiaramente il **contesto**. Se prendiamo in considerazione la regola 3, ci sta dicendo che possiamo sostiuire la C se succeduta da una B (quindi la B e' il **contesto**).

Si riguardi questa osservazione per capire cosa e' il contesto e come influisce sul tipo di grammatica: [[Passo di derivazione nelle CFG#Osservazione sul contesto]]
### Esempio di derivazione:
1. 
$$CB \Rightarrow_3 XB \Rightarrow_4 XC \Rightarrow BC$$
2. 
$$ S \Rightarrow_2 aBC \Rightarrow_6 abC \Rightarrow_8 abc $$
3. 
$$ S \Rightarrow_1 aSBC \Rightarrow_2 aaBCBC$$
sono nell' ordine sbagliato pero', non esistono regole che trattano BC, ma solo CB oppure aB\bB. Siccome il nostro obiettivo e' quello di avere aabbcc, ordiniamole cosi':
$$ \Rightarrow_{3,4,5}aaBBCC \Rightarrow_6 aabBCC \Rightarrow_7 aabbCC \Rightarrow aabbcC \Rightarrow_9 aabbcc $$
## Esempio 2
$$ L = \{a^nb^mc^nd^m\ | n,m \geq 1\} $$
Si nota subito come e' proprio il caso che cercavamo di evitare nelle [[Grammatiche CF - CFG]] oppure [[CFL - Context Free Language]], perche' gli "esponenti" si incrociano.
Ci sono due modi per generare questo linguaggio: 
Il primo:
1. Abbiamo 2 linguaggi nidificati come nei [[CFL - Context Free Language]], ma poi scambiamo le variabili come ci servono
2. partiamo da $S \Rightarrow^* a^nb^mD^mC^n$, dopo l'idea e' che D diventano d e C diventano c, pero' sono fuori posizione, quindi effettuiamo degli scambi come fatto nel [[Esempi di linguaggi contestuali#Esempio 1|esempio 1]].
3. $\Rightarrow^* a^nb^mC^nD^m \Rightarrow^* a^nb^mc^nD^m \Rightarrow^* a^nb^mc^nd^m$ 
4. La sua grammatica e': $G = (\{S,X,C,D (+Z)\}, \{a,b,c,d\}, P,S)$
5. Con le seguenti regole di produzione:
	- $S \to aSC | aXC$
	- $X \to bXD | bD$
	- (scambio) $DC \to CD$ ovvero $DC \to DZ, DZ \to CZ, CZ \to CD$
	- $bC \to bc$
	- $cC \to cc$
	- $cD \to cd$
	- $dD \to dd$
6. Vediamo anche un esempio di [[derivazione di una stringa in linguaggi contestuali]]: Per n = 2, m = 3 -> aabbbccddd
	1. $$S \Rightarrow aSC \Rightarrow aaXCC \Rightarrow aabXDCC \Rightarrow aabbXDDCC \Rightarrow aabbbDD\underline{DC}C \Rightarrow aabbbD\underline{DC}\underline{DC} \text{ scambio } \Rightarrow aabbbDCDDC \Rightarrow aabbb\underline{DC}\underline{DC}D \Rightarrow^* aabbbC\underline{DC}DD \Rightarrow aabbbCCDDD \Rightarrow aabbbcCDDD \Rightarrow aabbbccDDD \Rightarrow aabbbccdDD \Rightarrow aabbbccddD \Rightarrow aabbbccddd$$
Il secondo modo:
7. Lo facciamo concatenando 2 linguaggi come nei [[CFL - Context Free Language]], poi scambiando le variabili in modo contestuale come ci serve:
8. $S \Rightarrow^* a^nC^nB^md^m \Rightarrow^* a^nB^mC^nd^m \Rightarrow^8 a^nb^mC^nd^m \Rightarrow^* a^nb^mc^nd^n$ 
9. La sua grammatica e': $G = (\{S,X,Y,B,C\}, \{a,b,c,d\}, P,S)$
10. Le cui regole di produzione sono:
	- $S \to XY$
	- $X \to aXC | aC$ 
	- $Y \to BYd | Bd$
	- $CB \to BC$
	- $aB \to ab$
	- $bB \to bb$
	- $bC \to bc$
	- $cC \to cc$
11. Esempio di derivazione [[derivazione di una stringa in linguaggi contestuali]] della stessa di prima aabbbccddd
	1. $$S \Rightarrow XY \Rightarrow aXCY \Rightarrow aaCCY \Rightarrow aaCCBYd \Rightarrow aaCCBBYdd \Rightarrow aaCCBBBddd \Rightarrow^* \text{ scambi } aaBBBCCddd \Rightarrow aabBBCCddd \Rightarrow aabbBCCddd \Rightarrow aabbbCCddd \Rightarrow aabbbcCddd \Rightarrow aabbbccddd$$
