# Concetti usati
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema 1
Creare la CFG per il seguente linguaggio $L = \{0^n 1^n | n \geq 1\}$
$$ L = \{01, 0011, 000111,...\} $$
Analizziamo il linguaggio ricorsivamente:
- Base: $01 \in L$
- Passo: se $w \in L$ allora anche $0w1 \in L$
A questo punto creare la grammatica non e' difficile:
- T = {0,1}
- V = {S}
- S = S
le regole di produzione sono:
- $S \to 01$
- $S \to 0S1$

# Problema 2 (Variante)
Creare la CFG per li seguente linguaggio $L = \{0^n1^n | n \geq 0\}$
$$ L = \{\varepsilon, 01, 0011, 000111, ...\} $$
non cambia molto da prima, le regole di produzione sono:
- $S \to \varepsilon$
- $S \to 0S1$
