In generale, la formula completa per un accesso in memoria e' la seguente:
$$
\text{ADDRESS\_OR\_OFFSET(\%BASE\_OR\_OFFSET,\%INDEX,MULTIPLIER)}
$$
e il calcolo diventa:
FINAL ADDRESS = ADDRESS_OR_OFFSET + %BASE_OR_OFFSET + MULTIPLIER * %INDEX

Ogni parametro e' opzionale e quelli indicati con % sono ovviamente [[registri]]
## Note
- il registro per INDEX puo' essere qualsiasi indirizzo general purpose