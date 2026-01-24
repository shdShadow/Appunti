### Proprieta' 1
Se $L$ e' **ricorsivo**, il suo complemento sara':
- Costruisco una [[Macchine di Turing|Mdt]] che dira'
	- Si, se $w \in \overline{L}$ cioe' (se $w \not \in L)$
	- No, se $w \not \in \overline{L}$ cioe' (se $w \in L$)
	![[Pasted image 20260104112247.png]]
_Ok, ma come lo faccio?_ Andando a scambiare gli stati finali e non finali. E siccome anche la seconda macchina creata si ferma sempre, vuol dire che anche il complemento di un linguaggio e' **ricorsivo**.