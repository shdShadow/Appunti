---
course: Linguaggi e Computabilita'
chapter: 7-8
tags:
  - evergreen
---
Esistono un gran numero di problemi detti **indecidibili**, cioe' che non esiste un algoritmo in grado di risolverli.

## Esempi:

- [[Problema Ciao, mondo]]

## Quanti problemi non sono risolvibili?
Sappiamo che un programma puo' essere rappresentato come un numero naturale: **sequenza di bit**.
$$PROGRAMMA \to \mathbb{N}$$
Supponiamo che questo programma prenda in input x e ritorni y
![[Pasted image 20260104111841.png]]

Questo programma cosa fa?
$$ P \text{ calcola } f_p: N \to N $$
- Ma quante sono le funzioni calcolabili? $|\mathbb{N}|^{\mathbb{N}}$
- quanti sono i programmi?: $|\mathbb{N}|$ (se un programma e' un numero naturale...)
Da questa semplice affermazione si vede come la maggior parte delle funzioni sia in realta' non calcolabile da un programma.

## Esiste un modo piu' semplice per le dimostrazioni di problemi non risolvibili?
Si, a volte si preferisce effettuare delle [[Riduzioni per problemi di indecidibilita]]

# Linguaggi indecidibili
> [!question] Cosa vuol dire "linguaggio indecidibile?"
> Vuol dire che non esiste nessuna [[Macchine di Turing|MdT]] in grado di accettarlo
> 

Grazie alle [[Macchine di Turing#Problemi di Indecidibilita' espressi secondo le macchine di Turing]] con la [[Codifica di MdT come stringhe binarie]], e' possibile determinare quali linguaggi sono indecidibili. Un esempio e' il [[Esempio - Linguaggio di diagonalizzazione|linguaggio di diagonalizzazione]]

