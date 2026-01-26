E' un dispositivo A che prende in input una [[stringa]] qualsiasi di ([[Chiusura di Kleene]]) $\Sigma^*$ e poi risponde con "si", se la stringa appartiene ad L, oppure "no"

## Tipologie di automi
Di automi ci sono diverse categorie, che riconoscono poi diversi linguaggi come si vede nella [[Gerarchia di Chomsky]]:
- [[Automa a Stati Finiti - DFA]]
- [[Automa a stati finiti - NFA]]
# Sono di uguale potenza?
Si, [[Automa a stati finiti - NFA|NFA]] e [[Automa a Stati Finiti - DFA|DFA]] accettano gli stessi tipi di linguaggi, cioe' quelli di Tipo 3 nella [[Gerarchia di Chomsky]]: [[linguaggi regolari]]. Vedremo anche una trasformazione che ci permette di creare un [[Automa a Stati Finiti - DFA|DFA]] a partire da un [[Automa a stati finiti - NFA|NFA]]: [[trasformazione da NFA a DFA]]
# DFA e NFA
Un [[Automa a Stati Finiti - DFA|DFA]] puo' essere visto come un caso particolare di [[Automa a stati finiti - NFA|NFA]]. Questa cosa la si vede soprattutto con la rappresentazione in forma tabellare
- Un [[Automa a Stati Finiti - DFA|DFA]] in forma tabellare puo' essere banalmente reso un [[Automa a stati finiti - NFA|NFA]] andando a rendere ogni stato un **singoletto**, cioe' un insieme con un singolo stato
Quindi tutto quello che puo' fare un [[Automa a Stati Finiti - DFA|DFA]] lo puo' fare anche un [[Automa a stati finiti - NFA]], quindi sicuramente non sono meno potenti.
