---
course: Linguaggi e Computabilita'
chapter: "6"
tags:
  - evergreen
  - insight
known: "True"
---
Come abbiamo gia' fatto in [[derivazione in zero o piu' passi]], la si definisce in modo induttivo.

Definiamo $\vdash_p^* (\vdash^*)$ in modo induttivo come:
- BASE: $I \vdash^* I$ per ogni $ID \ di \ I$ (ID e' la [[Configurazione di un automa a Pila|descrizione istantanea]])
	- Mi sta dicendo che da I posso raggiungere I in 0 o piu' passi per qualsiasi descrizione istantanea di I. (Ovvio, ci sono gia'...)
- PASSO: $I \vdash^* J$ se $\exists ID \ K$ tale che $I \vdash K \ e \ K \vdash^* J$
	- se esiste una descrizione istantanea K, che mi permette di raggiungere K da I in un solo passo, e poi raggiungere J da K in un certo numero di passi (chiamata ricorsiva)
# Teorema 1:
Se $P = (Q,\Sigma, \Gamma, \delta, q_0, Z_0, F)$ e' un [[Automi a Pila]], e $(q, x, \alpha) \vdash^* (p, y, \beta$) allora $\forall w \in \Sigma^*$ e $\forall \gamma \in \Gamma^*$ vale che :
$$ (q, xw, \alpha\gamma) \vdash^* (p, yw, \beta\gamma)$$
## Analisi
Analizziamo prima di tutto l'ipotesi: abbiamo:
$$(q, x, \alpha) \vdash^* (p, y, \beta)$$
cio' vuol dire che abbiamo una computazione che:
- a partire dallo stato q va in p (che puo' essere anche lo stesso stato)
- la stringa di input x diventa y, cioe' x puo' rimanere invariata oppure puo' essere la stessa x dove pero' vengono rimossi 1 o piu' caratteri
- la pila $\alpha$ ora e' diventata $\beta$, quindi puo' essere anche la stessa $\alpha$, possono essere stati aggiunti dei simboli, ... ([[push nei pda]], [[pop nei pda]])
Allora io posso:
$$ (q, xw, \alpha\gamma) \vdash^* (p, yw, \beta\gamma)$$
- aggiungere dopo x una certa stringa $w$ e dopo $\alpha$ altri simboli sulla pila, e comunque
- la computazione mi porta come prima in p con $y$ e $\beta$ piu quello che mi rimane cioe' $w$ e $\gamma$
	- Questo perche' l'[[Automi a Pila (PDA)]] non riesce mai a vedere piu' avanti del primo simbolo in input e del simbolo in cima alla pila. Per questo la computazione rimane invariata e il risultato della [[funzione di transizione degli stati per automi a pila non deterministici]] e' sempre lo stesso.
## Osservazione:
In generale il contario di questo teorema non vale, cioe' non e' detto che se $(q, xw, \alpha\gamma) \vdash^* (p, yw, \beta\gamma)$ allora vale 
$$ (q, x, \alpha) \vdash^* (p, y, \beta)$$
- per cio' che riguarda le stringhe in input, il teorema in questa forma potrebbe ancora valere, perche' come detto prima l'[[Automi a Pila]] vede solo il primo simbolo in input pertanto w non viene toccata durante la computazione 
- pero' per cio' che riguarda la pila non e' detto che io riesca a computare senza i simboli di $\gamma$, e' possibile che io necessiti di togliere alcuni simboli di $\gamma$ dalla pila per poi rimetterli.
## Teorema 2:
Se $P = (Q,\Sigma, \Gamma, \delta, q_0, Z_0, F)$ e' un [[Automi a Pila]], e $(q, xw, \alpha) \vdash^* (p, yw, \beta)$ allora vale che:
$$(q, x, \alpha) \vdash^* (p, y, \beta)$$

In questo caso vale perche':
- la stringa funziona allo stesso modo di prima
- la pila viene trasformata (nella sua interezza) da $\alpha \ a\  \beta$ e quindi ho a disposizioni tutti i simboli della pila per la mia computazione.