---
tags:
  - insight
  - draft
course: Linguaggi e Computabilita'
chapter: "5"
---
Data una [[Grammatica]] G, un passo di derivazione rappresenta l'applicazione di una delle regole di produzione su una variabile, ottenendo quindi delle [[Forme sentenziali|forme sentenziali]]
## Come funziona un passo di derivazione?
Per ogni forma sentenziale, si lasciano intatti i [[Simboli Terminali]], mentre si sceglie una gruppo di simboli uguale ad una delle teste delle [[regole-di-pruduzione]] che vogliamo applicare, e la sostituisce applicando la [[regole-di-pruduzione | regola di produzione]] da noi scelta. Non e' piu' possibile compiere passi di derivazione una volta che la forma sentenziale e' composta da soli _simboli terminali_.
## Come si indica?
Si indica tramite una **freccia doppia** ($\Rightarrow$) che rappresenta proprio una relazione binaria
> [!definition]
> $\Rightarrow$ e' una relazione binaria tra **[[Forme sentenziali]]**. Mi dice quali [[Forme sentenziali]] sono in relazione fra loro, quindi quali [[Forme sentenziali]] posso ottenere a partire da un altra forma sentenziale.
> Se scrivo $a \Rightarrow b$, sto dicendo che a e' in relazione con b e che io posso ottenere la [[Forme sentenziali|forma sentenziale]] b a partire da a
 
## Definizioni
La definizione dei passi di derivazione varia in base al tipo di grammatica:
- [[Passo di derivazione nelle CFG]]
- [[Passo di derivazione nei linguaggi contestuali]]

## Idea
Proprio il nome **passo di derivazione** lascia subito intendere come vengono svolte le generazioni di stringhe ([[Come si genera una stringa?]]), in quanto non lo facciamo "tutto in una volta", ma lo facciamo passo per passo

# Backlinks
- [[Come si genera una stringa nelle CFG]]
- [[derivazione leftmost e rightmost nelle CFG]]
- [[Forme sentenziali]]
- [[Grammatiche CF - CFG]]
