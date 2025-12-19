# Concetti usati
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema
Sia $L = \{a^ncb^n | n \geq 1\}$
$$ L = \{acb, aacbb, aaacbbb, ...\} $$

le regole di produzione sono:
- $S \to acb$
- $S \to aSb$
e il resto e':
- V = {S}
- T = {a,b,c}
- S = S
# Problema: Variante
Sia $L = \{a^ncb^n | n \geq 0\}$
$$L = \{c, acb, aacbb,...\} $$
cambia poco da prima nelle regole di produzione:
- $S \to c$
- $S \to aSb$

