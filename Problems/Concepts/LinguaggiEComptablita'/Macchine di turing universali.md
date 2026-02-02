---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "False"
---
$\exists$ MdT U ("universale"), che _e' in grado di simulare qualsiasi altra [[Macchine di Turing|Macchina di Turing]]_
![[Pasted image 20260104113637.png]]

> U si comporta _esattamente_ come M sull'input $w$

E' una macchina che ha 2 input, ed entrambi gli input sono stringhe binarie:
- La [[Codifica di MdT come stringhe binarie|codifica]] di M e' una stringa binaria
- L'input w e' una stringa binaria
Queste due stringhe binarie, le possiamo combinare in un unica stringa:
- cod(M) 111 $w \in \{0,1\}^*$

## Come e' fatta una [[Macchine di Turing|MdT]] universale?
E' composta da 4 nastri:
1. Nastro di input. Ci va la stringa composta prima: cod(M)111w
2. E' il nastro della computazione di M. Sarebbe il nastro che userebbe una M "normale" per la sua computazione
3. Contiene una rappresentazione dello stato attuale della macchina M
4. E' un nastro ausiliario
![[Pasted image 20260104113727.png]]


## Come funziona la computazione di una macchina universale?
- Per prima cosa viene scritta cod(M)111w sul primo nastro
- Siccome w deve essere mandata in input alla macchina M, viene scritta sul secondo nastro
- Si va vedere nella [[Codifica di MdT come stringhe binarie|codifica]] se esiste una caso della [[funzione di transizione delle Macchine di Turing|delta]] che corrisponde allo stato attuale e al simbolo puntato attualmente sul nastro di M
	- Si cambia quindi lo stato sul terzo nastro
	- Si scrive qualcosa sul secondo nastro
	- Si sposta la testina sul secondo nastro
- Si continua a vedere se esistono casi della delta. Quando la macchina si ferma, va a vedere se la macchina M si e' fermata in uno stato finale
	- Se e' cosi', allora anche la macchina universale si ferma, si sposta in uno stato finale e accetta.
	- Se invece M non accetta, anche U rifiuta spostandosi in uno stato non finale con nessun caso della delta definito
	- Se M va avanti all'infinito, anche U va avanti all'infinito

## Quale e' il linguaggi accettato dalle macchine universali?
E' detto **linguaggio universale** ed e':
$$ L_U = \{cod(M)111w\in\{0,1\}^*| w \in L(M)\} $$
![[Pasted image 20260104113801.png]]
Il linguaggio universale e' un [[linguaggi ricorsivamente enumerabili]] ma **non ricorsivo**.