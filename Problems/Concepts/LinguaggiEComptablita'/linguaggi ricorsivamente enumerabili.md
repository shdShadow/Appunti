---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
known: "False"
---
![[Pasted image 20260104111950.png]]
Sono linguaggi accettati dalle [[Macchine di Turing Deterministiche]] con [[Grammatica|Grammatiche]] aventi regole di questo tipo: [[regole di produzione di linguaggi ricorsivamente enumerabili]]

Dal punto di vista dell'[[Indecidibilita']], essi vengono chiamati **semi-decidibili**. (perche' non sempre la [[Macchine di Turing|Mdt]] si ferma.)

Esiste poi una sottocategoria dei [[linguaggi ricorsivamente enumerabili]]: i [[linguaggi ricorsivi]]

## Definizioni utili
> [!definition]
> Una **proprieta'** dei [[linguaggi ricorsivamente enumerabili]] e' un insieme di [[linguaggi ricorsivamente enumerabili]]

> [!definition]
> Una **proprieta'** di [[linguaggi ricorsivamente enumerabili]] e' **Banale/triviale** se e' _l'insieme vuoto_ (nessun linguaggio RE ha quella proprieta') oppure se e' _l'insieme di tutti i linguaggi RE_ (tutti i linguaggi RE hanno quella proprieta')

> Sia $L_E$ che $L_{ne}$ viste in [[Macchine di Turing che accettano il linguaggio vuoto]] sono **proprieta' non banali**.

> [!theorem] Teorema di Rice 
> Ogni proprieta' non banale dei linguaggi RE e' **indecidibile**
> - Le proprieta' riguardano il comportamento delle MdT
> - "indecidibile" nel senso del libro, cioe' che e' RE ma non ricorsivo, oppure non e' RE

