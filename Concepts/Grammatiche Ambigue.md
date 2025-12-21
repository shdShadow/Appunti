Vediamo un esempio che usa sempre la [[Grammatiche CF - CFG|CFG]] delle espressioni che prova a derivare la stringa $E + E * E$ in due modi diversi.
La grammatica aveva queste regole di produzione
- $E \to I | E+ E | E* E | (E)$
- $I \to a| b | Ia | Ib | I0 | I1$

Primo modo:
$$E \Rightarrow E + \underline{E} \Rightarrow E + E * E$$
![[Pasted image 20251222004521.png]]

Secondo modo:
$$ E \Rightarrow \underline{E} + E \Rightarrow E + E * E$$
![[Pasted image 20251222004607.png]]
## Quale e' il problema?
Il problema e' che sono sintatticamente uguali. Ma:
1. Abbiamo E * E e poi sommiamo E, cosa che noi siamo abituati a fare nelle espressioni 
2. Abbiamo E + E e poi moltiplichiamo per E
Ma per un parser sono sintatticamente uguale e indistinguibili fra loro perche' non abbiamo modo di specificargli una priorita' tra le operazioni
## Si puo' risolvere?
Si (a volte), ma per prima cosa dovremmo capire se la grammatica e' ambigua e:
> [!caution]
> Non esiste nessun algoritmo che data una grammatica mi dice se tale grammatica e' ambigua oppure no. E' [[indecidibilita'|indecidibile]]

Ma NON ESISTE NEMMENO UN ALGORITMO CHE SIA IN GRADO DI "METTERE A POSTO" UNA GRAMMATICA AMBIGUA

---
# Definizione
Una [[Grammatiche CF - CFG|CFG]] e' ambigua, se per almeno una [[Forme sentenziali|forma sentenziale]] esiste piu' di un [[Alberi Sintattici|albero sintattico]] corrispondente.
# Teorema
Per ogni [[Grammatiche CF - CFG|CFG]] G = (V,T,P,S) e per ogni $w \in T^*$, $w$ ha due [[Alberi Sintattici]] distinti se e solo se ha 2 [[derivazione leftmost e rightmost nelle CFG|derivazioni leftomost]] distinte a partire da esiste
## Note:
- Il fatto che una stringa abbia 2 derivazioni diverse NON e' un problema (derivazione sx e dx sono diverse ma non causano ambiguita')
- Ma se ha 2 derivazioni sx diverse, quello e' un problema perche' il teorema ci dice che allora esistono 2 [[Alberi Sintattici]] diversi e cio' causa ambiguita' e cio' vuol dire che ad un certo punto viene applicata una regola diversa rispetto all'altra derivazione che pero' mi da la stessa stringa