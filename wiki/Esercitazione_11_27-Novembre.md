---
title: Esercizi 11 - Variabili normali e limite centrale
stato_esercitazione: 🔴 Da Svolgere
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 11.1.** [Vedi esercizio 10.2] Ubaldo prende il tram tutte le mattine per andare al lavoro. Arriva alla fermata in un orario casuale e sappiamo che passa un autobus ogni dieci minuti. Siano $T_i, i = 1, \dots, 30$ i tempi di attesa in 30 giorni di lavoro. Qual è la probabilità che aspetti mediamente più di 6 minuti?

> [!info]- Soluzione
> Abbiamo già considerato le variabili $T_i$ nell'esercizio 10.2. In particolare, espresse in minuti, le variabili $T_i$ sono tutte continue uniformi $T_i \sim U([0, 10])$. Ricordando che $E[T_i] = 5$ e $Var(T_i) = \frac{100}{12}$, dal teorema del limite centrale otteniamo
> $$T_1 + \dots + T_{30} \sim N(150, 250).$$
> Abbiamo quindi
> $$P(\frac{1}{30}(T_1 + \dots + T_{30}) > 6) = P(T_1 + \dots + T_{30} > 180)$$
> $$= P(\sqrt{250}\zeta_0 + 150 > 180)$$
> $$= P(\zeta_0 > 1.89) = 1 - \Phi(1.89) = 0.03.$$

- [ ] **Es. 11.2.** [Vedi esercizio 10.4] Siano date 44 variabili indipendenti $X_1, \dots, X_{44}$, tutte con la stessa funzione di ripartizione $F : \mathbb{R} \to \mathbb{R}$ descritta come segue
$$F(t) = \begin{cases} 0 & \text{se } t \le 0; \\ \frac{2t}{3} & \text{se } 0 < t \le 1; \\ \frac{t+1}{3} & \text{se } 1 < t \le 2; \\ 1 & \text{se } t > 2. \end{cases}$$
Determinare $P(X_1 + \dots + X_{44} > 40)$.

> [!info]- Soluzione
> Abbiamo già considerato la funzione di ripartizione in questione nell'esercizio 10.4. In particolare, abbiamo calcolato il valore atteso $E[X_i] = \frac{5}{6}$ e la varianza $Var(X_i) = \frac{11}{36}$. Per il teorema del limite centrale abbiamo dunque
> $$X_1 + \dots + X_{44} \sim N(\frac{110}{3}, \frac{121}{9}).$$
> Quindi
> $$P(X_1 + \dots + X_{44} > 40) = P(\frac{11}{3}\zeta_0 + \frac{110}{3} > 40) = P(\zeta_0 > \frac{10}{11}) = 1 - \Phi(0.91) = 0.181.$$

- [ ] **Es. 11.3.** [Vedi esercizio 10.6] Consideriamo la funzione $f : \mathbb{R} \to \mathbb{R}$ data da
$$f(s) = \begin{cases} 0 & \text{se } |s| > 1 \\ 1 + s & \text{se } -1 < s < 0 \\ 1 - s & \text{se } 0 < s < 1 \end{cases}$$
Siano $X_1, \dots, X_{180}$ variabili aleatorie continue indipendenti, tutte con densità continua $f$. Calcolare $P(X_1^2 + \dots + X_{180}^2 > 25)$.

> [!info]- Soluzione
> Abbiamo già considerato la densità in questione nell'esercizio 10.6. In particolare, abbiamo calcolato $E[X_1^2] = \frac{1}{6}$ e $Var(X_1^2) = \frac{7}{180}$. Applicando il teorema del limite centrale abbiamo quindi
> $$X_1^2 + \dots + X_{180}^2 \sim N(30, 7)$$
> da cui otteniamo
> $$P(X_1^2 + \dots + X_{180}^2 > 25) = P(\sqrt{7}\zeta_0 + 30 > 25) = 1 - \Phi(-1.89) = \Phi(1.89) = 0.97.$$

- [ ] **Es. 11.4.** Sia
$$p(k) = \begin{cases} 2^{-k} & k = 1, 2, \dots, 5 \\ 2^{-5} & k = 6 \\ 0 & \text{altrimenti} \end{cases}$$
(1) Verificare che $p(k)$ è la densità di una variabile aleatoria discreta $X$.
(2) Determinare media e varianza di $X$.
(3) Date 32 variabili aleatorie indipendenti $X_1, \dots, X_{32}$ tutte aventi densità $p(k)$ determinare
$$P(X_1 + \dots + X_{32}) \ge 65.$$

> [!info]- Soluzione
> (a) La funzione $p$ assume solo un numero finito di valori non nulli, che sono tutti positivi. Per vedere che $p(k)$ è una densità astratta basta vedere che
> $$\sum_{k \in \mathbb{R}} p(k) = \sum_{k=1}^6 p(k) = \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \frac{1}{32} + \frac{1}{32} = 1.$$
> Sia $\Omega = \{1, 2, 3, 4, 5, 6\}$ con famiglia di eventi $\mathcal{F} = \mathcal{P}(\Omega)$ e con funzione di probabilità $P : \mathcal{F} \to \mathbb{R}$ definita da
> $$P(A) = \sum_{k \in A} p(k)$$
> Allora $X(k) = k$ è una variabile aleatoria su $(\Omega, \mathcal{F}, P)$, e $p$ coincide con la densità di $X$.
> (b) Abbiamo
> $$E(X) = 1 \cdot \frac{1}{2} + 2 \cdot \frac{1}{4} + 3 \cdot \frac{1}{8} + 4 \cdot \frac{1}{16} + 5 \cdot \frac{1}{32} + 6 \cdot \frac{1}{32} = \frac{63}{32} \sim 1.97$$
> $$E(X^2) = 1 \cdot \frac{1}{2} + 4 \cdot \frac{1}{4} + 9 \cdot \frac{1}{8} + 16 \cdot \frac{1}{16} + 25 \cdot \frac{1}{32} + 36 \cdot \frac{1}{32} = \frac{177}{32} \sim 5.53$$
> $$Var(X) = E(X^2) - E(X)^2 \sim 5.531 - 3.877 = 1.66$$
> (c) Detti $\mu = 1.97$ e $\sigma^2 = 1.66$, dal teorema del limite centrale abbiamo $X_1 + \dots + X_{32} \sim N(32 \cdot \mu, 32 \cdot \sigma^2)$. Essendo $\frac{64.5 - 32\mu}{\sqrt{32\sigma}} \simeq 0.20$, applicando la correzione di continuità troviamo che
> $$P(X_1 + \dots + X_{32} \ge 65) = P(X_1 + \dots + X_{32} \ge 64.5) \simeq P(\sqrt{32}\sigma\zeta_0 + 32\mu \ge 64.5) =$$
> $$= P(\zeta_0 \ge \frac{64.5 - 32\mu}{\sqrt{32}\sigma}) \simeq P(\zeta_0 \ge 0.20) = 1 - P(\zeta_0 < 0.20) =$$
> $$= 1 - \Phi(0.20) \simeq 1 - 0.57926 = 0.42074$$

- [ ] **Es. 11.5.** Giovanni è un esperto di tiro con l'arco. La variabile $X$ ="distanza dal centro del bersaglio di un suo tiro (espressa in decimetri)" è data dal valore assoluto di una variabile aleatoria normale standard, cioè $X = |\zeta_0|$, dove $\zeta_0 \sim N(0, 1)$.
(1) Determinare la probabilità che un suo tiro termini a meno di 5 centimetri di distanza dal centro del bersaglio.
(2) Determinare la funzione di ripartizione $F_X(t)$ di $X$ (espressa in termini di $\Phi(t)$, la funzione di ripartizione di $\zeta_0$)
(3) Determinare la probabilità che il migliore di 5 suoi lanci termini a meno di 1 centimetro di distanza dal centro del bersaglio.
(4) Supponendo che il bersaglio abbia un raggio di 30 centimetri, determinare la probabilità che almeno 1 dei suoi 5 lanci non centri il bersaglio.

> [!info]- Soluzione
> (a) Abbiamo
> $$P(X < 0.5) = P(|\zeta_0| < 0.5) = P(-0.5 < \zeta_0 < 0.5) = \Phi(0.5) - \Phi(-0.5) =$$
> $$= \Phi(0.5) - (1 - \Phi(-0.5)) = 2\Phi(0.5) - 1 = 0.383$$
> (b) In generale se $t \ge 0$ abbiamo
> $$F_X(t) = P(X \le t) = P(-t \le \zeta_0 \le t) = \Phi(t) - \Phi(-t) = 2\Phi(t) - 1.$$
> Pertanto
> $$F_X(t) = \begin{cases} 0 & \text{se } t < 0 \\ 2\Phi(t) - 1 & \text{se } t \ge 0 \end{cases}$$
> (c) Per $i = 1, \dots, 5$, sia $X_i$ la distanza dal centro del bersaglio ottenuta al tiro $i$. Possiamo assumere che le variabili $X_1, \dots, X_5$ sono indipendenti. Per ogni $i = 1, \dots, 5$ abbiamo
> $$P(X_i \ge 0.1) = 1 - F_{X_i}(0.1) = 2 - 2\Phi(0.1) = 0.9204$$
> Pertanto
> $$P(\min(X_1, \dots, X_5) < 0.1) = 1 - P(X_1 \ge 0.1, \dots, X_5 \ge 0.1) = 1 - \prod_{i=1}^5 P(X_i \ge 0.1) =$$
> $$1 - (0.9204)^5 = 1 - 0.6606 = 0.3394$$
> (d) Procedendo come al punto precedente, per ogni $i = 1, \dots, 5$ abbiamo
> $$P(X_i \le 3) = F_{X_i}(3) = 2\Phi(3) - 1 = 0.9974$$
> Pertanto
> $$P(\max(X_1, \dots, X_5) > 3) = 1 - P(X_1 \le 3, \dots, X_5 \le 3) = 1 - \prod_{i=1}^5 P(X_i \le 3) =$$
> $$1 - (0.9974)^5 = 1 - 0.9871 = 0.0129$$

- [ ] **Es. 11.6.** Consideriamo 100 variabili $X_1, \dots, X_{100}$ di densità uniforme nell'intervallo $[-1, 1]$ e indipendenti tra loro.
(1) Determinare la densità della variabile $|X_1|$.
(2) Determinare $P(\frac{|X_1|+\dots+|X_{100}|}{100} > 0.01)$.
(3) Determinare $P(\frac{X_1+\dots+X_{100}}{100} > 0.01)$.
(4) Determinare $P(\frac{X_1^2+\dots+X_{100}^2}{100} > 0.01)$.
(5) Determinare $P(\frac{(X_1+\dots+X_{100})^2}{100} > 0.01)$.

> [!info]- Soluzione
> (a) E' abbastanza chiaro che $|X_1| \sim U([0, 1])$. In effetti $|X_1|$ ha ripartizione
> $$F_{|X_1|}(t) = P(-t < X_1 < t) = \begin{cases} 0 & \text{se } t < 0 \\ t & \text{se } t \in [0, 1] \\ 1 & \text{se } t > 1 \end{cases}$$
> da cui derivando otteniamo la densità
> $$f_{|X_1|}(t) = \begin{cases} 1 & \text{se } t \in [0, 1] \\ 0 & \text{altrimenti} \end{cases}$$
> (b) Essendo $|X_1| \sim U([0, 1])$, abbiamo
> $$\mu = E(|X_1|) = \frac{1}{2}, \quad \sigma^2 = Var(|X_1|) = \frac{1}{12}.$$
> Dal teorema del limite centrale ricaviamo dunque
> $$\frac{|X_1| + \dots + |X_{100}|}{100} \sim N(\mu, \frac{\sigma^2}{100}) = N(\frac{1}{2}, \frac{1}{1200}),$$
> da cui
> $$P(\frac{|X_1|+\dots+|X_{100}|}{100} > 0.01) \simeq P(\frac{\sigma}{10}\zeta_0 + \mu > 0.01) = P(\zeta_0 > \frac{10}{\sigma} \cdot (\frac{1}{100} - \mu)) =$$
> $$P(\zeta_0 > -10\sqrt{12} \cdot \frac{49}{100}) = P(\zeta_0 > -\frac{49\sqrt{3}}{5}) = P(\zeta_0 > -16.97) = 1.$$
> (c) Essendo $X_1 \sim U([-1, 1])$, abbiamo
> $$\mu = E(X_1) = 0, \quad \sigma^2 = Var(|X_1|) = \frac{4}{12} = \frac{1}{3}.$$
> Dal teorema del limite centrale ricaviamo dunque
> $$\frac{X_1 + \dots + X_{100}}{100} \sim N(\mu, \frac{\sigma^2}{100}) = N(0, \frac{1}{300}),$$
> da cui
> $$P(\frac{X_1+\dots+X_{100}}{100} > 0.01) \simeq P(\zeta_0 > \frac{10}{\sigma} \cdot (\frac{1}{100} - \mu)) = P(\zeta_0 > \frac{10\sqrt{3}}{100}) = P(\zeta_0 > \frac{\sqrt{3}}{10}) =$$
> $$= P(\zeta_0 > 0.17) = 1 - P(\zeta_0 \le 0.17) = 1 - \Phi(0.17) = 0.4325$$
> (d) Abbiamo
> $$\mu = E(X_1^2) = \int_{-1}^1 \frac{t^2}{2} dt = \left[ \frac{t^3}{6} \right]_{-1}^1 = \frac{1}{3}$$
> $$E(X_1^4) = \int_{-1}^1 \frac{t^4}{2} dt = \left[ \frac{t^5}{10} \right]_{-1}^1 = \frac{1}{5}$$
> $$\sigma^2 = Var(X_1^2) = E(X_1^4) - E(X_1^2)^2 = \frac{1}{5} - \frac{1}{9} = \frac{4}{45} \simeq 0.09$$
> Pertanto dal teorema del limite centrale abbiamo
> $$\frac{X_1^2 + \dots + X_{100}^2}{100} \sim N(\mu, \frac{\sigma^2}{100}) = N(\frac{1}{3}, \frac{1}{1125}),$$
> da cui
> $$P(\frac{X_1^2+\dots+X_{100}^2}{100} > 0.01) = P(\zeta_0 > \frac{10}{\sigma} \cdot (\frac{1}{100} - \mu)) = P(\zeta_0 > -\frac{97}{30\sigma}) \simeq P(\zeta_0 > -\frac{97}{9}) = 1$$
> (e) Detto $S_{100} = X_1 + \dots + X_{100}$, abbiamo
> $$P(\frac{(X_1+\dots+X_{100})^2}{100} > 0.01) = P(S_{100}^2 > 1) = P(S_{100} < -1) + P(S_{100} > 1).$$
> D'altra parte, come nel punto c), dal teorema del limite centrale abbiamo
> $$S_{100} \sim N(100\mu, 100\sigma^2) = N(0, \frac{100}{3}).$$
> Quindi ricaviamo
> $$P(S_{100} < -1) = P(\zeta_0 < -\frac{\sqrt{3}}{10}) = \Phi(-0.17) = 1 - \Phi(0.17) = 1 - 0.5675 = 0.4325$$
> $$P(S_{100} > 1) = P(\zeta_0 > \frac{\sqrt{3}}{10}) = 1 - \Phi(0.17) = 0.4325$$
> Da cui otteniamo
> $$P(\frac{(X_1+\dots+X_{100})^2}{100} > 0.01) = 0.865.$$

- [ ] **Es. 11.7.** Una miscela radioattiva contiene $10^6$ particelle ognuna delle quali decade in un tempo aleatorio di densità esponenziale di media 1 anno.
(1) Determinare la probabilità che una data particella decada in meno di 2 anni.
(2) Sia $X$ la variabile "numero di particelle che decadono in 5 anni". Che densità ha $X$?
(3) Determinare la probabilità che almeno il 99,3% di queste particelle decada in 5 anni (cioè $P(X > 0,993 \cdot 10^6)$).

> [!info]- Soluzione
> (a) Sia $Y_i$ il tempo di decadimento della $i$-esima particella radioattiva. Allora $Y_i \sim Exp(1)$. Dunque
> $$P(Y_i < 2) = 1 - e^{-2} \simeq 0.865.$$
> (b) Sia $X_i$ la variabile di Bernoulli che vale 1 se l'$i$-esima particella decade in meno di 5 anni. Allora
> $$P(X_i = 1) = P(Y_i < 5) = 1 - e^{-5} \simeq 0.993,$$
> quindi $X_i \sim B(1, 1 - e^{-5})$. D'altra parte $X_1, \dots, X_{10^6}$ sono tutte variabili indipendenti e $X = X_1 + \dots + X_{10^6}$, pertanto $X \sim B(10^6, 1 - e^{-5})$.
> (c) Osserviamo che
> $$E(X_i) = 1 - e^{-5}, \quad Var(X_i) = e^{-5}(1 - e^{-5})$$
> Quindi per il teorema del limite centrale possiamo approssimare $X$ con una variabile normale
> $$X \sim N(10^6(1 - e^{-5}), 10^6e^{-5}(1 - e^{-5}))$$
> Pertanto, essendo $e^{-5} \sim 0.007$, otteniamo
> $$P(X > 0.993 \cdot 10^6) \simeq P\left(\zeta_0 > \frac{0.993 - 1 + e^{-5}}{\sqrt{e^{-5}(1 - e^{-5})}}10^3\right) \simeq P(\zeta_0 > 0) = \frac{1}{2}.$$

- [ ] **Es. 11.8.** Consideriamo 50 variabili $X_1, \dots, X_{50}$ di densità esponenziale di parametro 2 e indipendenti tra loro.
(1) Determinare la densità, media e varianza della variabile $X_1 - 1$.
(2) Determinare $P(X_1 + \dots + X_{50} > 45)$.
(3) Determinare $P(X_1 - X_2 + X_3 - X_4 + \dots + X_{49} - X_{50} > 0.1)$.

> [!info]- Soluzione
> (a) La variabile $Y = X_1 - 1$ ha funzione di ripartizione
> $$F_Y(t) = P(X < t + 1) = F_X(t + 1) = \begin{cases} 0 & \text{se } t < -1 \\ 1 - e^{-2(t+1)} & \text{se } t \ge -1 \end{cases}$$
> Una densità per $Y$ può essere ricavata da $F_Y$ per derivazione
> $$f_Y(t) = \begin{cases} 0 & \text{se } t < -1 \\ 2e^{-2(t+1)} & \text{se } t \ge -1 \end{cases}$$
> Infine abbiamo
> $$E(Y) = E(X_1) - 1 = \frac{1}{2} - 1 = -\frac{1}{2}$$
> $$Var(Y) = Var(X_1) - Var(1) = Var(X_1) = \frac{1}{4}.$$
> (b) Abbiamo $E(X_1) = \frac{1}{2}$, $Var(X_1) = \frac{1}{4}$, vale a dire $\mu = \sigma = \frac{1}{2}$. Usando l'approssimazione normale troviamo quindi
> $$X_1 + \dots + X_{50} \sim N(25, \frac{25}{2}).$$
> Dunque
> $$P(X_1 + \dots + X_{50} > 45) \simeq P(\zeta_0 > \frac{\sqrt{2}(45-25)}{5}) = P(\zeta_0 > 4\sqrt{2}) \simeq 0$$
> (c) Le 25 variabili $X_1 - X_2, X_3 - X_4, \dots, X_{49} - X_{50}$ sono tutte indipendenti e con la stessa densità. D'altra parte
> $$E(X_1 - X_2) = E(X_1) - E(X_2) = 0,$$
> $$Var(X_1 - X_2) = Var(X_1) + (-1)^2Var(X_2) = 2Var(X_1) = \frac{1}{2}$$
> Pertanto $\mu = 0$ e $\sigma = \frac{1}{\sqrt{2}}$, e dal teorema del limite centrale troviamo
> $$(X_1 - X_2) + \dots + (X_{49} - X_{50}) \sim N(0, \frac{25}{2})$$
> da cui
> $$P(X_1 - X_2 + \dots + X_{49} - X_{50} > 0.1) = P(\zeta_0 > \frac{\sqrt{2}}{5 \cdot 10}) = P(\zeta_0 > 0.03) =$$
> $$= 1 - \Phi(0.03) = 0.5120$$

- [ ] **Es. 11.9.** Siano $X \sim N(5, 25)$ e $Y \sim U(\{4, 5, 6\})$ indipendenti.
(1) Determinare $P(X > 6, Y > 5)$;
(2) Determinare $P(X + Y < 7|Y \le 5)$;
(3) determinare $P(X + Y < 8)$;
(4) determinare la funzione di ripartizione di $X + Y$ (in funzione della funzione di ripartizione di una variabile normale standard);

> [!info]- Soluzione
> (a) Abbiamo
> $$P(X > 6, Y > 5) = P(X > 6)P(Y > 5) = P(\zeta_0 > \frac{1}{5})\frac{1}{3} = \frac{1}{3}(1-\Phi(0.20)) = \frac{0.4207}{3} = 0.1402$$
> (b) Abbiamo
> $$P(X + Y < 7|Y \le 5) = \frac{P(X + Y < 7, Y \le 5)}{P(Y \le 5)} = \frac{P(X + Y < 7, Y = 4) + P(X + Y < 7, Y = 5)}{2/3} =$$
> $$= \frac{3}{2}P(X < 3, Y = 4) + \frac{3}{2}P(X < 2, Y = 5) = \frac{3}{2}P(X < 3)P(Y = 4) + \frac{3}{2}P(X < 2)P(Y = 5) =$$
> $$= \frac{1}{2}P(X < 3) + \frac{1}{2}P(X < 2)$$
> D'altra parte
> $$P(X < 2) = P(\zeta_0 < \frac{2-5}{5}) = P(\zeta_0 < -\frac{3}{5}) = 1 - \Phi(0.6) = 1 - 0.7257 = 0.2743$$
> $$P(X < 3) = P(\zeta_0 < \frac{3-5}{5}) = P(\zeta_0 < -\frac{2}{5}) = 1 - \Phi(0.4) = 1 - 0.6554 = 0.3446$$
> Pertanto otteniamo
> $$P(X + Y < 7|Y \le 5) = \frac{0.2743 + 0.3446}{2} = 0.30945$$
> (c) Dal punto successivo, abbiamo
> $$P(X + Y < 8) = \frac{1}{3} \left( \Phi(-\frac{1}{5}) + \Phi(-\frac{2}{5}) + \Phi(-\frac{3}{5}) \right) = 1 - \frac{1}{3} \left( \Phi(\frac{1}{5}) + \Phi(\frac{2}{5}) + \Phi(\frac{3}{5}) \right) =$$
> $$= 1 - \frac{1}{3}(0.5739 + 0.6554 + 0.7257) = 1 - \frac{1}{3}1.955 = 0.3483$$
> (d) Determiniamo la funzione di ripartizione $F_{X+Y}$ in termini di $\Phi(t)$. Abbiamo
> $$F_{X+Y}(t) = P(X + Y \le t) = \sum_{k=4}^6 P(X \le t - k, Y = k) = \sum_{k=4}^6 P(X \le t - k)P(Y = k) =$$
> $$\frac{1}{3}\sum_{k=4}^6 P(X \le t - k) = \frac{1}{3}\sum_{k=4}^6 P(\zeta_0 \le \frac{t-k-5}{5}) = \frac{1}{3}\left(\Phi(\frac{t-9}{5}) + \Phi(\frac{t-10}{5}) + \Phi(\frac{t-11}{5})\right)$$
