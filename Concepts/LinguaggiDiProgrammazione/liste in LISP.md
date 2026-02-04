![[Pasted image 20260204120029.png]]
Ogni lista e' costruita a partire da una  **cons-cell** e puo' :
- essere una lista piatta, quindi solo composta da atom
- essere una lista composta da altre liste
- essere un mix di queste due cose
Ogni **cons-cell** e' una coppia di puntatori (_car,cdr_)
- car = il dato, cioe' la testa
- cdr = tutto il resto della lista, la coda, una freccia verso un altra lista/cella