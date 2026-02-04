# Intro
Il linguaggio si basa sull'elaborazione di liste di valori _simbolici_ cioe' praticamente stringhe.
E' stato creato per la ricerca nel campo dell' intelligenza artificiale per elaborare _dati simbolici_:
- Elaborazione di dati in liste piuttosto che array
- Calcolo _simbolico_ piuttosto che numerico
# Caratteristiche
Lisp aveva solo due tipi di dato:
- **atomi**: valori numerici o letterali
- **[[liste in LISP|liste]]** i cui elementi possono essere atomi o [[liste in LISP|liste]]
Il codice e i dati hanno lo stesso formato (f a b c d) puo' essere una funzione o un dato/[[liste in LISP|lista]] a seconda di come viene interpreto.
La sintassi era basata sul [[lambda calcolo]]:
- _trasparenza referenziale_: un modo per svincolarsi dall'idea di stato tipico dell'architettura di Von Neumann
- Il calcolo e' dato dall'applicazione di funzioni agli argomenti
	- Le funzioni non posso toccare valori globali, anzi non esiste un ambito globale. Le funzioni prendono in input dei parametri, operano su tali parametri e poi c'e' un valore di output della funzione.
	- Questo e' cio' che si intende per _trasparenza referenziale_, quindi non esiste un ambito globale ma solo ambiti locali di funzione.
- Niente assegnamento, ne variabili e neanche cicli. Solo [[ricorsione]] ed espressioni condizionali che fungono da IF (un espressione condizionale e' tipo l'IF inline di Java)
- Tutto alla fine e' un calcolo di espressioni, dentro espressioni, ... fino alla produzione di un risultato
# Dialetti
[[LISP]] ha diversi dialetti, cioe' linguaggi che adottano gli stessi principi di LISP ma con sintassi diverse. Alcuni esempi sono [[Scheme]] e [[Common Lisp]][[Julia]]