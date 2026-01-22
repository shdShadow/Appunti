Per questo tipo di accesso **NON** dobbiamo considere la [[formula generale di accesso in memoria]].
E' molto simile a [[direct addressing mode]], con la differenza che la usiamo per caricare valori direttamente nei registri.
```arm-asm
movl $12, %eax
```
Sto caricando il valore 12 nel registri %eax. Se non metti il "$", a questo punto e' come se stessi facendo [[direct addressing mode]], caricando in %eax il valore contenuto all'indirizzo 12