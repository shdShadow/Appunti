1) [[Operazioni sui linguaggi|Unione]] e' associativa e commutativa
2) [[Operazioni sui linguaggi|Concatenazione]] e' associativa ma **non** commutativa
3) $\varnothing$ e' l'identita' per l'[[Operazioni sui linguaggi|unione]]
	1) $\varnothing \cup L = L \cup \varnothing = l$
4) $\varepsilon$ e' l'identita' per la [[Operazioni sui linguaggi|concatenazione]]
	1) $\varepsilon \cdot L = L \cdot \varepsilon = L$
5) $\varnothing$ e' l'annichilatore per la [[Operazioni sui linguaggi|concatenazione]]
	1) $\varnothing \cdot L = L \cdot \varnothing = \varnothing$
6) Distrubutivita' sinistra della [[Operazioni sui linguaggi|concatenazione]] sull'[[Operazioni sui linguaggi|unione]]
	1) $L(M+N) = LM + LN$
7) Distributivita' destra della [[Operazioni sui linguaggi|concatenazione]] sull'[[Operazioni sui linguaggi|unione]] 
	1) $(M+N)L = ML + NL$
8) Idempotenza per [[Operazioni sui linguaggi|Unione]]
	1) $L + L = L$
9) $(L^*)^*$ = $L^*$
10) $\varnothing^*$ = $\varnothing$
11) $\varepsilon^*$ = $\varepsilon$
12) $L^+ = LL^*$
	1) $L^* = \varepsilon + L + LL + LLL + ...$
	2) $L^+ = L + LL + LLL + ...$
13) $L^* = L^+ + \varepsilon$
[[Esercizio4 - Data ER vedere che linguaggio e' denotato]]