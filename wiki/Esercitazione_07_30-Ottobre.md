---
indice: "5.7"
title: Esercizi Variabili discrete
stato: "🔴 Da Iniziare"
file_sorgente: "[[EserciziMDPnew.pdf]]"
---
# Esercizi: Variabili aleatorie discrete

- [ ] **Es. 7.1.** Un bambino colleziona le figurine di un piccolo album contenente 80 figurine e ne ha già 50. Il nonno gli compra un pacchetto nuovo di 4 figurine (si supponga che un pacchetto contiene sempre 4 figurine diverse tra loro).
  (1) Determinare la probabilità di trovare almeno 3 figurine nuove.
  (2) Qual è la probabilità di trovare tutte doppie (cioè tutte figurine che il bambino ha già)?
  (3) Se il nonno comprasse 2 pacchetti, quale sarebbe la probabilità di trovare complessivamente 6,7 o 8 nuove figurine?

> [!info]- Soluzione
> (a) L'acquisto di un pacchetto può essere visto come l'estrazione di 4 palline di un'urna contenente 30 figurine blu (corrispondenti alla figurine che il bambino non ha) e 50 palline blu (corrispondenti alle figurine che già ha). la variabile $X$= numero di figurine che non ha già nell'album è una variabile $X \sim H(4; 30, 50)$. Abbiamo quindi
> $P(X \ge 3) = P(X = 3) + P(X = 4) = \frac{\binom{30}{3}\binom{50}{1}}{\binom{80}{4}} + \frac{\binom{30}{4}}{\binom{80}{4}} = 0.1457$
> (b) Analogamente al punto precedente abbiamo:
> $P(X = 0) = \frac{\binom{50}{4}}{\binom{80}{4}} = 0.1456$
> (c) Consideriamo la variabile $Y$ = numero di figurine nuove nel secondo pacchetto. Chiaramente la densità di $Y$ dipende da quante figurine nuove sono state trovate nel primo pacchetto: usiamo quindi la formula della probabilità totali e abbiamo
> $P(X + Y = 8) = P(X = 4)P(Y = 4|X = 4) = \frac{\binom{30}{4}}{\binom{80}{4}} \cdot \frac{\binom{26}{4}}{\binom{80}{4}} = 0.0002$
> $P(X + Y = 7) = P(X = 3)P(Y = 4|X = 3) + P(X = 4)P(Y = 3|X = 4)$
> $= \frac{\binom{30}{3}\binom{50}{1}}{\binom{80}{4}} \cdot \frac{\binom{27}{4}}{\binom{80}{4}} + \frac{\binom{30}{4}}{\binom{80}{4}} \cdot \frac{\binom{26}{3}\binom{54}{1}}{\binom{80}{4}} = 0.0029$
> Infine,
> $P(X + Y = 6) = P(X = 4)P(Y = 2|X = 4) + P(X = 3)P(Y = 3|X = 3) + P(X = 2)P(Y = 4|X = 2)$
> $= \frac{\binom{30}{4}}{\binom{80}{4}} \cdot \frac{\binom{26}{2}\binom{54}{2}}{\binom{80}{4}} + \frac{\binom{30}{3}\binom{50}{1}}{\binom{80}{4}} \cdot \frac{\binom{27}{3}\binom{53}{1}}{\binom{80}{4}} + \frac{\binom{30}{2}\binom{50}{2}}{\binom{80}{4}} \cdot \frac{\binom{28}{4}}{\binom{80}{4}}$
> $= 0.0220$.

- [ ] **Es. 7.2.** Consideriamo 4 scatole contenenti 2 palline ciascuna indistinguibili al tatto. La scatola $i$ ha una pallina numerata con 1 e l'altra numerata con $i$ (quindi nella prima entrambe le palline sono numerate 1). Si estrae una pallina per scatola. Determinare
  (1) la probabilità che la somma delle palline estratte sia almeno 7;
  (2) la probabilità di aver estratto la biglia con il 4 sapendo che la somma delle palline estratte è almeno 7;
  (3) la probabilità di aver estratto esattamente tre palline numerate con 1.

> [!info]- Soluzione
> In questo caso questo caso possiamo considerare uno spazio di probabilità uniforme costituito da 8 possibili risultati e cioè:
> $\Omega = \{(1, 1, 1, 1),(1, 2, 1, 1),(1, 1, 3, 1),(1, 1, 1, 4),(1, 2, 3, 1),(1, 2, 1, 4),(1, 1, 3, 4),(1, 2, 3, 4)\}$
> (a) La somma delle palline estratte è almeno 7 in 5 casi su 8 per cui la probabilità è $5/8$;
> (b) Sia $A$ l'insieme dei risultati in cui la somma è almeno 7 e $B$ l'insieme dei risultati in cui viene estratto il 4 abbiamo
> $P(B|A) = \frac{P(A \cap B)}{P(A)} = \frac{4/8}{5/8} = \frac{4}{5}$
> (c) Abbiamo 3 risultati in cui compaiono esattamente tre palline numerate con 1 e quindi la probabilità è $3/8$.

- [ ] **Es. 7.3.** Stabilire quali delle seguenti funzioni rappresentano una densità discreta astratta.
  $d_1(k) = 0.2$ se $k = -1, 2, 4$, $0.4$ se $k = 8$, $0$ altrimenti.
  $d_2(k) = 0.2$ se $k = 1, 2, 3, 4, 5, 6, 7$, $-0.4$ se $k = 8$, $0$ altrimenti.
  $d_3(k) = \frac{2k-1}{2^k}$ se $k \ge 1$, $0$ altrimenti.

> [!info]- Soluzione
> $d_1$ è una densità discreta perché assume tutti valori non negativi con somma 1.
> $d_2$ non è una densità perché assume valore $-0.4$.
> $d_3$ non è una densità perché la somma dei valori che assume è maggiore di 1: infatti già la somma dei primi 4 termini è maggiore di 1.

- [ ] **Es. 7.4.** Lanciamo un dado per 4 volte e denotiamo $X_1, X_2, X_3, X_4$ i risultati dei quattro lanci. Poniamo $Y = |\{i : X_i = 6\}|, Z = |X_1 - X_2|, W = \min\{|X_i - X_j | : i \neq j\}$.
  Determinare le densità di $Y, Z$ e $W$.

> [!info]- Soluzione
> La variabile $Y$ è binomiale $Y \sim B(4, 1/6)$.
> La variabile $Z$ assume valori $0, 1, 2, 3, 4, 5$. Abbiamo
> $d_Z(k) = \frac{6}{36}$ se $k = 0$
> $= \frac{10}{36}$ se $k = 1$
> $= \frac{8}{36}$ se $k = 2$
> $= \frac{6}{36}$ se $k = 3$
> $= \frac{4}{36}$ se $k = 4$
> $= \frac{2}{36}$ se $k = 5$
> $= 0$ altrimenti.
> Avendo 4 numeri tra 1 e 6 questi non possono essere tutti a distanza $\ge 2$ l'uno dall'altro: se così fosse avremmo almeno differenza 6 tra il massimo e il minimo, che è evidentemente assurdo. La variabile $Y$ può assumere quindi solo valori 0 e 1 (e quindi è una variabile di Bernoulli). Abbiamo che $W$ vale 1 quindi se i numeri sono tutti distinti e quindi
> $P(W = 1) = \frac{(6)_4}{6^4} = \frac{5}{18}$
> per cui $W \sim B(1, \frac{5}{18})$.

- [ ] **Es. 7.5.** Lanciamo una moneta ripetutamente e registriamo i risultati in una sequenza binaria $(a_1, a_2, \dots)$ in cui inseriamo 0 quando otteniamo testa e 1 quando otteniamo croce.
  Poniamo $X = \min\{i : a_{i-1} = a_i\}$ e $Y = \min\{i : a_{i-1} = a_i = 1\}$. Ad esempio ottenendo una sequenza 1001011 abbiamo $X = 3$ e $Y = 7$.
  (1) Determinare $P(a_i = a_{i-1})$ per ogni $i > 1$.
  (2) Determinare la probabilità $P(X = k)$ per ogni $k$ (cioè la probabilità che i primi due lanci consecutivi che danno lo stesso risultato siano i lanci $k - 1$ e $k$)
  (3) Determinare la probabilità $P(Y = k)$ (cioè la probabilità che i primi due lanci consecutivi che danno testa siano i lanci $k - 1$ e $k$) per ogni $k \le 8$;
  (4) Dimostrare che $P(Y = k) = \frac{F_{k-3}}{2^k}$ per $k > 3$, dove $F_k$ è il $k$-esimo numero di Fibonacci.

> [!info]- Soluzione
> (a) Abbiamo
> $P(a_i = a_{i-1}) = P(a_i = 1, a_{i-1} = 1) + P(a_i = 0, a_{i-1} = 0) = \frac{1}{2}$.
> (b) Consideriamo come spazio di probabilità l'insieme dei risultati dei primi $k$ lanci, abbiamo quindi $2^k$ possibili risultati, tutte le sequenze binarie di lunghezza $k$. Di questi risultati solo 2 danno come esito $X = k$ per cui
> $P(X = k) = \frac{2}{2^k} = 2^{1-k}$
> (c) (d) Nello stesso spazio di probabilità del punto precedente, abbiamo chiaramente per $k = 2$, $P(Y = 2) = \frac{1}{2}$, mentre per $k \ge 3$ le sequenze favorevoli sono quelle che terminano con 011 e hanno nei primi $k - 3$ posti una qualunque sequenza di Fibonacci, cioè una sequenza binaria in cui non cisono due 1 consecutivi. Abbiamo quindi $P(Y = k) = \frac{F_{k-3}}{2^k}$.

- [ ] **Es. 7.6.** Organizzando una gita abbiamo a disposizione un pulmino da 28 posti e, confidando nel fatto che la probabilità che una persona a caso che ha comprato il biglietto non si presenti alla partenza è del 10%, decidiamo di vendere 30 biglietti. Qual è la probabilità di essere nei guai (cioè che qualcuno non trovi posto)?
  Quanti biglietti avremmo potuto vendere ammettendo un rischio massimo del 50% di ritrovarci nei guai?

> [!info]- Soluzione
> (a) Possiamo assumere che la variabile $X$ = numero di persone che si presentano sia una variabile binomiale $X \sim B(30, \frac{9}{10})$. Trovarsi nei guai vuol dire "$X \ge 29$" per cui la probabilità di trovarsi nei guai è
> $P(X = 29) + P(X = 30) = \binom{30}{29}(0.9)^{29}(0.1)^1 + \binom{30}{30}(0.9)^{30} = 0.1837$.
> (b) Qui bisogna procedere per tentativi: se vendiamo 31 biglietti abbiamo $X \sim B(31, 0.9)$ e quindi
> $P(X \ge 29) = P(X = 29) + P(X = 30) + P(X = 31)$
> $= \binom{31}{29}(0.9)^{29}(0.1)^2 + \binom{31}{30}(0.9)^{30}(0.1)^1 + \binom{31}{31}(0.9)^{31}$
> $= 0.3886$
> Vendendo 32 biglietti il rischio si calcola analogamente e in questo caso otteniamo
> $P(X \ge 29) = P(X = 29) + P(X = 30) + P(X = 31) + P(X = 32)$
> $= \binom{32}{29}(0.9)^{29}(0.1)^3 + \binom{32}{30}(0.9)^{30}(0.1)^2 + \binom{32}{31}(0.9)^{31}(0.1) + (0.9)^{32}$
> $= 0.6003$.
> Possiamo quindi vendere al più 31 biglietti se vogliamo correre un rischio inferiore al 50% di trovarci nei guai.

- [ ] **Es. 7.7.** Supponiamo che la probabilità che nessun bambino nato a Cesena in un mese diventi un dottore di ricerca sia $e^{-1}$.
  (1) Qual è la probabilità che almeno due bambini nati a Cesena in un mese diventino dottori di ricerca?
  (2) Qual è la probabilità che in un anno nascano almeno 4 bambini che diventeranno dottori di ricerca?

> [!info]- Soluzione
> (a) Sia $X$ il numero di bambini che diventeranno dottori di ricerca nati in un mese. Il dato del problema è $P(X = 0) = e^{-1}$. La variabile $X$ può essere pensata come una variabile di Poisson (tanti tentativi corrispondenti a tutti i bambini nati ognuno dei quali diventerà dottore di ricerca con probabilità senz'altro molto bassa) e quindi $X \sim P(\lambda)$. Per determinare il parametro $\lambda$ ricordiamo che
> $P(X = 0) = e^{-\lambda}\frac{\lambda^0}{0!} = e^{-\lambda}$
> per cui abbiamo $\lambda = 1$. Abbiamo quindi
> $P(X \ge 2) = 1 - P(X = 0) - P(X = 1) = 1 - e^{-1} - e^{-1} = 1 - 2e^{-1} = 0.264$
> (b) Sia $Y$ il numero di bambini nati in un anno che diventeranno dottori di ricerca. La probabilità che non nascano dottori di ricerca in un anno è $(e^{-1})^{12} = e^{-12}$, dunque possiamo pensare come al primo punto che $Y$ sia una variabile di Poisson di parametro 12. In alternativa, possiamo vedere $Y$ come somma di 12 variabili di Poisson di parametro 1, e di nuovo ottenere che $Y$ è una variabile di Poisson di parametro 12. Abbiamo quindi
> $P(Y \ge 4) = 1 - P(Y \le 3) = 1 - e^{-12}(1 + \frac{12}{1} + \frac{12^2}{2!} + \frac{12^3}{3!}) = 0.9977$.

- [ ] **Es. 7.8.** Lanciamo due dadi, uno rosso e uno blu, per 4 volte e consideriamo le seguenti variabili
  (1) $X$= numero di volte in cui il rosso ha dato un risultato maggiore del blu. Che densità ha la variabile $X$?
  (2) $Y$ = numero di volte in cui il rosso ha dato un risultato uguale al lancio precedente. Che densità ha $Y$?
  (3) $Z$ = il primo lancio in cui la somma di tutti i risultati ottenuti fino a quel momento è almeno 6. Che densità ha $Z$?

> [!info]- Soluzione
> (a) Questo è uno schema successo-insuccesso con 4 prove indipendenti in cui ad ogni tentativo la probabilità di avere successo è $5/12$ per cui
> $X \sim B(4, 5/12)$.
> (b) In questo caso abbiamo 3 tentativi ognuno dei quali dà successo con probabilità $1/6$ e quindi
> $Y \sim B(3, 1/6)$
> (c) La variabile $Z$ assume valori $1,2,3$: infatti con 3 lanci siamo sicuri che la somma dei risultati ottenuti sia almeno 6. Abbiamo
> $P(Z = 1) = \frac{5+6+5+4+3+2+1}{36} = 0.722$
> Inoltre $Z = 3$ si verifica esattamente nei casi in cui i primi due lanci abbiano dato quattro 1, oppure tre 1 e un 2 e quindi
> $P(Z = 3) = \frac{1+4}{6^4} = 0.004$
> La probabilità $P(Z = 2)$ può a questo punto essere calcolata per differenza e quindi la densità di $Z$ risulta
> $d_Z(k) = 0.722$ se $k = 1$, $0.274$ se $k = 2$, $0.004$ se $k = 3$, $0$ altrimenti.
