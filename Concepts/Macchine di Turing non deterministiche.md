L'unica differenza che hanno con quelle deterministiche e': [[funzione di transizione delle Macchine di Turing#In caso di macchine di Turing non deterministiche]]
# [[Computazione di una macchina di Turing non deterministica]]
# Sono piu' potenti di quelle deterministiche?
Anche in questo caso la risposta e' NO. Ci aiuta un teorema:
> [!theorem]
> Se $M_N$ e' una [[Macchine di Turing non deterministiche]], esiste una [[Macchine di Turing Deterministiche]] $M_D$ tale che:
> $$ L(M_N) = L(M_D) $$
> **Idea/Dimostrazione**:
> Avremo una macchina 2 nastri:
> - nel primo avro' il nastro dell'input
> - e' una coda. All'inizio della computazione inserico $C_0$, cioe' la configurazione iniziale sul nastro poi:
> 	- fino a quando la coda non e' vuota, prendi il primo elemento della coda, lo cancelli e lo copi sopra (stato e il contenuto del nastro)
> 	- vai a vadere la delta e si vede quali configurazioni ha disponibili quella delta (nel caso di $C_0$ ho $C_1, C_2, C_3$). Le inserisco sulla coda
> 	- continuo su $C_1$, ...
> 	- Quando trova una configurazione accettante, si ferma e la stringa viene accettata
>
>In pratica, la [[Macchine di Turing]] deterministica, simula quella la [[Macchine di Turing non deterministiche]] visitando l'albero di computazione di quell'input in ampiezza, cioe' per livelli.



