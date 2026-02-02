# Concetti utilizzati
- [[Automa Minimo]]
- [[Algoritmo Riempi-Tabella + Esempio]]
- [[linguaggi regolari]]
- [[Espressioni Regolari]]
- [[Automa a Stati Finiti - DFA]]
# Problema
Consideriamo i due automi in figura:
![[Pasted image 20260202124236.png]]
Considero i due diagrammi come se fossero un unico DFA con stati che vanno da A ad E.
Prima di tutto vediamo quali stati sono distinguibili con la [[stringa]] vuota, cioe' coppie stato-finale/stato non finale

| B   | X   | ---- |      |      |      |
| --- | --- | ---- | ---- | ---- | ---- |
| C   |     | X    | ---- |      |      |
| D   |     | X    |      | ---- |      |
| E   | X   |      | X    | X    | ---- |
|     | A   | B    | C    | D    |      |
Ora seconda passata

| B   | X   | ---- |      |      |      |
| --- | --- | ---- | ---- | ---- | ---- |
| C   |     | X    | ---- |      |      |
| D   |     | X    |      | ---- |      |
| E   | X   |      | X    | X    | ---- |
|     | A   | B    | C    | D    |      |
Non ho aggiunto nessuna crocetta, quindi abbiamo finito.
Ora vediamo se i due stati iniziali sono equivalenti:
- siccome non "c'e' una crocetta" non sono distinguibili, pertanto sono equivalenti
quindi $A \approx C \to L = M$
