# Definizione formale
Un _automa a pila_ (PDA) e' una settupla $P = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$:
- _Q_: e' un insieme finito e non vuoto di stati
- _$\Sigma$_: e' l'[[Alfabeto]] dei simboli di input usati per scrivere le stringhe date in input
- _$\Gamma$_: e' l'[[Alfabeto]] dei simboli dello stack 
- _$\delta$_: e' la [[funzione di transizione degli stati per automi a pila non deterministici|funzione di transizione]]
- _$q_0 \in Q$_: e' lo stato iniziale
- _$Z_0 \in \Gamma$_: e' il simbolo inizialmente presente nella pila
	- Si vede nell'immagine in [[Componenti di un Automa a Pila]]
	- [[funzione di transizione degli stati per automi a pila non deterministici#L'utilita' di Z0|Perche' Z0 serve?]]
- _$F \subseteq Q$_: e' l'insiemi degli stati finali o accettanti