- Ha sempre un solo controllo finito
- Un certo numero di nastri. Per esempio:
	- Primo che si usa come nastro di input per $w$
	- Secondo come ausiliario
	- Terzo come ausiliario
	- ... fino al k-esimo
- Ci sara' una testina indipendente per ogni nastro.
![[Pasted image 20251229233734.png]]
La [[funzione di transizione delle Macchine di Turing]] sara' definita nel seguente modo:
$$ \delta: Q \times \Gamma \times \Gamma \times \dots \Gamma \to Q \times (\Gamma \times \{L, R\}) \times \dots \times (\Gamma \times \{L,R\})$$
perche':
- La delta accettera' lo stato attuale della macchine e tutti i simboli attualmente puntati dalle testine sui nastri. Ci saranno quindi tanti "$\times \Gamma$" quanti sono i nastri
- Ritornera' poi lo stato in cui il controllo finito dovra' andare (Q) e tutte le copie simbolo-direzione per ogni nastro.
## Perche' si usano?
Perche' semplificano le dimostrazioni nel caso si vogliano usare le [[Macchine di Turing Deterministiche]]. 

# Sono piu' potenti delle macchine di Turing a singolo nastro?
No, e ci aiuta un teorema:
> [!theorem]
> Ogni linguaggio accettato da una [[Macchine di Turing Deterministiche|Mdt]] multinastro e' **[[linguaggi ricorsivamente enumerabili|ricorsivamente enumerabile]]**

## Osservazione
- L'equivalenza vale solo se il numero di nastri e' finito.
## Dimostrazione
Data una [[Macchina di Turing multinastro]] io posso costruire, con le dovute modifiche al controllo finito, una simulazione con un [[Macchine di Turing Deterministiche]] a singolo nastro.
Penso al nastro singolo come fatto a fette e per esempio, con 4 fette, rappresento una macchina a due nastri
![[Pasted image 20251229234031.png]]

Ogni colonna e' una singola cella della mia simulazione, quindi avra' 4 celle, dove ogni cella conterra' un simbolo di $\Gamma$ .
Si usano il doppio di "fette" rispetto ai nastri, perche' ogni riga di numero dispari conterra' solo in una cella "X", che funge da testina puntando direttamente alla cella sotto. Dall'immagine vediamo che:
- La prima X punta ad $A_i$ indicando appunto che sarebbe la prima testina del primo nastro, che punta ad un certo simbolo $A_i$
- Allo stesso modo fa la seconda X per il secondo nastro simulato 
La macchina continuera' poi andare avanti e indietro cercando le varie X e operando di conseguenza.
Siccome la macchina multinastro e' simulabile da una macchina di turing a singolo nastro, allora accetta la stessa categoria di linguaggi.