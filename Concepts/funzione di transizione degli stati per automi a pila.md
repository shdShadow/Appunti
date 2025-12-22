---
course: Linguaggi e Computabilita'
tags:
  - evergreen
chapter: "6"
---
In generale la $\delta$ ha questa definizione:
$$ \delta: Q \times (\Sigma \ \cup \{\varepsilon\} ) \times \Gamma \to 2^Q \times \Sigma^* $$
Quindi:
- Accetta in input una **tripla** dove:
	1.  Il primo elemento e' lo stato attuale dell'automa nel controllo finito ([[Componenti di un Automa a Pila]])
	2. Il secondo elemento e' un simbolo in input preso dalla stringa in input (possibilmente anche la stringa vuota visto che e' come un [[Epsilon-NFA]], e' un [[Epsilon-mossa]])
	3. Il terzo elemento e' l'elemento in cima allo stack in questo instante
- In output:
	1. Un insieme di stati perche' opera come un [[Epsilon-NFA]]
	2. Una stringa di simboli di $\Gamma$ che:
		1. Puo' essere $\varepsilon$, quindi fa la [[pop nei pda]]
		2. Puo' essere lunga un solo carattere oppure piu' di un carattere e quindi fare una [[push nei pda]]
		
# Osservazioni:
> [!caution]
> La funzione di transizione consuma sia il simbolo in input che il simbolo in cima allo stack.

2. Il codominio della [[funzione di transizione degli stati per automi a pila]], non sarebbe finito, perche' l'insieme delle stringhe di $\Gamma^*$, pero' nella definizione degli [[Automi a Pila (PDA)]], io devo dire che **e' finito**. Devo quindi scegliere un insieme finito di coppie stato-stringa
3. L'[[Automi a Pila (PDA)]] e' NON DETERMINISTICO, quindi genero un insieme di coppie stato-stringa come negli [[Epsilon-NFA]]. Basta quindi che 1 coppia accetti per far si che la stringa in input venga accettata.

# L'utilita' di Z0
Z0 serve proprio perche' la $\delta$ vuole SEMPRE in input un simbolo di $\Gamma$. Se non ci fosse $Z_0$, e la pila fosse vuota, a quel punto la $\delta$ non potrebbe piu' andare avanti.
