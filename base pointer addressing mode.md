Simile all'[[indirect addressing mode]], eccetto che aggiunge un valore costante all'indirizzo nel registro.
> Per esempio, se avessimo un record dove is valore che vogliamo leggere e' 4 byte dentro il record e abbiamo l'indirizzo in %eax, possiamo leggere il valore corretto nel seguente modo:
> ```armasm
> movl 4(%eax), %ebx
> ```


