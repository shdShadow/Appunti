---
tags:
  - esercizio
course: Linguaggi e Computabilita'
chapter: "5"
---
# Concetti utilizzati
[[Grammatica | Grammatiche]]
[[regole-di-pruduzione | regole di produzione]]
[[Come si genera una stringa nelle CFG]]
[[passo di derivazione]]
[[derivazione leftmost e rightmost nelle CFG]]
[[derivazione in zero o piu' passi]]

Si consideri il linguaggio delle stringhe con parentesi bilanciate $L_{bal}$ con il seguente alfabeto/insieme dei terminali:
$$ T = \{(, )\}$$
l'analisi di tale linguaggio e':
- BASE : $\varepsilon \in L_{bal}$
- PASSO: se $w \in L_{bal}$ allora anche $(w) \in L_{bal}$
		- Se $w_1, w_2 \in L_{bal}$ allora anche $w_1w_2 \in L_{bal}$
> L'ultima regola significa semplicemente che se due stringhe sono bilanciate, allora anche la loro concatenazione rimane una stringa bilanciata.

La grammatica di questo linguaggio e' la seguente:
$$ B \to (B) \text{e' il caso del passo di derivazione (w)}$$
$$ B \to BB $$
$$ B \to \varepsilon $$

Proviamo ora a generare la stringa ()(())
$$ B \Rightarrow BB $$
concentriamo ora solo sulla prima B, e generiamo le due parentesi
$$ \Rightarrow(B)B $$a questo punto la prima parte della stringa e' terminata, possiamo ora "cancellare la B", andando ad applicare la regola che mi permette di generare $\varepsilon$
$$ \Rightarrow ()B $$
continuiamo la derivazione
$$ \Rightarrow ()(B)$$
$$ \Rightarrow ()((B)) $$
e come prima consumo la B 
$$ \Rightarrow ()(()) $$
ho quindi dimostrato che posso ottenere la stringa ()(()) con questa grammatica con un certo numero di passi derivazione. Stiamo quindi parlando di [[derivazione in zero o piu' passi]]. Lo indichiamo quindi cosi':
$$ B \Rightarrow^* ()(()) $$
## Note:
Nella derivazione sopra, ho deciso di effettuare una derivazione leftmost, in quanto vado a sostituire sempre la variabile piu' a sinistra. Avrei potuto fare tranquillamente una derivazione rightmost e ottenere la stessa stringa