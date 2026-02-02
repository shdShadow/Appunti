---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "2"
known: "False"
---
E' un dispositivo A che prende in input una [[stringa]] qualsiasi di ([[Chiusura di Kleene]]) $\Sigma^*$ e poi risponde con "si", se la stringa appartiene ad L, oppure "no"

## Tipologie di automi
Di automi ci sono diverse categorie, che riconoscono poi diversi linguaggi come si vede nella [[Gerarchia di Chomsky]]:
- [[Automa a Stati Finiti - DFA]]
- [[Automa a stati finiti - NFA]]
- [[Automi a stati finiti - Epsilon-NFA]]
# Sono di uguale potenza? - Linguaggi Accettati
## NFA e DFA
Si, [[Automa a stati finiti - NFA|NFA]] e [[Automa a Stati Finiti - DFA|DFA]] accettano gli stessi tipi di linguaggi, cioe' quelli di Tipo 3 nella [[Gerarchia di Chomsky]]: [[linguaggi regolari]]. Vedremo anche una trasformazione che ci permette di creare un [[Automa a Stati Finiti - DFA|DFA]] a partire da un [[Automa a stati finiti - NFA|NFA]]: [[trasformazione da NFA a DFA]]. 
> Aggiungere il non determinismo quindi non aumenta la potenza degli automi a stati finiti

Ci aiuta anche un teorema
### Teorema
Se $D = (Q_D, \Sigma, \delta_D, \{q_0\}, F_D)$ e' il [[Automa a Stati Finiti - DFA|DFA]] costruito dall'[[Automa a stati finiti - NFA|NFA]] $N = (Q_N, \Sigma, \delta_N, q_0, F_N)$ mediante la [[trasformazione da NFA a DFA|costruzione per sottoinsiemi]] allora $L(D) = L(N)$
#### Osservazioni
- Un [[Automa a Stati Finiti - DFA|DFA]] puo essere visto come un caso particolare di [[Automa a stati finiti - NFA|NFA]]. I DFA accettano tutti e soli i [[linguaggi regolari]] quindi gli NFA accettano almeno tutti i [[linguaggi regolari]] (per ogni [[linguaggi regolari|linguaggio regolare]] esiste un NFA che lo accetta)
- Ogni [[Automa a stati finiti - NFA|NFA]] puo' essere [[trasformazione da NFA a DFA|trasformato]] in un [[Automa a Stati Finiti - DFA|DFA]] equivalente. cioe' che accetta lo stesso linguaggio. Per ogni linguaggio accettato da un [[Automa a stati finiti - NFA|NFA]] esiste un [[Automa a Stati Finiti - DFA|DFA]] che lo accetta e cio' significa che tutti i linguaggi accettati dagli NFA sono gli stessi dei DFA, quindi sono [[linguaggi regolari]]
- Se $|Q_N| = n$, allora $|Q_D| = |2^{Q_N}| = 2^n$ 
	- E' un numero esponenziale, quindi cresce molto rapidamente. E' per questo che non ci conviene scrivere tutti gli stati subito durante la trasformazione
## Epsilon NFA e NFA/DFA
Anche gli [[Automi a stati finiti - Epsilon-NFA|epsilon NFA]] sono di uguale potenza e non accettano una classe di linguaggi piu' ampia rispetto a quella dei [[linguaggi regolari]]. E come abbiamo visto la [[trasformazione da NFA a DFA]] esiste anche una [[trasformazione da epsilon NFA a DFA]]
# Perche' usare gli NFA/Epsilon NFA piuttosto che i DFA?
Per una questione di comodita' di progettazione. Gli NFA sono piu' comodi per ragionare su problemi che richiederebbero un gran numero di stati nei DFA. Tanto per avere una comparazione:
![[Pasted image 20260127203844.png]]
![[Pasted image 20260127204025.png]]
# Relazione tra DFA e NFA
Un [[Automa a Stati Finiti - DFA|DFA]] puo' essere visto come un caso particolare di [[Automa a stati finiti - NFA|NFA]]. Questa cosa la si vede soprattutto con la rappresentazione in forma tabellare
- Un [[Automa a Stati Finiti - DFA|DFA]] in forma tabellare puo' essere banalmente reso un [[Automa a stati finiti - NFA|NFA]] andando a rendere ogni stato un **singoletto**, cioe' un insieme con un singolo stato
Quindi tutto quello che puo' fare un [[Automa a Stati Finiti - DFA|DFA]] lo puo' fare anche un [[Automa a stati finiti - NFA]], quindi sicuramente non sono meno potenti.
