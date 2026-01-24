---
known: "False"
---
# Informalmente
Dobbiamo salvare tre cose:
- Lo stato attuale
- La porzione di nastro usata (quella che si trova in mezzo a soli blank a destra e sinistra)
- La posizione della testina sul nastro
# Formalmente 
> [!definition]
> Una descrizione istantanea (ID) e':
> $$ X_1X_2 ... X_{i-1}qX_1X_{i+1}...X_n$$
> Sembra poca roba ma racchiude tutto. Vediamo come:
> - $X_1...X_n$ e' la porzione di nastro utilizzata da salvare
> - $q$ e' lo stato attuale della macchina
> - La posizione di $q$ e' importante perche' rappresenta la posizione della testina.
> 	- Punta al simbolo che sta direttamente a destra

## Osservazione:
Assumiamo che $Q \cap \Gamma = \varnothing$, altrimenti diventerebbe un casino distinguere tra caratteri del nastro e stati della [[Macchine di Turing Deterministiche|Macchina di Turing]]
# Configurazione iniziale
La configurazione iniziale di una macchina di turing e' sempre $q_0w$, cioe' la testina punta sempre al primo simbolo della stringa w sul nastro.
