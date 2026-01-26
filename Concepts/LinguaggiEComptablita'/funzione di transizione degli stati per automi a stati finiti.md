---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
known: "False"
---
Per cio' che riguarda gli automi a stati finiti 
- [[Automa a Stati Finiti - DFA]]
- [[Automa a stati finiti - NFA]]
- ...
sono leggermente differenti tra i vari tipi di automa ma il funzionamento e' pressoche' lo stesso.
- [[funzione di transizione degli stati per DFA]] e [[estensione della delta per DFA]]
- [[funzione di transizione degli stati per NFA]] e [[estensione della delta per NFA]]
# Rappresentazione
La rappresentazione rimane pressoche' uguale per tutti i tipi di automi, con alcune osservazioni: [[Rappresentazione della delta per automi a stati finiti]]
- Nella "tabella", nel caso di NFA avremo delle celle con piu' di uno stato (quindi un insieme di stati) oppure con nessuno stato ($\varnothing$) essendo la funzione non totale
- Nel grafo, nel caso di non determinismo avremo ci potranno essere piu' percorsi per uno stesso caso oppure anche nessun percorso
