Una **stringa** e' una sequenza **finita di simboli** presi da un certo [[Alfabeto]] $\Sigma$

## Lunghezza di una stringa
Data una certa [[stringa]] _w_, la sua lunghezza si indica con
$$|w|$$
per esempio: $w = 01101$ ha lunghezza $|w| = 5$.
La lunghezza di una stringa include un caso particolare, cioe' _la stringa con lunghezza = 0_. Viene chiamata **stringa vuota** e si puo' indicare con $\varepsilon$ oppure $\lambda$ a seconda dei testi.
Di conseguenza la loro lunghezza sara':
$$|\varepsilon| = 0 \ \ \ |\lambda|=0$$

## Concatenazione tra stringhe
Date $u,v \in \Sigma^*$ (sulla [[Chiusura di Kleene]] di un certo [[Alfabeto]]), la loro concatenazione e' $uv$ e' letteralmente la scrittura di $v$ subito dopo $u$
La concatenazione non e' commutativa pero' la lunghezza di due stringhe concatenate, in un modo o nell'altro, rimane sempre la stessa.
### Caso particolare: Stringa vuota
Concatenazione di una stringa $u \in \Sigma^*$ con la stringa vuota, fa rimanere invariata la stringa $u$:
- $u\varepsilon = u \ - \forall u \in \Sigma^*$
- $\varepsilon u = u \ - \forall u \in \Sigma^*$
### Esempio:
- $u = 010 \ \ \ v = 1101$
	- $uv = 0101101$
	- $vu = 1101010$ **Non commutativa!**
La loro lunghezza pero' e' sempre 7.
