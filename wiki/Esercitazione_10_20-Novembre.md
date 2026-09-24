---
title: Esercizi 10 - Variabili aleatorie continue
stato_esercitazione: 🔴 Da Svolgere
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 10.1.** Sia $X$ una variabile continua uniforme nell'intervallo $[0, 2]$. Si consideri la variabile $Y = \frac{1}{X+1}$.
(1) Determinare $P(Y < \frac{1}{2})$.
(2) Determinare la funzione di ripartizione di $Y$;
(3) Determinare la densità di $Y$.

> [!info]- Soluzione
> Ricordiamo che la funzione di ripartizione di $X$ è data da
> $$F_X(t) = \begin{cases} 0 & \text{se } t \le 0 \\ \frac{t}{2} & \text{se } 0 \le t \le 2 \\ 1 & \text{se } t \ge 2. \end{cases}$$
> (a) Abbiamo
> $$P(Y < \frac{1}{2}) = P(\frac{1}{X + 1} < \frac{1}{2}) = P(X > 1) = \frac{1}{2}.$$
> (b) Osserviamo intanto che $Y$ assume valori in $[1/3, 1]$ prendiamo quindi $t \in [1/3, 1]$ e calcoliamo
> $$F_Y(t) = P(Y < t) = P(X > \frac{1 - t}{t}) = 1 - F_X(\frac{1 - t}{t}) = 1 - \frac{1 - t}{2t} = \frac{3t - 1}{2t}$$
> e concludiamo
> $$F_Y(t) = \begin{cases} 0 & \text{se } t \le \frac{1}{3} \\ \frac{3t-1}{2t} & \text{se } \frac{1}{3} \le t \le 1 \\ 1 & \text{se } t \ge 1. \end{cases}$$
> (c) La densità di $Y$ possiamo a questo punto determinarla per derivazione della funzione di ripartizione e otteniamo quindi
> $$f_Y(s) = \begin{cases} 0 & \text{se } s < \frac{1}{3} \text{ oppure } s > 1 \\ \frac{1}{2s^2} & \text{se } \frac{1}{3} < s < 1 \\ 1 & \text{se } s > 1. \end{cases}$$

- [ ] **Es. 10.2.** Ubaldo prende il tram tutte le mattine per andare al lavoro. Arriva alla fermata in un orario casuale e sappiamo che passa un autobus ogni dieci minuti. Siano $T_i, i = 1, \dots, 30$ i tempi di attesa in 30 giorni di lavoro.
(1) Determinare la densità delle $T_i$;
(2) Qual è la probabilità che aspetti sempre (in questi 30 giorni) più di 5 minuti?

> [!info]- Soluzione
> (a) Le variabili $T_i$ sono tutte continue uniformi $T_i \sim U([0, 10])$ se espresse in minuti.
> (b) Abbiamo
> $$P(T_1 > 5, \dots, T_{30} > 5) = (1/2)^{30} = 0.$$

- [ ] **Es. 10.3.** Un impianto d'allarme dà falsi allarmi in intervalli di tempo di densità esponenziale di parametro 1 (se espressi in anni).
(1) Calcolare la probabilità che nel prossimo anno ci sia qualche falso allarme.
(2) Sapendo che in un anno ci sono stati 2 falsi allarmi, qual è la probabilità che nell'anno successivo ci sia almeno un falso allarme?
(3) Due case montano questo impianto d'allarme. Qual è la probabilità che almeno 1 dia un falso allarme nei prossimi 6 mesi? E tutti e 2?

> [!info]- Soluzione
> Sia $T$ il tempo di attesa del prossimo falso allarme.
> (a) Usando il fatto che le variabili esponenziali mancano di memoria, vediamo che $T$ è anche una variabile esponenziale di parametro 1. Sia infatti $X$ l'intervallo il tempo che separa il prossimo falso allarme dal precedente, allora dal testo $X \sim Exp(1)$. Detto $u$ il tempo già trascorso dall'ultimo falso allarme, troviamo dunque
> $$P(T \le t) = P(X \le t + u|X \ge u) = 1 - P(X \ge t + u|X \ge u) =$$
> $$= 1 - P(X \ge t) = P(X \le t).$$
> Pertanto $T \sim Exp(1)$ e troviamo $P(T \le 1) = 1 - e^{-1} = 0,632$.
> (b) Falsi allarmi distinti sono fenomeni indipendenti, e le variabili esponenziali mancano di memoria. Pertanto tale probabilità è sempre $0,632$.
> (c) Siano $T_1$ e $T_2$ i tempi di attesa per un falso allarme nelle due case. La risposta alla prima domanda è
> $$P(\min(T_1, T_2) < \frac{1}{2}) = 1 - P(T_1 > \frac{1}{2})P(T_2 > \frac{1}{2}) = 1 - e^{-\frac{1}{2}}e^{-\frac{1}{2}} = 0,632.$$
> La risposta all'ultima domanda è
> $$P(\max(T_1, T_2) < \frac{1}{2}) = P(T_1 < \frac{1}{2})P(T_2 < \frac{1}{2}) = (1 - e^{-\frac{1}{2}})^2 = 0,155.$$

- [ ] **Es. 10.4.** Sia $X$ una variabile aleatoria continua la cui funzione di ripartizione è
$$F(t) = \begin{cases} 0 & \text{se } t \le 0; \\ \frac{2t}{3} & \text{se } 0 < t \le 1; \\ \frac{t+1}{3} & \text{se } 1 < t \le 2; \\ 1 & \text{se } t > 2; \end{cases}$$
(1) Determinare la densità di $X$;
(2) determinare media e varianza di $X$.

> [!info]- Soluzione
> (a) La densità si ottiene per derivazione. Abbiamo
> $$f_X(s) = \begin{cases} 0 & \text{se } s < 0 \text{ oppure } s > 2 \\ \frac{2}{3} & \text{se } 0 < s < 1 \\ \frac{1}{3} & \text{se } 1 < s < 2 \end{cases}$$
> (b) Calcoliamo
> $$E[X] = \int_0^1 s \frac{2}{3} ds + \int_1^2 s \frac{1}{3} ds = \frac{2}{3} \left[ \frac{s^2}{2} \right]_0^1 + \frac{1}{3} \left[ \frac{s^2}{2} \right]_1^2 = \frac{1}{3} + \frac{1}{3} \frac{3}{2} = \frac{5}{6}.$$
> Similmente
> $$E[X^2] = \frac{2}{3} \left[ \frac{s^3}{3} \right]_0^1 + \frac{1}{3} \left[ \frac{s^3}{3} \right]_1^2 = \frac{2}{9} + \frac{1}{3} \frac{7}{3} = 1$$
> e quindi
> $$Var(X) = 1 - \frac{25}{36} = \frac{11}{36}$$

- [ ] **Es. 10.5.** Sia
$$f(s) = \begin{cases} as(s - 20) & \text{se } 0 \le s \le 20 \\ 0 & \text{altrimenti.} \end{cases}$$
una funzione dipendente da un parametro reale $a$.
a. Mostrare che esiste un unico valore $a$ per cui $f(s)$ è la densità di una variabile aleatoria continua $X$.
b. Determinare il valore atteso $E[X]$.
c. Stabilire se $P(X > 5|X > 4) = P(X > 1)$.

> [!info]- Soluzione
> a. Si ha $f(s) \ge 0$ per ogni $s \in \mathbb{R}$ se e solo se $a \le 0$. Inoltre calcoliamo l'integrale su tutto $\mathbb{R}$
> $$\int_{-\infty}^{+\infty} f(s) ds = \int_0^{20} as(s - 20) ds = -\frac{4000}{3}a$$
> da cui, per essere 1, otteniamo $a = -\frac{3}{4000}$ che essendo $< 0$ è accettabile.
> b. Osserviamo che il grafico di $f(s)$ è una parabola che si annulla in 0 e 20 ed è quindi simmetrica rispetto all'asse $s = 10$. Deduciamo che $E[X] = 10$. Altrimenti possiamo calcolare
> $$E[X] = -\frac{3}{4000} \int_0^{20} (s^3 - 20s^2)ds = -\frac{3}{4000} \left[ \frac{s^4}{4} - \frac{20s^3}{3} \right]_0^{20} = 10.$$
> c. Abbiamo
> $$P(X > 5|X > 4) = \frac{P(X > 5)}{P(X > 4)} = \frac{-\frac{3}{4000} \int_5^{20} (s^2 - 20s) ds}{-\frac{3}{4000} \int_4^{20} (s^2 - 20s) ds}$$
> $$= \frac{[s^3/3 - 10s^2]_5^{20}}{[s^3/3 - 10s^2]_4^{20}}$$
> $$= \frac{3375}{3584} = 0.95.$$
> Invece
> $$P(X > 1) = 1 - (-3/4000)) \int_0^1 (s^2 - 20s) ds$$
> $$= 1 + \frac{3}{4000}(-29/3)$$
> $$= \frac{3971}{4000} = 0.99$$
> per cui le due probabilità sono diverse.

- [ ] **Es. 10.6.** Consideriamo la funzione $f : \mathbb{R} \to \mathbb{R}$ data da
$$f(s) = \begin{cases} 0 & \text{se } |s| > 1 \\ 1 + s & \text{se } -1 < s < 0 \\ 1 - s & \text{se } 0 < s < 1 \end{cases}$$
(1) verificare che $f$ è una densità continua;
(2) detta $X$ una variabile aleatoria continua di densità continua $f$ determinare la funzione di ripartizione di $X$;
(3) determinare $E[X^2]$, $E[X^4]$ e $Var(X^2)$.

> [!info]- Soluzione
> (a) La funzione è sempre $\ge 0$, continua e inoltre si ha
> $$\int_{-\infty}^{+\infty} f(s) ds = 1$$
> (per questo basta calcolare l'area dei triangoli individuati dal grafico di $f$) per cui $f$ è una densità continua.
> (b) Se $-1 < t < 0$ abbiamo
> $$F_X(t) = \int_{-\infty}^t f(s) ds = \int_{-1}^t (1 + s)ds = \frac{(t + 1)^2}{2}$$
> mentre se $0 < t < 1$ abbiamo
> $$F_X(t) = \int_{-\infty}^t f(s) ds = \frac{1}{2} + \int_0^t (1 - s)ds = 1 - \frac{(1 - t)^2}{2}$$
> e quindi
> $$F_X(t) = \begin{cases} 0 & \text{se } t \le -1 \\ \frac{t^2+2t+1}{2} & \text{se } -1 \le t \le 0 \\ \frac{-t^2+2t+1}{2} & \text{se } 0 < t \le 1 \\ 1 & \text{se } t \ge 1 \end{cases}$$
> (c) Abbiamo
> $$E[X^2] = \int_{-1}^0 s^2(1 + s)ds + \int_0^1 s^2(1 - s) ds = \frac{1}{6}.$$
> Similmente calcoliamo
> $$E[X^4] = \frac{1}{15},$$
> da cui
> $$Var(X^2) = E[X^4] - E[X^2]^2 = \frac{1}{15} - \frac{1}{36} = \frac{7}{180}.$$
