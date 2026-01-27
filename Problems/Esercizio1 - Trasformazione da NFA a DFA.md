# Concetti utilizzati
- [[Automa a stati finiti - NFA]]
- [[stringa]]
- [[Alfabeto]]
- [[Computazione e non determinismo NFA]]
- [[trasformazione da NFA a DFA]]
- [[Automa a Stati Finiti - DFA]]
- [[funzione di transizione degli stati per automi a stati finiti]]
# Problema
![[Pasted image 20260127214001.png]]

> [!question] Quanti sono gli stati del DFA?
> Abbiamo visto che $Q_D = 2^{QN}$, quindi sarebbero $2^3 = 8. Pero' non e' detto tutti questi 8 stati siano raggiungibili. Per questo ci conviene scoprire quali stati sono raggiungibili mano mano, invece che scriverli tutti e 8. 

Compiliamo ora la [[funzione di transizione degli stati per DFA|delta]] del [[Automa a Stati Finiti - DFA|DFA]] passo per passo, vedendo per ogni sottoinsiemi di stati, dove va a finire il NFA

|              | 0            | 1         |
| ------------ | ------------ | --------- |
| $\to\{q_0\}$ | $\{q_0,q_1$} | $\{q_0\}$ |
- _Abbiamo scoperto dei sottoinsiemi nuovi?_ Si:
	- $\{q_0,q_1\}$
	Allora lo aggiungo come riga alla tabella
- _Questi sottoinsiemi sono finali_? No, nessuno di loro contiene uno stato finale al loro interno.

|               | 0             | 1              |
| ------------- | ------------- | -------------- |
| $\to\{q_0\}$  | $\{q_0,q_1$}  | $\{q_0\}$      |
| $\{q_0,q_1\}$ | $\{q_0,q_1\}$ | $\{q_0, q_2\}$ |
- $\delta_D(\{q_0,q_1\},0) = \delta_N(q_0,0) \cup \delta_N(q_1,0) = (q_0,q_1) \cup \varnothing = \{q_0,q_1\}$
 - $\delta_D(\{q_0,q_1\},1) = \delta_N(q_0,1) \cup \delta_N(q_2,1) = (q_0,q_2) \cup \varnothing = \{q_0,q_1\}$
 - _Abbiamo scoperto dei sottoinsiemi nuovi?_ Si:
	- $\{q_0,q_2\}$
	Allora lo aggiungo come riga alla tabella
- _Questi sottoinsiemi sono finali_? Si, perche' $q_2$ e' stato finale

|                | 0             | 1              |
| -------------- | ------------- | -------------- |
| $\to\{q_0\}$   | $\{q_0,q_1$}  | $\{q_0\}$      |
| $\{q_0,q_1\}$  | $\{q_0,q_1\}$ | $\{q_0, q_2\}$ |
| *$\{q_0,q_2\}$ | $\{q_0,q_1\}$ | $\{q_0\}$      |
- $\delta_D(\{q_0,q_2\},0) = \{q_0,q_1\}$
- $\delta_D(\{q_0,q_2\},1) = \{q_0\}$
- _Abbiamo scoperto dei sottoinsiemi nuovi?_ No
Allora abbiamo finito. Possiamo anche disegnare il diagramma, aiutandoci assegnando ad ogni sottoinsieme una lettera. Non e' obbligatorio, possiamo rappresentare lo stesso automa scrivendo i sottoinsiemi veri e propri al posto di A,B,C

|        | 0   | 1   |
| ------ | --- | --- |
| $\to$A | B   | A   |
| B      | B   | C   |
| *C     | B   | A   |
![[Pasted image 20260127214049.png]]

