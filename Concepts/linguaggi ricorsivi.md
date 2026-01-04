# Linguaggi ricorsivi
Dal punto di vista dell'[[Indecidibilita']] vengono detti decidibili
Sono una sottocategoria dei [[linguaggi ricorsivamente enumerabili]] e si differenziano nel modo in cui le [[Macchine di Turing]] li accettano/rifiutano
![[Pasted image 20260104112109.png]]
![[Pasted image 20260104112138.png]]
Quindi nei linguaggi ricorsivi, la [[Macchine di Turing|MdT]] si ferma **sempre**.
## Proprieta'
### Proprieta' 1
Se $L$ e' **ricorsivo**, il suo complemento sara':
- Costruisco una [[Macchine di Turing|Mdt]] che dira'
	- Si, se $w \in \overline{L}$ cioe' (se $w \not \in L)$
	- No, se $w \not \in \overline{L}$ cioe' (se $w \in L$)
	![[Pasted image 20260104112247.png]]
_Ok, ma come lo faccio?_ Andando a scambiare gli stati finali e non finali. E siccome anche la seconda macchina creata si ferma sempre, vuol dire che anche il complemento di un linguaggio e' **ricorsivo**.
### Proprieta'/Domanda 2
Se $L$ e' **[[regole di produzione di linguaggi ricorsivamente enumerabili|ricorsivamente enumerabile]]** ma non ricorsivo, esiste una MdT che accetta il suo complemento? E in quale gerarchia di linguaggio si trovano?
La macchina che accetta L e' la seguente:
![[Pasted image 20260104112440.png]]
Se fosse $\overline{L} \in RE \backslash RIC$, allora $\exists$ MdT $M_{\overline{L}}$ tale che:
![[Pasted image 20260104112515.png]]

Se queste due macchine esistono, allora io posso costruire una terza macchina M ([[Macchine di turing universali|universale]]) che prende in input: $cod(M_L)111cod(M_{\overline{L}})w$. 
![[Pasted image 20260104113154.png]]

Questa terza macchina M che simula $M_L$ e $M_{\overline{L}}$ , un passo di una poi un passo dell'altra,... :
- Se $w \in L$ prima o poi $M_L$ si ferma e accetta $\to$ M si ferma e accetta
- Se $w \not \in L$, allora $w \in \overline{L}$ quindi prima o poi $M_{\overline{L}}$ si ferma e accetta $\to$ M si ferma e rifiuta.
Abbiamo creato una macchina che **si ferma sempre** e accetta il linguaggio L.
- Siccome si ferma sempre, L allora non puo' essere ricorsivamente enumerabile, ma sara' al massimo ricorsivo
- Di conseguenza il suo complemento, per la proprieta' descritta prima, sara' anch'esso ricorsivo

> [!question] Ma quindi se L fosse ricorsivo, dove si trova il suo complemento?
> Siccome non puo' essere ricorsivo e nemmeno ricorsivamente enumerabile, allora si trova al di fuori, cioe' una gerarchia sopra, pertanto nella categoria di linguaggi "non ricorsivamente enu"
