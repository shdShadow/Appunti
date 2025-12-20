# Concetti utilizzati
- [[Grammatiche CF - CFG]]
- [[Grammatica]]
- [[CFL - Context Free Language]]
# Problema
Sia $L = \{a^nxc^{n+m}y^hz^kd^{m+h} | n,m,h,k \geq 0\}$
Per Prima cosa dobbiamo spezzare le somme senza creare incroci
$$ a^nxc^nc^my^hz^kd^hd^m $$
I cui sottolinguaggi sono:
- X = $a^n...c^n$
- $Y = c^m...d^m$
- $Z = y^h...d^h$
- $W = z^k$
Scriviamo ora le [[regole-di-pruduzione]]:
- $S \to XY$
- $X \to aXc | x$
- $Y \to cYd | Z$
- $Z \to yZd | W$
- $W \to zW | \varepsilon$
# Note:
- Nonostante l'esercizio sembri complesso, in realta' rimangono sempre nidificazioni e concatenazioni di linguaggi.

