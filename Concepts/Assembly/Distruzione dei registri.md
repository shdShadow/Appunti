Quando chiamiamo una funzione, dobbiamo partire dall'assunto che qualsiasi cosa nei nostri registri verra' cancellata.
L'unico registro che effettivamente ha garanzia di non essere cancellato e' %ebp, tutti gli altri, %eax compreso, hanno la possibilita' di essere sovrascritti.
## Come salviamo i registri?
Se ci sono dei registri che dobbiamo salvare prima di chiamare una funzione, allora dobbiamo pushare i loro valori prima dei parametri della funzione.
Possiamo poi popparli in ordine inverso dopo avere fatto la pop di tutti i parametri.
> Anche se una funzione non modifica i registri, e' sempre buona cosa salvarli comunque, nel caso una futura funzione di quella funzione decida di farlo

