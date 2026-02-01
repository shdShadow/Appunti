---
course: Linguaggi e Computabilita'
chapter: "3"
tags:
  - esercizio
---
# Concetti utilizzatti
- [[Espressioni Regolari]]
 - [[Operazioni sui linguaggi]]
 - [[Linguaggio]]

# Problema
Consideriamo la seguente ER:
$$ (0+1)^* 0^* (01)^*$$

Notiamo subito che e' composta da 3 parti:
1) 0 o piu' sequenze in cui ci puo' essere 0 o 1
	1) $L((0+1)^*) = (L((0+1)))^* = (L(0+1))^* = (L(0) \cup L(1))^* = (\{0\} \cup \{1\})^* = (\{0,1\})^* = \{0,1\}^*$
		1) E $\{0,1\}^*$ e' l'insieme di tutte le stringhe binarie, quindi tutte le stringhe saranno denotate
2) Una sequenza di 0 o piu' copie di zeri
3) Una sequenza di 0 o piu' copie di 01
### Stringhe

|      | Cosa prendo | in ciascun | blocco?    | E' denotata? |
| ---- | ----------- | ---------- | ---------- | ------------ |
|      | $(0+1)^*$   | $0^*$      | $(01)^*$   |              |
| 001  |             | 0          | 01         | Si           |
| 001  | 0           |            | 01         | Si           |
| 1001 | 1001        |            |            | Si           |
| 1001 | 1           | 0          | 01         | Si           |
| 1001 | 10          |            | 01         | Si           |
| 0101 | 0101        |            |            | Si           |
| 0101 |             |            | 2 volte 01 | Si           |
| 10   | 1           | 0          |            | Si           |
| 10   | 10          |            |            | Si           |
