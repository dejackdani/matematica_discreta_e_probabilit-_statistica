---
indice: "5.6"
title: Esercizi Probabilità base
file_sorgente:
  - "[[EserciziMDPnew.pdf]]"
  - "[[MdP20261023.md]]"
---
# Esercizi: Probabilità di base e uniforme

- [ ] **Es. 6.1.** Costruire uno spazio di probabilità (non uniforme) sull'insieme $\Omega = \{1, 2, a, b\}$.

> [!info]- Soluzione
> Basta considerare come insieme di eventi $\emptyset, \Omega, \{1, 2\}, \{a, b\}$ e probabilità data da $P(\{1, 2\}) = 1/2$ e $P(\{a, b\}) = 1/2$. Questo non è uno [[Spazi_di_Probabilita|spazio di probabilità uniforme]] perché non tutti i risultati sono eventi. Questo spazio di probabilità potrebbe modellizzare il seguente fenomeno aleatorio. Abbiamo due urne, una contenente palline numerate 1 o 2 , ma non sappiamo quante di ciascun tipo, e una con palline etichettate a o b, ma non sappiamo quante di ciascun tipo ed estraiamo una pallina a caso da un'urna scelta a caso. Non possiamo dire che il risultato 1 sia un evento perché non possiamo calcolarne la probabilità.

- [ ] **Es. 6.2.** Sia $\Omega = \{1, 2, 3\}$. Quante sono le famiglie di eventi su $\Omega$ (cioé famiglie di sottoinsiemi chiuse rispetto a unione, intersezione e complementare che contengono $\Omega$ e $\emptyset$)?

> [!info]- Soluzione
> In questo caso abbiamo 5 possibili [[Spazi_di_Probabilita#2. Definizione Formale di Spazio di Probabilità|famiglie di eventi]] (in corrispondenza biunivoca con le $B_3 = 5$ [[Partizioni_di_un_Insieme|partizioni]] di un insieme di 3 elementi): esse sono
> - $\Omega, \emptyset$
> - $\Omega, \emptyset, \{1\}, \{2, 3\}$
> - $\Omega, \emptyset, \{2\}, \{1, 3\}$
> - $\Omega, \emptyset, \{3\}, \{1, 2\}$
> - $\Omega, \emptyset, \{1\}, \{2\}, \{3\}, \{1, 2\}, \{1, 3\}, \{2, 3\}$

- [ ] **Es. 6.3.** Un'urna contiene 6 palline rosse, 6 gialle, 6 blu, 6 verdi e 6 arancioni. Determinare la probabilità che pescando 8 palline a caso queste siano di esattamente 3 colori differenti.

> [!info]- Soluzione
> **Scelta del modello (Spiegazione in aula - 23 Ottobre):** Nell'analogo esercizio di combinatoria ([[Esercitazione_03_02-Ottobre|Es. 3.3]]) avevamo distinto il caso di palline *distinguibili* e *indistinguibili*. In probabilità occorre scegliere un modello in cui tutti i risultati elementari siano **equiprobabili** (spazio uniforme). Se guardassimo solo ai multiinsiemi dei colori (palline indistinguibili), pescare "6 bianche e 2 blu" non avrebbe affatto la stessa probabilità di pescare una combinazione mista! Dobbiamo quindi considerare le $30$ palline fisicamente **distinguibili** (come se fossero numerate da $1$ a $30$), cosicché ogni sottoinsieme di $8$ palline abbia la stessa probabilità di essere estratto.
>
> Consideriamo quindi lo spazio $\Omega$ dato da tutte le [[Disposizioni_e_Combinazioni|combinazioni]] (sottoinsiemi) di lunghezza $8$ in un insieme di cardinalità $30$ con probabilità uniforme:
> $$|\Omega| = \binom{30}{8} = 5852925$$
> Per calcolare la cardinalità dell'evento $A$ (sottoinsiemi di $8$ palline in cui compaiono esattamente $3$ colori diversi, cfr. [[Esercitazione_03_02-Ottobre|Es. 3.3]]):
> 1. Scegliamo i $3$ colori presenti tra i $5$ disponibili in $\binom{5}{3}$ modi.
> 2. Fissati i $3$ colori ($18$ palline in totale), contiamo tutti i sottoinsiemi di $8$ palline ($\binom{18}{8}$) e sottraiamo tramite il [[Principio_di_Inclusione_Esclusione|Principio di Inclusione-Esclusione]] quelli in cui manca almeno uno dei $3$ colori ($3 \cdot \binom{12}{8}$; le intersezioni con due colori mancanti sono vuote poiché $8 > 6$):
> $$|A| = \binom{5}{3} \left[\binom{18}{8} - 3\binom{12}{8}\right] = 422730$$
> Abbiamo quindi:
> $$P(A) = \frac{\binom{5}{3} \left[\binom{18}{8} - 3\binom{12}{8}\right]}{\binom{30}{8}} = \frac{422730}{5852925} \approx 0.0722 \quad (7.22\%)$$
> *(Osservazione)*: Questa quantità corrisponde al valore $d_X(3)$ della [[Variabili_Discrete_e_Schemi_Successo_Insuccesso|densità discreta]] della variabile aleatoria $X = \text{"numero di colori estratti"}$.

- [ ] **Es. 6.4.** Determinare la probabilità che scegliendo un anagramma a caso della parola LALLANLA si ottenga una parola con le tre A in posizioni consecutive

> [!info]- Soluzione
> Consideriamo come spazio uniforme $\Omega$ l'insieme di tutti i possibili anagrammi della parola `LALLANLA` ($8$ lettere: $4$ `L`, $3$ `A`, $1$ `N`). Come visto in [[Combinazioni_con_Ripetizione_e_Fibonacci|combinazioni multinomiali]] (e nell'[[Esercitazione_03_02-Ottobre|Es. 3.6]]):
> $$|\Omega| = \binom{8}{4, 3, 1} = \frac{8!}{4! \, 3! \, 1!} = 280$$
> Determiniamo ora la cardinalità dell'evento $E = \{\text{anagrammi con le 3 A in posizioni consecutive}\}$:
> - **Metodo 1 (Super-lettera svolto in aula):** Consideriamo il blocco `AAA` come un'unica grande lettera. Dobbiamo allora anagrammare $6$ lettere totali ($4$ lettere `L`, $1$ lettera `N` e $1$ blocco `AAA`):
>   $$|E| = \binom{6}{4, 1, 1} = \frac{6!}{4! \, 1! \, 1!} = 6 \cdot 5 = 30$$
> - **Metodo 2 (Scelte successive):** Scegliamo in $6$ modi la posizione di partenza del blocco `AAA` e poi in $5$ modi dove collocare la `N` ($6 \cdot 5 = 30$).
>
> Di conseguenza abbiamo:
> $$P(E) = \frac{|E|}{|\Omega|} = \frac{30}{280} = \frac{3}{28} \approx 10.7\%$$

- [ ] **Es. 6.5.** Un insegnante interroga casualmente ogni giorno uno dei suoi sei studenti. Determinare la probabilità che dopo 10 giorni abbia interrogato almeno una volta tutti i sei studenti.

> [!info]- Soluzione
> Identificando i $6$ studenti con l'insieme $\{1, 2, 3, 4, 5, 6\}$ e i $10$ giorni con le posizioni di una sequenza, lo spazio uniforme $\Omega$ è dato da tutte le sequenze di lunghezza $10$ con elementi in $\{1, 2, 3, 4, 5, 6\}$, per cui:
> $$|\Omega| = 6^{10} = 60466176$$
> L'evento favorevole $E$ è costituito da tutte le [[Principio_di_Inclusione_Esclusione#Sequenze $k$-piene (Funzioni Suriettive)|sequenze 6-piene]] (funzioni suriettive) di lunghezza $10$, la cui cardinalità si calcola mediante il [[Principio_di_Inclusione_Esclusione]]:
> $$|E| = \sum_{k=0}^6 (-1)^k \binom{6}{k} (6-k)^{10} = 6^{10} - 6 \cdot 5^{10} + 15 \cdot 4^{10} - 20 \cdot 3^{10} + 15 \cdot 2^{10} - 6 = 16435440$$
> e quindi:
> $$P(E) = \frac{|E|}{|\Omega|} = \frac{16435440}{60466176} \approx 0.272 \quad (27.2\%)$$

- [ ] **Es. 6.6.** Una classe di 10 bambini viene divisa in tre gruppi in modo casuale. Determinare la probabilità che il bambino Andrea finisca nello stesso gruppo della bambina Margherita.

> [!info]- Soluzione
> Qui lo spazio uniforme $\Omega$ è dato da tutte le [[Partizioni_di_un_Insieme|partizioni]] di un insieme di $10$ elementi in $3$ blocchi (non vuoti); dal triangolo dei numeri di Stirling di seconda specie si ha:
> $$|\Omega| = S_{10,3} = 9330$$
> I risultati favorevoli $E$ si ottengono pensando ad Andrea e Margherita fusi in un unico elemento (oppure partizionando gli altri $9$ bambini in $3$ blocchi non vuoti e inserendo poi Margherita nel blocco di Andrea), ossia come le partizioni di un insieme di $9$ elementi in $3$ blocchi:
> $$|E| = S_{9,3} = 3025$$
> Pertanto:
> $$P(E) = \frac{S_{9,3}}{S_{10,3}} = \frac{3025}{9330} \approx 0.3242 \quad (32.4\%)$$
> *(Nota dalla lezione)*: Il risultato non è esattamente $\frac{1}{3}$ perché qui si impone che tutte le partizioni in $3$ blocchi **non vuoti** siano equiprobabili (se invece si assegnasse ogni bambino a caso a uno di $3$ gruppi numerati indipendentemente dagli altri, la probabilità sarebbe $\frac{1}{3}$, ma si ammetterebbero gruppi vuoti).

- [ ] **Es. 6.7.** Abbiamo tre urne contenenti una pallina bianca e rispettivamente 1,3 e 5 palline rosse. Estraendo una pallina a caso da un'urna, qual è la probabilità che sia bianca?

> [!info]- Soluzione
> Usiamo in questo esercizio la [[Probabilita_Condizionale_e_Bayes#2. La Formula delle Probabilità Totali|formula delle probabilità totali]]. Chiamiamo $U_i$ l'evento "pallina estratta dall'urna $i$" e $B$ l'evento "estrazione di una pallina bianca".
> Abbiamo:
> $$P(B) = P(U_1)P(B|U_1) + P(U_2)P(B|U_2) + P(U_3)P(B|U_3) = \frac{1}{3} \cdot \frac{1}{2} + \frac{1}{3} \cdot \frac{1}{4} + \frac{1}{3} \cdot \frac{1}{6} = \frac{6+3+1}{36} = \frac{5}{18}$$

- [ ] **Es. 6.8.** Una moneta (truccata) dà testa con probabilità 0.6. Qual è la probabilità che lanciandola 5 volte otteniamo più teste che croci?

> [!info]- Soluzione
> Siamo in uno schema successo-insuccesso a prove indipendenti, per cui il numero di teste $X$ su $5$ lanci segue una [[Variabili_Discrete_e_Schemi_Successo_Insuccesso#6. Le Variabili Aleatorie Binomiali|variabile aleatoria binomiale]] $X \sim B(5, 0.6)$. Avere più teste che croci significa ottenere $X = 3, 4$ oppure $5$:
> - **$3$ teste e $2$ croci:** $\binom{5}{2} = 10$ combinazioni, ciascuna con probabilità $(0.6)^3 (0.4)^2 = 0.03456 \implies P(X = 3) = 10 \cdot 0.03456 = 0.3456$;
> - **$4$ teste e $1$ croce:** $\binom{5}{1} = 5$ combinazioni, ciascuna con probabilità $(0.6)^4 (0.4) = 0.05184 \implies P(X = 4) = 5 \cdot 0.05184 = 0.2592$;
> - **$5$ teste ($TTTTT$):** $1$ sola combinazione con probabilità $P(X = 5) = (0.6)^5 = 0.07776$.
>
> La probabilità complessiva di avere più teste che croci è quindi:
> $$P(X \ge 3) = 0.3456 + 0.2592 + 0.07776 = 0.68256 \approx 68.26\%$$

- [ ] **Es. 6.9.** Avendo a disposizione la moneta dell'esercizio precedente e una regolare, ne scegliamo una a caso e la lanciamo tre volte.
  (1) Qual è la probabilità di ottenere 3 teste?
  (2) Sapendo che il primo lancio ha dato come risultato testa, qual è la probabilità che la moneta sia truccata?
  (3) Stabilire se gli eventi $E_1$ ="testa al primo lancio" ed $E_2$ ="testa al secondo lancio" sono dipendenti o indipendenti.

> [!info]- Soluzione
> **(a)** Utilizziamo la [[Probabilita_Condizionale_e_Bayes#2. La Formula delle Probabilità Totali|formula delle probabilità totali]] con $A_1$ ="moneta truccata" ($P(A_1) = 1/2$), $A_2$ ="moneta regolare" ($P(A_2) = 1/2$) ed $E$ ="escono 3 teste":
> $$P(E) = P(A_1)P(E|A_1) + P(A_2)P(E|A_2) = \frac{1}{2}(0.6)^3 + \frac{1}{2}(0.5)^3 = 0.1705$$
> **(b)** La probabilità di ottenere testa al primo lancio è:
> $$P(E_1) = P(A_1)P(E_1|A_1) + P(A_2)P(E_1|A_2) = \frac{1}{2}(0.6) + \frac{1}{2}(0.5) = 0.55$$
> Applicando la [[Probabilita_Condizionale_e_Bayes#3. La Formula di Bayes|formula di Bayes]], la probabilità che la moneta scelta sia quella truccata ($A_1$) sapendo che il primo lancio ha dato testa ($E_1$) è:
> $$P(A_1|E_1) = \frac{P(E_1|A_1)P(A_1)}{P(E_1)} = \frac{0.6 \cdot 0.5}{0.55} = \frac{6}{11} \approx 0.5454$$
> *(Nota: nel testo originale delle soluzioni era indicato $A_2$ per un refuso di indice).*
> **(c)** Calcoliamo la probabilità dell'intersezione $E_1 \cap E_2$ tramite la formula delle probabilità totali:
> $$P(E_1 \cap E_2) = P(A_1)P(E_1 \cap E_2|A_1) + P(A_2)P(E_1 \cap E_2|A_2) = \frac{1}{2}(0.6)^2 + \frac{1}{2}(0.5)^2 = 0.305$$
> che è diverso da $P(E_1)P(E_2) = (0.55)^2 = 0.3025$, per cui **gli eventi $E_1$ ed $E_2$ sono dipendenti**.
> **Spiegazione concettuale in aula (Aggiornamento delle credenze):** Benché si lanci fisicamente la stessa moneta, a priori non sappiamo quale delle due abbiamo impugnato. Sapere che il primo lancio ha dato testa aggiorna la nostra credenza sulla moneta scelta (portando la probabilità che sia truccata da $0.50$ a $0.5454$) e di conseguenza innalza la probabilità di ottenere testa anche ai lanci futuri (se su $1000$ lanci osservassimo $603$ teste e $397$ croci, saremmo certi al $99.9999\%$ di avere in mano la moneta truccata e la probabilità di testa al lancio successivo diventerebbe praticamente $0.60$).

