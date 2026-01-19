---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: 7-8
known: "False"
---
# Definizione di linguaggio accettato
> [!definition]:
> Sia $M = (Q, \Sigma, \Gamma, \delta, q_0, B, F)$ una [[Macchine di Turing Deterministiche|MdT]]. Il linguaggio accettato da M e':
> $$L(M) = \{w \in \Sigma^* | q_0w \vdash^* \alpha p \beta, \text{ con } p \in F, \alpha \ e \ \beta \in \Gamma^*\}$$
> Quindi il linguaggio e' formato da tutte quelle stringhe per le quali esiste una computazione che parte dalla [[Descrizione istantanee delle MdT| configurazione iniziale]] e raggiunge una certa configurazione dove sul nastro c'e' qualcosa e $p$ e' uno stato finale dove la testina e' messa da qualche parte sul nastro.

# Come sono fatti i linguaggi accettati dalle Macchine di Turing?

Sono:
- di **tipo 0** come si vede nella [[Gerarchia di Chomsky#Tipo 0 Generali o Ricorsivamente Enumerabili]]
- generati da [[Grammatica|grammatiche]] con regole di questo tipo: [[regole di produzione di linguaggi ricorsivamente enumerabili]]
- Si chiamano **[[linguaggi ricorsivamente enumerabili| ricorsivamente enumerabili]]**


