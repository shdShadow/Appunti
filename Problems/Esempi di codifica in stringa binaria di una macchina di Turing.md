# Concetti usati
- [[Macchine di Turing]]
- [[Enumerazione delle stringhe binarie]]
- [[Codifica di MdT come stringhe binarie]]
# Problema
Consideriamo $M = (\{q_1, q_2, q_3,\} , \{0,1\}, \{0,1,B\}, \delta, q_1, B, \{q_2\}$)
Dove delta e' definita cosi':
- $\delta (q_1, 1) = (q_3, 0, R)$
- $\delta(q_3, 0) = (q_1, 1, R)$
- $\delta(q_3, 1) = (q_2, 0, R)$
- $\delta(q_3,B) = (q_3, 1, L)$
Codifichiamo ora la delta sapendo che ogni indice viene rappresentato con un certo numero di zeri corrispondente all'indice:
TODO: immagine

## Osservazioni
- Scansionare questa stringa con una [[Macchine di Turing|Mdt]] e' piuttosto semplice. Si gioca tutto andando a vedere il numero di zeri e se ci sono 4 "uni"
- Senza nemmeno sapere come e' fatta la macchina di Turing, riusciamo a capire che, per esempio, ci sono 3 stati, 3 simboli sul nastro,... guardando solo la codifica
- E' facile capire anche quale stringa data non codifica la macchina di Turing