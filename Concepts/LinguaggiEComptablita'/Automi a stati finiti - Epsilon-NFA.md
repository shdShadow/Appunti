---
course: Linguaggi e Computabilita'
chapter: "2"
tags:
  - evergreen
known: "False"
---
# Intro
Sono un altro modello di [[Automi a stati finiti]] non deterministico.
Sono un [[Automa a stati finiti - NFA]] + [[Epsilon-mossa]]
![[Pasted image 20260127110432.png]]
con un caso della [[funzione di transizione degli stati per automi a stati finiti]] che avra' un caso del tipo:
$$ \delta(p, \varepsilon) = \{q\} $$
> L'automa e' in grado di spostarsi da uno stato all'altro anche senza consumare nessun simbolo

![[Pasted image 20260127110639.png]]
L'automa e' anche [[Computazione e non determinismo NFA|non deterministico]] quindi la $\delta$ puo' anche andare in un insieme di stati
![[Pasted image 20260127110811.png]]
Il nondeterminismo non e' limitato alle sono [[Epsilon-mossa|epsilon mosse]] ma ci possono essere anche diversi casi della [[funzione di transizione degli stati per automi a stati finiti]] per diversi simboli di input:
$$ \delta(p,a) = \{r\}$$
$$\delta(p, \varepsilon) = \{q\}$$
quindi, se per esempio avessimo in input w = abcda, il mio automa puo' scegliere ([[Computazione e non determinismo NFA]]) se utilizzare la [[Epsilon-mossa]] oppure se consumare "a" e andare in r.

# [[Definizione formale di Automa a Stati Finiti]]

# Esempi/Esercizi
- [[Esempio - Primo esempio di Epsilon NFA]]
