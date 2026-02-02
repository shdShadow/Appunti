Considerando la [[formula generale di accesso in memoria]], e' come se stessimo usando solo %BASE_OR_OFFSET. Carica un valore da un indirizzo indicato direttamente da un registro:
```armasm
movl (%eax), %ebx
```
