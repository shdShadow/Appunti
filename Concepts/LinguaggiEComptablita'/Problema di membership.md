Data un [[stringa]], il nostro obiettivo e' quello di capire se tale [[stringa]] appartiene oppure no ad un [[Linguaggio]]. La verifica dell'appartenza e' cio' che viene detto **membership problem** e siccome la risposta puo' essere solo "si" o "no", e' sicuramente un [[problema di decisione]]. In realta', un [[Problema di membership]] rappresenta qualunque [[problema di decisione]], e risolvere il [[Problema di membership]] significa risolvere anche il [[problema di decisione]]. 
- [[Equivalenze tra membership e decisione]]
Per fare cio' avremo bisogno di:
- Un metodo finito per descrivere il [[Linguaggio]], o meglio un metodo per generare le stringhe del [[Linguaggio]]. Parliamo di [[Grammatica]]
- Un metodo finito per riconoscere su un [[stringa]] appartiene oppure no al [[Linguaggio]] dato. Parliamo di [[Automi a stati finiti]]
- TODO: immagine dell'automa
A seconda di quanto e' complicato il linguaggio (le stringhe del linguaggio), possono essere piu' o meno complicate le [[Grammatica|grammatiche]] che lo generano e gli [[Automi a stati finiti]] che riconoscono le stringhe del [[Linguaggio]]. Cio' si vede nella [[Gerarchia di Chomsky]].