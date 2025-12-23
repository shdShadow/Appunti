Si puo' vedere cio' nella [[Gerarchia di Chomsky]], ma in generale possiamo dire che non accettano tutti i [[CFL - Context Free Language]], a differenza dei [[Automi a Pila (PDA)|PDA]], pertanto sono meno potenti.
Ci aiuta questo teorema:
> [!theorem]
> Se L e' un [[linguaggi regolari| linguaggio regolare]], allora $L = L(P)$ per un [[Automi a Pila (DPDA)|DPDA]] P

Come i [[Automi a Pila (PDA)|PDA]], anche i DPDA possono accettare i due modi, pero' la questione si complica nel caso di [[Accettazione per pila vuota]]:
> [!theorem]
> Un linguaggio L e' N(P) per un DPDA se e solo se L ha la **proprieta' di prefisso([[Linguaggi prefix free|prefix free]])** ed e' L(P') per un DPDA P'

[[Perche' e' richiesto per i DPDA per pila vuota che il linguaggio sia prefix free]]?
> [!question] I DPDA per [[Accettazione per pila vuota|pila vuota]] accettano tutti i [[linguaggi regolari]]?
> NO, solo quelli [[Linguaggi prefix free|prefix free]]
