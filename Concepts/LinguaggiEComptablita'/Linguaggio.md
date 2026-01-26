Un linguaggio L su un certo [[Alfabeto]] $\Sigma$ e' un **sottoinsieme di ([[Chiusura di Kleene]]) $\Sigma^*$
$$ L \subseteq \Sigma^*$$
## Sottoinsiemi particolari
- $\varnothing \subseteq \Sigma^*$
	- Attenzione che l'insieme vuoto e' l'insieme che non contiene nessuna stringa e non $\{\varepsilon\}$.
	- L'insieme vuoto e' sempre sottoinsieme di $\Sigma^*$
- $\Sigma^* \subseteq \Sigma^*$
## Esempio:
Sia $\Sigma = \{0,1\}$ quindi la [[Chiusura di Kleene]] sara':
$$\Sigma^* = \{\varepsilon,0,1,00,01,10,11,000,...\}$$
e il linguaggio L puo' essere:
$$ L = \{0,01,110,100101\}$$

# Descrizione di un linguaggio
Devo trovare un modo per descrivere un linguaggio, cioe' per identificare le stringhe che appartengono al linguaggio.
> Essendo la [[Chiusura di Kleene]] un insieme infinito, anche L potrebbe essere infinito.

Esistono 2 modi:
- _Per enumerazione esplicita:_ 
$$ L = \{0,1,01,10\} $$
	- Utile nel caso l'insieme sia finito, ci sono poche stringhe da elencare.
- _Per proprieta': sia tramite linguaggio naturale che tramite linguaggio matematico_
$$ L = \{w \ in \{0,1\}^* | w \text{ contiene un numero pari di 1} \}$$
	- Utile nel caso il [[Linguaggio]] non sia finito oppure le stringhe sono piu' complesse
	
## [[Problema di membership]]