Se $L,M$ sono [[linguaggi regolari]] sull'[[Alfabeto]] $\Sigma$, $L \cap M \in REG$? Si, vediamo la dimostrazione
## Dimostrazione tramite [[Espressioni Regolari]]
L'intersezione $L \cap M$ per le leggi di De Morgan, puo' essere riscritta cosi': $\overline{\overline{L} \cup \overline{M}}$. 
In particolare prendo:
- $L \in REG \to \overline{L} \in REG$
- $M \in REG \to \overline{M} \in REG$ 
Che abbiamo dimostrato in [[proprieta' di chiusura rispetto al complemento]]
Poi:
- $\overline{L}, \overline{M} \in REG \to \overline{L} \cup \overline{M}$
grazie a [[proprieta' di chiusura rispetto all'unione]], e infine rifacciamo il complemento:
- $\overline{L} \cup \overline{M} \to \overline{\overline{L}\cup\overline{M}} = L \cap M \in REG$ 
Abbiamo quindi dimostrato che allora anche l'intersezione di 2 [[linguaggi regolari]] e' un linguaggio regolare, pertanto vuol dire che esiste un [[Automi a stati finiti|automa a stati finiti]] che lo accetta.
Vediamo questo automa composto da:
- 2 automi: 
	- $A_L$ che accetta il linguaggio L
	- $A_m$ che accetta il linguaggio M
- Entrambi prendono in input la stringa $w \in \Sigma^*$ e possono:
	- Accettare e restituirci un bit = 1
	- Rifiutare e darci 0
- Ci sara' una porta logica AND che ovviamente dira' se una [[stringa]] appartiene all'intersezione solo se entrambi gli automi restituiscono 1.
Negli automi non esistono pero' le porte logiche e questo automa verra' implementato tramite [[automa prodotto]]

# [[automa prodotto]]
