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