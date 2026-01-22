Considerando la [[formula generale di accesso in memoria]], questo metodo usa la parte di ADDRESS_OR_OFFSET e di %INDEX (e in realta' anche la parte di MULTIPLIER)
Un esempio:
```armasm
movl string_start(,%ecx,1), %eax
```
Inizia a _string_start_, aggiunge poi 1 * %ecx e carica il valore a tale indirizzo in %eax