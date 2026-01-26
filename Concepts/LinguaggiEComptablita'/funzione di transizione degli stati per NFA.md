E' definita cosi':
$$ \delta: Q \times \Sigma \to 2^Q $$
quindi a differenza di [[funzione di transizione degli stati per DFA]], ritorna un insieme di stati e non piu' un singolo stato.
> [!warning]
> Altra differenza fondamentale con [[funzione di transizione degli stati per DFA]], e' che la funzione **non deve essere per forza TOTALE**. Un automa puo' finire la computazione:
> - perche' la stringa viene consumata totalmente e accettata da una delle copie dell'automa
> - perche' la stringa viene consumata totalmente ma rifiutata da ogni copia dell'automa
> - perche' non e' possibile piu' applicare casi della $\delta$ 