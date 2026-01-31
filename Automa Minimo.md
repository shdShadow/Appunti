---
chapter: "4"
---
Dato un [[Automa a Stati Finiti - DFA|DFA]] $A = (Q, \Sigma, \delta, q_0, F)$, l'**automa minimo** $B$ e' un [[Automa a Stati Finiti - DFA|DFA]] che tra tutti quelli che accettano $L(A)$ contiene il **piu' piccolo numero possibile di stati**.

Per trovare tale automa minimo c'e' un algoritmo che ci permette di passare da A a B
Si basa su una nozione di [[equivalenza tra stati]]. E tramite quella relazione, cio' che fa l'[[Automa Minimo]]
e' prendere come stati le [[classi di equivalenza]] andando a far collassare tutti quegli stati che sono fra loro [[equivalenza tra stati|equivalenti]].

# Algoritmo Iterativo
L'algoritmo mi permettera' di trovare tutti quegli stati che sono fra loro distinguibili. 
Questo algoritmo e' un algoritmo **iterativo** che pero' si basa su una proprieta' **ricorsiva** la quale si base sulla nozione di [[equivalenza tra stati]]
## Proprieta' ricorsiva
- _BASE:_ se $p \in F$ e $q \not \in F$ allora **sono distinguibili**
	- Questo perche' sono distinguibili dalla [[stringa]] vuota perche': $\hat\delta(p,\varepsilon) = p \in F$ mentre $\hat\delta(q,\varepsilon) = q \not \in F$ quindi non hanno lo stesso comportamento, pertanto sono distinguibili
- _PASSO_: Se per $a \in \Sigma$, gli stati $r = \delta(p,a)$ e $s = \delta(q,a)$ sono **distinguibili** ($r \not \approx s)$ allora anche $p,q$ sono distinguibili (cioe' $p \not \approx q$)
	![[Pasted image 20260131172010.png]]
	cioe': 
	- $r \not \approx s \to \exists w \in \Sigma^* \ t.c \  \hat\delta(r,w) \in F \ e \ \hat\delta(s,w) \not \in F \text{ o viceversa }$
	- $p \not\approx q \to \exists w \in \Sigma^* \ t.c \ \hat\delta(p, aw) = \hat\delta(r,w) \in F \ e \ \hat\delta(q,aw)=\hat\delta(s,w) \not \in F \text{ o viceversa }$

## Algoritmo: Riempi Tabella
Applichiamo questo algoritmo al seguente automa:
![[Pasted image 20260131172606.png]]
La tabella in realta' e' solo la parte inferiore di una matrice delimitata dalla diagonale principale.
1) Primo step: Applichiamo il caso base della proprieta' espressa sopra, quindi grazie alla stringa vuota andiamo a vedere quali stati sono distinguibili
	1) Semplicemente vediamo quali coppie stato_finale-stato_non_finale ci sono

| B   |       | ----  |       |       |      |      |      |      |
| --- | ----- | ----- | ----- | ----- | ---- | ---- | ---- | ---- |
| C   | **X** | **X** | ----  |       |      |      |      |      |
| D   |       |       | **X** | ----- |      |      |      |      |
| E   |       |       | **X** |       | ---- |      |      |      |
| F   |       |       | **X** |       |      | ---- |      |      |
| G   |       |       | **X** |       |      |      | ---- |      |
| H   |       |       | **X** |       |      |      |      | ---- |
|     | A     | B     | **C** | D     | E    | F    | G    |      |
2) Secondo Step: Consideriamo tutte le coppie di stati della tabella in cui non c'e' ancora una crocetta, vado a vedere se esiste un simbolo d'ingresso che mi porta ad un'altra coppia di stati che ho gia' scoperto essere distinguibili

| B   | X     | ----  |      |      |      |      |      |      |
| --- | ----- | ----- | ---- | ---- | ---- | ---- | ---- | ---- |
| C   | X     | X     | ---- |      |      |      |      |      |
| D   | **X** | **X** | X    | ---- |      |      |      |      |
| E   |       | **X** | X    | X    | ---- |      |      |      |
| F   | X     | X     | X    |      | X    | ---- |      |      |
| G   | X     | X     | X    | X    | X    | X    | ---- |      |
| H   | X     |       | X    | X    | X    | X    | X    | ---- |
|     | A     | B     | C    | D    | E    | F    | G    |      |
Vediamo qualche coppia: (X-Y) dove x e' sulle colonne e Y e' sulle righe:"
- AB
	- leggendo 0: AB -> BG
	- leggendo 1: AB -> **FC**, che ho gia' scoperto essere distinguibili
- AD:
	- leggendo 0: AB -> **BC**
- BD:
	- leggendo 0: BD -> **GC**
- AE:
	- leggendo 0: AB -> BH
	- leggendo 1: AB -> FF
- BE:
	- leggendo 0: BE -> GH
	- leggendo 1: BE -> **CF**
- DE:
	- leggendo 0: DE -> **CH**
- FA: 
	- leggendo 0: FA -> **BC**
- BF:
	- con 1: BF -> **CG**
...

Dopo facciamo un altra passata, andando a vedere nei vari buchi anche loro sono distinguibili oppure no. Se non trovo nessun' altra coppia di stati distinguibili, allora ho finito. 
Provando a fare un altra passata notiamo che non scopriamo nulla. Quindi annotiamo gli stati equivalenti:
- {A,E}
- {B,H}
- {D,F}
- {C}
e queste sono le [[classi di equivalenza]].