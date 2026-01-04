---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
---
# Intro
Le macchine di Turing rappresentano il modello matematico fondamentale della computazione. A differenza degli automi a pila, hanno un nastro infinito che funge sia da memoria che da supporto per l'input.
[[Introduzione alle Macchine di Turing in modo informale]]
# Fondamenti e funzionamento
Per comprendere come opera una MdT, bisogna analizzare come interagisce con il nastro e come cambia stato:
- [[Definizione formale delle macchine di Turing]]
- [[Come leggono l'input le MdT]]
- [[funzione di transizione delle Macchine di Turing]]
# Accettazione e Linguaggi
- [[Come accettano le Mdt]]
- [[Cosa succede alla stringa in input nelle MdT]]
- [[Linguaggi accettati dalle Macchine di Turing]]
- [[Macchine di Turing che accettano il linguaggio vuoto]]
- [[Macchine di turing universali|linguaggio universale]]

# Descrizione della Computazione
- Lo stato attuale della macchina di Turing e' definita dalla sua configurazione: [[Descrizione istantanee delle MdT]]
- Il passaggio tra le varie [[Descrizione istantanee delle MdT|configurazioni]] e' possibile grazie ai [[Passo di computazione di una Macchina di Turing|passi di computazione]]
- Sequenze di zero o piu' passi, sono concettualmente simili a quello visto con gli [[Automi a Pila]] in [[Computazione in zero o piu' passi di un automa a Pila]]
- Accetta una stringa se la computazione termina, cioe' se la [[funzione di transizione delle Macchine di Turing|delta]] non e' definita, in uno stato finale: [[Come accettano le Mdt]]
# Varianti ed Estensioni
Sebbene esistano versioni piu' complesse delle MdT, tutte hanno la stessa **potenza computazionale** del modello base:
## Deterministico vs Non-Deterministico
Possono avere piu' transizioni possibili per ogni coppia stato-simbolo.
[[Macchine di Turing non deterministiche]]
Alla fine, una macchina di Turing deterministica la si puo' vedere come un caso particolare di una [[Macchine di Turing non deterministiche|MdT non deterministica]].

## [[Macchina di Turing multinastro]]
Dispone di k nastri e k testine indipendenti e viene simulata da una mdt a nastro singolo dividendo il nastro in fette

## Macchine di Turing che puo' stare ferma
Variante in cui la testi puo' anche non spostarsi. Simulabile con una sequenza di movimenti R e poi L.

# [[Macchina di Turing Ristretta]]

# [[Macchine Multistack]]

# [[Macchine di turing universali]]

# Problemi di [[Indecidibilita']] espressi secondo le macchine di Turing
Per farlo, dobbiamo farlo per passi, non e' cosi' semplice.
1. [[Enumerazione delle stringhe binarie]]
2. [[Codifica di MdT come stringhe binarie]]
