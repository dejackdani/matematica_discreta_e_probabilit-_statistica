---
indice: "5.9"
title: Esercizi 09 - Valore atteso e varianza
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 9.1.** Avendo a disposizione 10 Euro vogliamo fare 6 scommesse da 5 euro ciascuna. Ad ogni puntata abbiamo probabilità 60% di perdere i 5 Euro puntati e 40% di vincere 5 Euro. Poniamo $Y_i =$ numero di vittorie nelle prime $i$ scommesse e $X_i =$ soldi rimasti dopo le prime $i$ scommesse (con $i = 1, 2, 3, 4, 5, 6$).
a. Determinare la densità di $X_1$ e di $X_2$;
b. Determinare la densità delle $Y_i$;
c. Mostrare che $X_i = 10 + 5Y_i - 5(i - Y_i)$;
d. Determinare il valore atteso di $X_6$;
e. Determinare $P(X_4 > 0)$ e $P(X_6 > 0)$;
f. Determinare $P(X_4 > 0, X_6 > 0)$.

> [!info]- Soluzione
> a. Si ha
> $$d_{X_1}(k) = \begin{cases} 0.4 & \text{se } k = 15 \\ 0.6 & \text{se } k = 5 \\ 0 & \text{altrimenti} \end{cases}$$
> e
> $$d_{X_2}(k) = \begin{cases} 0.16 & \text{se } k = 20 \\ 0.48 & \text{se } k = 10 \\ 0.36 & \text{se } k = 0 \\ 0 & \text{altrimenti} \end{cases}$$
> b. Si ha $Y_i \sim B(i, 0.4)$.
> c. $Y_i$ è il numero di vittorie e $i-Y_i$ è il numero di perdite nell prime $i$ scommesse e quindi il risultato segue.
> d. Abbiamo dal punto precedente $X_6 = 10Y_6 - 20$ e quindi
> $$E[X_6] = 10E[Y_6] - 20 = 10 \cdot 2.4 - 20 = 4.$$
> e. Per il punto c abbiamo
> $$P(X_4 > 0) = P(Y_4 > 1) = 1 - P(Y_4 = 0) - P(Y_4 = 1) = 1 - 0.6^4 - 4 \cdot 0.6^3 \cdot 0.4 = 0.5248$$
> e similmente possiamo calcolare $P(X_6 > 0) = 0.4557$.
> f. Abbiamo
> $$P(X_4 > 0, X_6 > 0) = P(X_4 \ge 20, X_6 > 0) + P(X_4 = 10, X_6 > 0)$$
> $$= P(X_4 \ge 20) + P(X_4 = 10) \cdot P(X_6 > 0|X_4 = 10).$$
> Ora $P(X_4 = 10) = 0.3456$ e $P(X_4 \ge 20) = P(X_4 > 0) - P(X_4 = 10) = 0.5248 - 0.3456 = 0.1792$ e quindi possiamo concludere
> $$P(X_4 > 0, X_6 > 0) = 0.1792 + 0.3456 \cdot (1 - 0.6^2) = 0.4004.$$

- [ ] **Es. 9.2.** Sette coppie marito-moglie in viaggio di nozze vogliono partecipare ad una attività extra in cui però ci sono solo 10 posti disponibili. Vengono pertanto estratte a caso 10 persone che parteciperanno a questa attività. Sia $X$ il numero di coppie di cui viene estratto almeno un rappresentante e $Y$ il numero di donne estratte.
a. Qual é la probabilitá di estratte almeno un rappresentante di ogni coppia?
b. Determinare la densitá, valore atteso e varianza di $X$;
c. determinare la densitá di $Y$;
d. determinare $P(X = 6, Y = 6)$;
e. per ogni $k \ge 0$ determinare $P(Y = k|X = 7)$.

> [!info]- Soluzione
> a.
> $$\frac{\binom{7}{3} 2^4}{\binom{14}{10}} = \frac{560}{1001} = \frac{80}{143}.$$
> b. $P(X = 7) = \frac{80}{143}$ l'abbiamo già calcolata. $P(X = 6) = \frac{\binom{7}{4}\binom{3}{2}2^2}{\binom{14}{10}} = \frac{420}{1001} = \frac{60}{143}$.
> L'altro valore possibile per $X$ è $5$ e la relativa probabilità può essere calcolata per differenze oppure come $P(X = 5) = \frac{\binom{7}{5}}{\binom{14}{10}} = \frac{3}{143}$. Concludiamo
> $$p_X(k) = \begin{cases} \frac{80}{143} & \text{se } k = 7; \\ \frac{60}{143} & \text{se } k = 6; \\ \frac{3}{143} & \text{se } k = 5; \\ 0 & \text{altrimenti.} \end{cases}$$
> Dunque calcoliamo
> $$E(X) = 5 \frac{3}{143} + 6 \frac{60}{143} + 7 \frac{80}{143} = \frac{85}{13} = 6.54$$
> $$E(X^2) = 25 \frac{3}{143} + 36 \frac{60}{143} + 49 \frac{80}{143} = \frac{6155}{143} = 43.04$$
> $$Var(X) = E(X^2) - E(X)^2 = \frac{540}{1859} = 0.29$$
> c. $Y \sim H(10; 7, 7)$;
> d. $P(X = 6, Y = 6) = \frac{\binom{7}{6}\binom{6}{4}}{\binom{14}{10}} = \frac{15}{143}$;
> e. Gli unici valori possibili con probabilità non nulla sono $k = 3, 4, 5, 6, 7$. Per tali valori di $k$, abbiamo
> $$P(X = 7, Y = k) = \frac{\binom{7}{3} \binom{4}{k-3}}{\binom{14}{10}}.$$
> Infatti, se $X = 7$, ci saranno esattamente $3$ coppie che partecipano con entrambi i partner, e $4$ coppie che partecipano solamente con uno dei due partner. D'altra parte, se $Y = k$, ci saranno esattamente $3$ mogli che partecipano con marito, e $k - 3$ mogli che partecipano senza marito.
> Dunque i casi favorevoli dell'evento $\{X = 7, Y = k\}$ sono determinati dalla scelta delle $3$ mogli che partecipano con marito (per le quali ci sono $\binom{7}{3}$ scelte in totale), e dalla scelta delle rimanenti $k - 3$ mogli che partecipano senza marito (per le quali ci sono $\binom{4}{k-3}$ scelte in totale).
> Pertanto del punto (a) troviamo
> $$P(Y = k|X = 7) = \frac{P(X = 7, Y = k)}{P(X = 7)} = \frac{\binom{4}{k-3}}{2^4} = \begin{cases} \frac{1}{16} & \text{se } k = 3, 7; \\ \frac{4}{16} & \text{se } k = 4, 6; \\ \frac{6}{16} & \text{se } k = 5; \\ 0 & \text{altrimenti.} \end{cases}$$

- [ ] **Es. 9.3.** Lanciamo un dado 3 volte. Denotiamo con $X_1, X_2, X_3$ i risultati dei tre lanci e con $Y = |X_1 - X_2|$.
a. Stabilire se gli eventi $\{X_2 = 2\}$ e $\{Y = 0\}$ sono indipendenti.
b. Stabilire se le variabili $Y$ e $X_2$ sono indipendenti.
c. Determinare $E[Y]$;
d. Determinare $P(Y = 0|X_1 + X_2 + X_3 = 7)$.

> [!info]- Soluzione
> a. Abbiamo $P(Y = 0) = P(X_1 = X_2) = \frac{1}{6}$, $P(X_2 = 2) = \frac{1}{6}$ e $P(Y = 0, X_2 = 2) = P(X_1 = X_2 = 2) = \frac{1}{36}$ per cui gli eventi "$Y = 0$" e "$X_2 = 2$" sono indipendenti.
> b. Sono dipendenti. Infatti $P(Y = 5, X_2 = 3) = 0$ mentre $P(Y = 5) \neq 0$ e $P(X_2 = 3) \neq 0$.
> c. Abbiamo bisogno della densità di $Y$. Abbiamo già visto $P(Y = 0) = \frac{1}{6}$. Gli altri valori della densità sono
> $$p_Y(k) = \begin{cases} \frac{3}{18} & \text{se } k = 0 \\ \frac{5}{18} & \text{se } k = 1 \\ \frac{4}{18} & \text{se } k = 2 \\ \frac{3}{18} & \text{se } k = 3 \\ \frac{2}{18} & \text{se } k = 4 \\ \frac{1}{18} & \text{se } k = 5 \\ 0 & \text{altrimenti} \end{cases}$$
> per cui
> $$E[Y] = \frac{1}{18} (5 + 8 + 9 + 8 + 5) = \frac{35}{18}.$$
> d. La condizione $X_1 + X_2 + X_3 = 7$ si verifica in $15$ modi per cui $P(X_1 + X_2 + X_3 = 7) = \frac{15}{216}$. Di questi $15$ modi esattamente tre soddisfano anche la condizione $Y = 0$ per cui $P(X_1 + X_2 + X_3 = 7, Y = 0) = \frac{3}{216}$. Concludiamo che
> $$P(Y = 0|X_1 + X_2 + X_3 = 7) = \frac{P(X_1 + X_2 + X_3 = 7, Y = 0)}{P(X_1 + X_2 + X_3 = 7)} = \frac{1}{5}.$$

- [ ] **Es. 9.4.** Siano $X \sim U(\{0, 1, 2, 3\})$ e $Y = U(\{1, 2, 3, 4\})$ due variabili aleatorie indipendenti e $Z = \max(X, Y)$.
a. Stabilire quali valori può assumere la variabile $Z$ e determinarne la funzione di ripartizione.
b. determinare $E[Z]$;
c. determinare $Var(Z)$.

> [!info]- Soluzione
> a. La variabile $Z$ può assumere valori $\{1, 2, 3, 4\}$. Possiamo scrivere le funzioni di ripartizione delle variabili coinvolte. Siccome tutte queste variabili assumono solo valori interi ci limitiamo a considerare le funzioni di ripartizione calcolate su valori interi. Abbiamo
> $$F_X(k) = \begin{cases} 0 & \text{se } k < 0 \\ \frac{k+1}{4} & \text{se } k = 0, 1, 2, 3 \\ 1 & \text{se } k \ge 3 \end{cases}$$
> e
> $$F_Y(k) = \begin{cases} 0 & \text{se } k < 1 \\ \frac{k}{4} & \text{se } k = 1, 2, 3, 4 \\ 1 & \text{se } k \ge 4 \end{cases}$$
> Ricordando che $F_{\max(X,Y)}(k) = F_X(k)F_Y(k)$ abbiamo
> $$F_Z(k) = \begin{cases} 0 & \text{se } k < 1 \\ \frac{k(k+1)}{16} & \text{se } k = 1, 2, 3 \\ 1 & \text{se } k \ge 4 \end{cases}$$
> b. La densità di $Z$ la possiamo ottenere per sottrazione dalla funzione di ripartizione osservando che
> $$P(Z = k) = P(Z \le k) - P(Z \le k - 1) = F_Z(k) - F_Z(k - 1)$$
> e abbiamo quindi
> $$p_Z(k) = \begin{cases} \frac{1}{8} & \text{se } k = 1 \\ \frac{2}{8} & \text{se } k = 2 \\ \frac{3}{8} & \text{se } k = 3 \\ \frac{2}{8} & \text{se } k = 4 \\ 0 & \text{altrimenti.} \end{cases}$$
> Abbiamo quindi
> $$E[Z] = \frac{1}{8} (1 + 4 + 9 + 8) = \frac{11}{4}.$$
> c. Calcoliamo
> $$E[Z^2] = \frac{1}{8} (1 + 8 + 27 + 32) = \frac{17}{2}$$
> e quindi
> $$Var(Z) = E[Z^2] - E[Z]^2 = \frac{17}{2} - \frac{121}{16} = \frac{15}{16}.$$

- [ ] **Es. 9.5.** Siano $X \sim B(4, \frac{1}{3})$ ed $Y \sim H(4; 3, 3)$ due variabili indipendenti. Determinare
a. la funzione di ripartizione di $X$;
b. la funzione di ripartizione di $Y$;
c. densità, valore atteso e varianza di $\min(X, Y)$

> [!info]- Soluzione
> Le variabili $X$ e $Y$ hanno densità
> $$p_X(k) = \begin{cases} \frac{16}{81} & \text{se } k = 0 \\ \frac{32}{81} & \text{se } k = 1 \\ \frac{24}{81} & \text{se } k = 2 \\ \frac{8}{81} & \text{se } k = 3 \\ \frac{1}{81} & \text{se } k = 4 \\ 0 & \text{altrimenti} \end{cases} \qquad p_Y(k) = \begin{cases} \frac{1}{5} & \text{se } k = 1 \\ \frac{3}{5} & \text{se } k = 2 \\ \frac{1}{5} & \text{se } k = 3 \\ 0 & \text{altrimenti} \end{cases}$$
> La funzioni di ripartizione di $X$ e di $Y$ sono quindi
> $$F_X(k) = \begin{cases} 0 & \text{se } k < 0 \\ \frac{16}{81} & \text{se } k = 0 \\ \frac{48}{81} & \text{se } k = 1 \\ \frac{72}{81} & \text{se } k = 2 \\ \frac{80}{81} & \text{se } k = 3 \\ 1 & \text{se } k \ge 4 \end{cases} \qquad F_Y(k) = \begin{cases} 0 & \text{se } k \le 0 \\ \frac{1}{5} & \text{se } k = 1 \\ \frac{4}{5} & \text{se } k = 2 \\ 1 & \text{se } k \ge 3 \end{cases}$$
> Detto $W = \min(X, Y)$ abbiamo che $W$ può assumere valori $0, 1, 2, 3$. Abbiamo $P(W = 0) = P(X = 0) = \frac{16}{81}$. Inoltre
> $$P(W = 1) = P(X = 1) + P(X > 1, Y = 1) = \frac{32}{81} + \frac{33}{81}\frac{1}{5} = \frac{193}{405}$$
> $$P(W = 2) = P(X = 2, Y \ge 2) + P(X > 2, Y = 2) = \frac{24}{81}\frac{4}{5} + \frac{9}{81}\frac{3}{5} = \frac{123}{405}$$
> $$P(W = 3) = P(X \ge 3, Y = 3) = \frac{9}{81}\frac{1}{5} = \frac{9}{405}$$
> per cui ricapitolando abbiamo
> $$p_W(k) = \begin{cases} \frac{80}{405} & \text{se } k = 0 \\ \frac{193}{405} & \text{se } k = 1 \\ \frac{123}{405} & \text{se } k = 2 \\ \frac{9}{405} & \text{se } k = 3 \\ 0 & \text{altrimenti.} \end{cases}$$
> Possiamo ora calcolare
> $$E[W] = \frac{1}{405} (193 + 246 + 27) = \frac{466}{405}$$
> $$E[W^2] = \frac{1}{405} (193 + 492 + 81) = \frac{766}{405}$$
> e quindi
> $$Var(W) = E[W^2] - E[W]^2 = 0.567$$

- [ ] **Es. 9.6.** Siano $X$ ed $Y$ due variabili aleatorie indipendenti aventi le seguenti densità
$$d_Y(k) = d_X(k) = \begin{cases} 0.1 & \text{se } k = -1, 1, \frac{3}{2}, 2, \frac{5}{2} \\ \frac{1}{2} & \text{se } k = -2 \\ 0 & \text{altrimenti.} \end{cases}$$
(1) Determinare il valore atteso di $XY$;
(2) Determinare il valore atteso di $X^2$;
(3) Determinare il valore atteso e la varianza di $|X| + |Y|$.

> [!info]- Soluzione
> (1) Abbiamo
> $$E[X] = E[Y] = \frac{1}{10} (-1 + 1 + \frac{3}{2} + 2 + \frac{5}{2}) + \frac{1}{2}(-2) = -0.4.$$
> Dunque siccome $X$ e $Y$ sono indipendenti troviamo
> $$E[XY] = E[X]E[Y] = 0.16.$$
> (2)
> $$E[X^2] = \frac{1}{10} (1 + 1 + \frac{9}{4} + 4 + \frac{25}{4}) + \frac{1}{2} 4 = 3.45.$$
> (3) Le variabili $|X|$ ed $|Y|$ sono indipendenti perché lo erano $X$ ed $Y$. Abbiamo
> $$E[|X|] = E[|Y|] = \frac{1}{10} (1 + 1 + \frac{3}{2} + 2 + \frac{5}{2}) + \frac{1}{2}(2) = 1.8$$
> per cui $E[|X| + |Y|] = 3.6$. Inoltre
> $$E[|X|^2] = E[X^2] = 3.45$$
> per cui
> $$Var(|X|) = Var(|Y|) = 3.45 - 1.8^2 = 0.21$$
> e quindi
> $$Var(|X| + |Y|) = 0.42.$$
