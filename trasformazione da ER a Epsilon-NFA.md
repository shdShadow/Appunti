> [!question] Perche' [[Automi a stati finiti - Epsilon-NFA|Epsilon-NFA]] e non DFA?
> Perche' e' piu' semplice e nel caso volessimo ottenere un [[Automa a Stati Finiti - DFA|DFA]] ci basta fare la [[trasformazione da epsilon NFA a DFA]] che abbiamo gia' visto

Abbiamo definito le [[Espressioni Regolari]] in modo [[Definizione induttiva delle espressioni regolari|induttivo]], ci sono casi base, passi induttivi,...
Questa costruzione funziona allo stesso modo, cioe' in modo induttivo
# Funzionamento
Costruiamo dei moduli tali che:
1) Esiste esattamente **uno** stato accettante
2) Nessun arco entrante nello stato iniziale (del modulo)
3) Nessun arco uscente dallo stato finale (del modulo)
Vedremo che:
- Con i _casi base_ costruiamo effettivamente i moduli
- Con i passi di induzione invece combiniamo i moduli fra loro (ogni passo induttivo richiama un operazione di [[Operazioni sui linguaggi]])

_BASE:_
1) Se $R = \varepsilon$ e quindi $L(R) = \varepsilon$ allora abbiamo il seguente modulo: TODO: immagine modulo 1
2) Se $R = \varnothing$ e quindi $L(R) = \varnothing$ allora abbiamo il seguente modulo
	TODO: immagine modulo 2
3) Se $R = a$ e quindi $L(R) = \{a\}$ allora abbiamo il seguente modulo:
	TODO: immagine modulo 3

_PASSO:_
1) se $R = S+T$ ([[Operazioni sui linguaggi#Unione|Unione]] di due sottoespressioni) e quindi $L(R) = L(S) \cup L(T)$ allora abbiamo il seguente modulo 
TODO: immagine modulo
2) se $R = ST$ (concatenazione) e quindi $L(R) = L(S)L(T)$ allora abbiamo il seguente modulo:
TODO: immagine modulo
3) se $R = S^*$ e quindi $L(R)=(L(S))^*$ allora abbiamo il seguente modulo 
TODO: immagine modulo
4) se $R = (S)$ e quindi $L(R) = L(S)$ allora l'[[Automa a stati finiti - Epsilon NFA]] che accetta le stringhe denotate da R e' lo stesso che accetta le stringhe denotate da S

# Esempi/Esercizi
- [[Esempio - Trasformazione da ER a Epsilon-NFA]]
- 