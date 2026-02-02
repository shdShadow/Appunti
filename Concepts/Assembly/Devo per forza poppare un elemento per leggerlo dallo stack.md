No, posso usare il registro %esp in [[indirect addressing mode]], per esempio:
```armasm
movl (%esp), %eax
```
in questo modo leggo cioe' che c'e' in cima allo stack senza popparlo.

Attenzione a non fare
```armasm
movl %esp, %eax
```
perche' andrei a salvare l'indirizzo contenuto in %esp in %eax, non l'elemento in cima allo stack.

Non solo limitato a leggere solo la cima dello stack, ma posso anche vedere cio' che sta sotto tramite [[base pointer addressing mode]]
```armasm
movl 4(%esp), %eax
```
