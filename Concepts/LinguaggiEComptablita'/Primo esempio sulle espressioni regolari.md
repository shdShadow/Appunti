# Concetti utilizzatti
- [[Espressioni Regolari]]
e si ricorda:
Quando abbiamo una chiusura di Kleene si applica dall'espressione che si ottiene partendo dal carattere direttamente a sinistra da "*" fino a chiudure la piu' piccola espressione regolare valida*
# Problema/Esempi
- L(($\textbf{01})^*$) = $(L((\textbf{01})))^*$ = $(L(\textbf{01}))^*$ = $(\{01\})^*$ = $\{01\}^*$ che e' uguale a $\{01\} \cdot \{01\} ...$
- $L(\textbf{01}^*)$ = $L(\textbf{0})L(\textbf{1}^*)$ = $\{0\} \cdot (L(1))^*$ = $\{0\} \cdot (\{1\})^*$ = $\{0\} \cdot \{1^*\}$ che e' uguale a $\{0\} \cdot \{1,11,111,1111,...\} = \{0,01,011,0111,...\}$ 
	- Questo ci fa capire come opera la chiusura di Kleene nelle espressioni regolari e quanto servano le parentesi

Scriviamo ora l'ER che descrive le stringhe composte da 0 e 1 alternati:
- La prima ER che c'e' sopra non si allontana piu' di tanto, solo che tutte le stringhe iniziano con 0 e terminano con 1
- Allora, nello stesso modo possiamo creare tutte le stringhe con 0 e 1 alternati che iniziano con 1 e terminano con 0: $L((\textbf{10})^*) = \{\varepsilon, 10, 1010, 101010, ...\}$

> [!question] Ci basta fare l'[[Operazioni sui linguaggi|unione]] su questi due?
> No, perche' avrei solo stringhe di lunghezza pari

Consideriamo allora quest'altra espressione:
- $L(\textbf{0}(\textbf{10})^*) = L(\textbf{0})L((\textbf{10})^*) = \{0\} \cdot \{\varepsilon,10,1010,...\} = \{0,010,01010,...\}$ 
	- Queste sono stringhe di lunghezza dispari che iniziano con 0 e terminano con 0
- $L(\textbf{1}(\textbf{01})^*) = L(\textbf{1})L((\textbf{01})^*) = \{1\} \cdot \{\varepsilon,01,0101,...\} = \{1,101,10101,...\}$
	- Stringhe di lunghezza dispari che iniziano con 1 e terminano con 1
Facciamo l'unione delle quattro ER che ci servono:
$$(\textbf{01})^* + (\textbf{10})^* + \textbf{0}(\textbf{10})^* + \textbf{1}(\textbf{01})^*$$
> [!question] E' l'unica ER che denota il linguaggio delle stringhe composte da 0 e 1 alternati?
> No, un altra possibilita' e':
> $$ (\varepsilon + \textbf{1})(\textbf{10})^*(\varepsilon + \textbf{0})$$
> Vediamo che linguaggi denotano i singoli blocchettini:
> 1. $L(\varepsilon + \textbf{1}) = L(\varepsilon) + L(\textbf{1}) = \{\varepsilon\} \cup \{1\} = \{\varepsilon, 1\}$
> 2. $\{\varepsilon, 01, 0101, ...\}$
> 3. $\{\varepsilon, 0\}$
> Quindi le stringhe sono composti da 3 parti dove:
> - nelle prima parte si sceglie o la stringa vuota o l'1
> - Poi ci sono stringhe di lunghezza pari che iniziano con 0 e tutte terminano con 1
> - Se vogliamo farla finire con zero, nel pezzo successivo scelgo lo 0, altrimenti $\varepsilon$


> 