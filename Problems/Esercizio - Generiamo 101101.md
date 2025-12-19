---
tags:
  - evergreen
  - esercizio
course: Linguaggi e Computabilita'
---
# Problema
Consideriamo sempre la seguente grammatica che genera il linguaggio delle stringhe binarie palindrome:
$$ A \to 0 $$
$$ A \to 1 $$
$$ A \to \varepsilon $$
$$ A \to 0A0 $$
$$ A \to 1A1$$
il nostro obiettivo e' quello di generare la stringa 101101.
# Concetti utilizzati
[[Grammatica | Grammatiche]]
[[regole-di-pruduzione | regole di produzione]]
[[Come si genera una stringa?]]
[[passo di derivazione]]
# Soluzione
Parto dallo Start Symbol: 
$$ A $$
compio un passo di derivazione per generare i due "1" piu' esterni, applicando la regola 5
$$ A \Rightarrow_5 1A1 $$
compio un altro passo di derivazione e genero gli zeri subito dopo gli 1, applicando la regola 4
$$ 1A1 \Rightarrow_4 10A01$$
successivamente, genero gli 1, applicando la regola 5
$$ 10A01 \Rightarrow_5 101A101 $$
termino la derivazione, generando una $\varepsilon$ visto che ho raggiunto il mio obiettivo. Lo faccio con la regola 1
$$ 101A101 \Rightarrow_1 101101 $$

[[https://www.google.com]]
