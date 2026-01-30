# Concetti utilizzatti
- [[Espressioni Regolari]]
- [[Operazioni sui linguaggi]]
- [[Linguaggio]]
# Problema
Consideriamo l'ER:
$$ ((01)^* 10(0+1)^*)^* $$
L'ER e' un blocco grande, che puo' essere scomposto a sua volta in piccoli blocchettini:
- Il primo ha $(01)^*$ cioe' stringhe di composte da 01 usati 0 o piu' volte
- Poi in mezzo c'e' per forza 10
- Poi una qualsiasi stringa binaria oppure nulla
e le seguenti stringhe in tabella:

|            | $$ ((01)^* 10(0+1)^*)^* $$ | $(01)^*$             | 10 (parte fissa) | $(0+1)^*$ | Denotata?                                                                                  |
| ---------- | -------------------------- | -------------------- | ---------------- | --------- | ------------------------------------------------------------------------------------------ |
| 0101       |                            | 0?                   | 10               | 1         | No, non ho 01 iniziale                                                                     |
| 01000      |                            | 0?                   | 10               | 00        | No,Stesso problema                                                                         |
| 01011      |                            | 0?                   | 10               | 11        | Stesso problema                                                                            |
| 10111      |                            |                      | 10               | 111       | Si, in questo caso prima non ho nulla e va bene perche' posso prender anche 0 blocchettini |
| 101010     | 3 blocchi esterni          |                      | 10               |           | Si                                                                                         |
| 101101     |                            |                      | 10               | 1101      | Si                                                                                         |
| 0101100011 |                            | 2 copie di 01 = 0101 | 10               | 0011      | Si                                                                                         |

