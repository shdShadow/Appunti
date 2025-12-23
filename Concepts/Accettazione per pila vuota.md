---
model:
---
# Definizione 
Sia $P = (Q,\Sigma, \Gamma, \delta, q_0, Z_0, F)$ un [[Automi a Pila (PDA)|PDA]]/[[Automi a Pila (DPDA)|DPDA]]. Il linguaggio accettato da P per pila vuota e':
$$ N(P) = \{w \in \Sigma^* | (q_0, w, Z_0) \vdash^* (q, \varepsilon, \varepsilon) \text{ con }, \text{ qualche } q \in Q\} $$
Quindi e' l'insieme di stringhe che a partire dalla configurazione iniziale, arrivano
- In un certo stato qualsiasi (non per forza finale)
- la stringa viene consumata completamente
- e' la pila e' **fisicamente vuota**, anche $Z_0$ deve essere rimosso.
## Osservazione sugli stati finali
Siccome non vengono usati, spesso nella definizione dell'[[Automi a Pila]] l'insieme F degli stati finali viene proprio omesso.


