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
Consideriamo l'ER:
$$ ((01)^*10(0+1)) $$ Ho un blocco grande che puo' essere preso 0 o piu' volte e composto da diversi blocchi:
- Il primo blocco mi permette di prendere la stringa 01, 0 o piu' volte
- Il secondo mi da una stringa "10" che deve essere sempre presente
- Il terzo mi obbliga ad aggiungere o 0 o 1

|            | $((01)^*10(0+1))$ | $(01)^*$ | 10                           | (0+1)                     | Denotata?                                                  |
| ---------- | ----------------- | -------- | ---------------------------- | ------------------------- | ---------------------------------------------------------- |
| 0101       |                   | 0?       | 10                           | 1                         | No, mi manca 01 all'inizio                                 |
| 01000      |                   | 0?       | 10                           | 00?                       | No, mi manca 01 all'inizio e' ho uno 0 di troppo alla fine |
| 01011      |                   | 0?       | 10                           | 11?                       | No, mi manca 01 all'inizio e ho un 1 di troppo alla fine   |
| 10111      |                   |          | 10                           | 1                         | No                                                         |
| 101010     | 2 Blocchi         |          | 10                           | 1                         | No, con il secondo blocco non riesco a scrivere 010        |
| 101101     | 2 Blocchi         |          | 1 Blocco: 10<br>2 Blocco: 10 | 1 Blocco: 1<br>2 blocco:1 | Si                                                         |
| 0101100011 |                   | 0101     | 10                           | ?                         | No.                                                        |
