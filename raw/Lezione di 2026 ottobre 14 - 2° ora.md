purtroppo qua ho perso la prima ora

## Spazio uniforme

Ogni sottoinsieme $E$ di $\Omega$ è evento 

$$
P(E) = \frac{|E|}{|\Omega|}
$$

> [!example] Esempio
> Lancio un dado. Qual'è la probabilità che esca un numero pari?
> $$ \Omega = \set{1,2,3,4,5,6}$$
> $$E = \set{2,4,6}$$
> $$ P(E) = \frac{|E|}{|\Omega|} = \frac{3}{6}$$

> [!example] Esempio
> **Fenomeno**: Estrazione di 5 numeri distinti tra 1 e 90
> $$ \Omega = \text{ disposizioni di lunghezza 5 in } \set{1,2,3,\dots, 90} $$
> $$ |\Omega| = (90)_5$$
> Lo  spazio è: **uniforme**
> ---
> Qual'è la probabilità di fare **terno** (ossia che vengano estratti 3 numeri...) ![[Pasted image 20261014143005.png]]
> 
> Siccome l'ordine non è importante cambiamo spazio di probabilità
> $$\Omega' = \set{\text{combinazioni di lunghezza 5 in }\set{1,2,\dots,90}}$$
> la sua cardinalità sarà $|\Omega'|=\binom{90}{5}$ è sempre uniforme!
> 
> $E =$ "terno"
> $|E|=\binom{87}{2}$
> $$
> P(E) = \frac{\binom{87}{2}}{\binom{90}{5}} = \frac{\frac{87\cdot 86}{2}}{\frac{90\cdot89\cdot88\cdot87\cdot86}{120}} = \frac{1}{11748}
> $$
> ![[Pasted image 20261014143618.png]]
> ---
> Qual'è la probabilità che esca un solo numero puntato, il 23
> $$ E_1, E_2, \dots, E_5$$
> $$E_i = "\text{23 esce all'estrazione }i"$$
> $$E = E_1 \cup E_2 \cup E_3 \cup E_4 \cup E_5$$
> e questi $E$ sono disgiunti
> ![[Pasted image 20261014143721.png]]
> 
> $$P(E) = P(E_1) + P(E_2) + P(E_3) + P(E_4) + P(E_5) $$
> $$
> 	\begin{array}{l}
> 	P(E_1) = \frac{1}{90} \\
> 	P(E_2) = \frac{1}{90}\\
> 	\vdots\\
> 	P(E_5) = \frac{1}{90}
> 	\end{array} \Rightarrow P(E_1) = \frac{5}{90} = \frac{1}{18}
> $$
> **Oppure**
> Calcoliamo le combinazioni che contengono il 23, che sono $\binom{89}{4}$
> $$
> 	P(E)=\frac{\frac{89\cdot88\cdot87\cdot86}{4\cdot3\cdot2}}{\frac{90\cdot89\cdot88\cdot87\cdot86}{5\cdot4\cdot3\cdot2}} = \frac{1}{18}
> $$
> ![[Pasted image 20261014144814.png]]



> [!example] Esempio uniforme infinito
> **Fenomeno**: estrazione di un numero positivo.
> Qual'è la probabilità di estrarre 23?
> $$
> \Omega = \set{1,2,3,\dots}
> $$
> $$
> \ro = P(23) = P(n), \forall n
> $$
> ![[Pasted image 20261014145129.png]]
> $$
> \Omega = \set{1}\cup\set{2}\cup\set{3}\cup\set{4}\cup\dots
> $$
> $$
> 	\begin{array}{l}
> 		1 = P(\Omega) & = & P(1) + P(2) + \dots
> 		& = & p + p + p + \dots
> 	\end{array}
> $$
> che porta a 
> - $0$ se $p = 0$
> - $\infty$ se $p > 0$
> -Non esiste uno spazio di probabilità che risponde a questa domanda.
> ![[Pasted image 20261014145300.png]]





![[Pasted image 20261014145628.png]]
$$
P(A\cup B) = P(A) + P(B) - P(A\cap B)
$$
Lanciando 2 dadi, qual'è la probabilità che esca almeno un 6?
- $A =$ "*il 1° dado fa 6*"
- B = "*il 2° dado fa 6*"

$$P(A\cap B) = P(A) + P(B) - P(A\cap B) = \frac{1}{6} + \frac{1}{6}- \left(\frac{1}{6}*\frac{1}{6}\right) = \frac{1}{6} + \frac{1}{6}- \frac{1}{36} = \frac{11}{36}$$
![[Pasted image 20261014150156.png]]
in alternativa, possiamo usare il complementare $C =$"*non escono 6*"
$$
1 - P(C) = 1 - \frac{25}{36} = \frac{11}{36}
$$
