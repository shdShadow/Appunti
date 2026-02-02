Supponiamo di aver ottenuto due [[linguaggi regolari]] espressi sotto forma di [[Espressioni Regolari]].  A questo punto posso costruire un [[Automi a stati finiti - Epsilon-NFA|Epsilon-NFA]] con [[trasformazione da ER a Epsilon-NFA]] e poi un [[Automa a Stati Finiti - DFA]] con [[trasformazione da epsilon NFA a DFA]]. Quindi:

Dati due [[Automa a Stati Finiti - DFA]]:
- $A_L = (Q_L, \Sigma, \delta_L, q_L, F_L)$
- $A_M = (Q_M, \Sigma, \delta_M, q_M,F_M)$
accettano lo stesso [[linguaggi regolari|linguaggio]]? (L = M?)
## Step 1
Costruisco un nuovo [[Automa a Stati Finiti - DFA|DFA]] che chiamo $A = (Q_L \cup Q_M, \Sigma, \delta, q_L, F_L \cup F_M)$ dove:
- $\delta$ si comporta come $\delta_L$ su $A_L$ e si comporta come $\delta_M$ su $A_M$
- come stato iniziale scelgo uno dei due stati iniziali quindi $q_L$ oppure $q_M$
## Step 
Applico l'[[Algoritmo Riempi-Tabella + Esempio]] su $A$ e se
$$
q_M \approx q_l
$$
allora $L = M$ altrimenti $L \neq M$. Vuol dire che per ogni [[stringa]] possibile, se io parto da $q_L$, $A_L$ accetta sse partendo da $q_M$ la stessa [[stringa]] mi porta in uno stato finale di $A_M$.

# Esempi 
- [[Esempio di equivalenza tra linguaggi regolari con algoritmo riempi-tabella]]
- 