---
dg-publish: true
---
# Storia
Ideato nel 1954 come _Fortran 0_, poi progettato effettivamente come _Fortran 1_ per il computer [[IBM 704]].
> E' stato il primo linguaggio creato indipendentemente dalla macchina. I primi linguaggi come [[Il primo linguaggio mai creato - Plankalkul|Plankalkul]], [[Short Code]] e [[Speedcoding]] erano tutti dipendenti dall'architettura della macchina

# [[Indipendenza dei linguaggi dalla macchina]]
# Scelte progettuali
l'[[IBM 704]] era un computer all'avanguardia per quei tempi (supportava [[registri]] indice e numeri in virgola mobile). Cio' porto all'idea di linguaggi [[Indipendenza dei linguaggi dalla macchina#Compilazione|Compilati]] (come lo sara' poi il [[Fortran]]) piuttosto che [[Indipendenza dei linguaggi dalla macchina#Interpretazione|Interpretati]].
# [[Caratteristiche fondamentali di Fortran]]

## Perche' compilato e non interpretato
Perche' con l'hardware di quei tempi era impossibile nascondere il costo computazionale dell'interpretazione.
Tradotto in italiano:
> Il processo di traduzione da linguaggio di alto livello a [[Codice Macchina]] sarebbe stato troppo lento e ne avrebbero sofferto le prestazioni del programma.

## [[Ambiente di sviluppo]] e dominio applicativo
L'[[Ambiente di sviluppo]] di [[Fortran]] era piuttosto scarno, come del resto era il panorama della programmazione negli anni '50
> Oltre a compilatori, [[linker]] e [[assembler]] che almeno permettevano al programma di eseguire non c'era nient'altro:

- I computer erano piccoli e inaffidabili (e poco potenti).
	- Vedo che il [[Fortran]] ha tenuto conto di questa cosa qui: [[Caratteristiche fondamentali di Fortran]], nella parte dove citiamo la mancanza di memorizzazione dinamica.
- Non esisteva ancora nessuna [[metodologia programmativa]] oppure nessun strumento di programmazione (Ex: IDE)
- I [[compilatore|compilatori]] erano anch'essi molto basici, non c'era nessun tipo di ottimizzazione del programma al di fuori di quella fatta manualmente dal programmatore stesso, per questo motivo l'efficienza della macchina era la **preoccupazione piu' importante**.
[[Fortran]] era un linguaggio molto incentrato su operazioni matematiche. Il suo dominio applicativo era quindi quello delle _applicazioni scientifiche_.

## Un esempio di [[Fortran]]
Proviamo a leggere questo esempio anche tenendo a mente le [[Regole implicite di Fortran]]:
> IF (espressione) etichetta_negativa, etichetta_zero, etichetta_positiva      
```fortran
X = 15.0      
Y = 10.0       C     Per testare se X > Y, si calcola X-Y    
IF (X - Y) 10, 20, 30
10 PRINT 101      
   GO TO 40
20 PRINT 102     ! X = Y (X-Y zero)      
   GO TO 40  
30 PRINT 103    
40 CONTINUE
```
