Abbiamo:
- **movl**, che ci permette di muovere un intera word
- **movb**, muove un byte
	- Attenzione, i [[registri]] sono da 32 bit, pertando non possiamo usare _movb_ su un intero registro, ma possiamo farlo solo su una parte
	- Per esempio, se vogliamo muovere un byte in %eax, possiamo muovere un byte:
		- Lavorando sugli ultimi due byte, %ax, che a loro volta e' suddiviso in %al (lower) %ah (higher)