---
title: Esercizi Densità congiunta
stato_esercitazione: 🔴 Da Svolgere
file_sorgente: "EserciziMDPnew.pdf"
---
# Esercizi: Densità congiunta e indipendenza

- [ ] **Es. 8.1.** Si considerino 2 variabili aleatorie indipendenti $X$ ed $Y$. Sono noti i seguenti valori della densità congiunta
  $X$ assume i valori 0 e 2.
  $Y$ assume i valori 0, -1, 3.
  $d_{X,Y}(0, 0) = 1/20$
  $d_{X,Y}(2, 0) = 1/5$
  $d_{X,Y}(0, -1) = 1/15$
  $d_{X,Y}(2, -1) = 4/15$
  $d_{X,Y}(0, 3) = 1/12$
  $d_{X,Y}(2, 3) = t$
  (1) Detto $t = d_{X,Y}(2, 3)$ giustificare il fatto che $t$ soddisfa la seguente equazione:
  $(\frac{1}{12} + t)(\frac{1}{5} + \frac{4}{15} + t) = t$
  (2) Calcolare i possibili valori per $t$.
  (3) Scelto uno di questi valori completare la tabella a doppia entrata della densità congiunta delle variabili $X$ ed $Y$.

> [!info]- Soluzione
> (a) Abbiamo $d_Y(3) = \frac{1}{12} + t$ e $d_X(2) = \frac{1}{5} + \frac{4}{15} + t$ per cui questa equazione viene semplicemente dalla condizione
> $d_{X,Y}(2, 3) = d_X(2)d_Y(3)$.
> (b) L'equazione del punto precedente diventa $180t^2 - 81t + 7 = 0$ che ha come soluzioni $\frac{1}{3}$ e $\frac{7}{60}$.
> (c) Per completare la tabella è sufficiente osservare che vale l'identità
> $d_{X,Y}(a, b)d_{X,Y}(c, d) = d_{X,Y}(a, d)d_{X,Y}(c, b)$
> per ogni scelta di $a, b, c, d$. Otteniamo quindi
> $d_{X,Y}(0, -1)t = d_{X,Y}(0, -1)d_{X,Y}(2, 3) = d_{X,Y}(0, 3)d_{X,Y}(2, -1) = \frac{1}{12}\frac{4}{15}$
> da cui ricaviamo $d_{X,Y}(0, -1) = \frac{1}{45t}$ e similmente possiamo ottenere $d_{X,Y}(0, 0) = \frac{1}{60t}$
> Scegliendo quindi $t = \frac{1}{3}$ otteniamo la tabella
> Scegliendo invece $t = \frac{7}{60}$ otterremmo un'altra tabella valida.
> Entrambe le tabelle sono valide.

- [ ] **Es. 8.2.** Un'urna contiene 4 palline numerate 1,2,3,4. Effettuiamo 6 estrazioni con rimpiazzo. Consideriamo le variabili aleatorie $X_1, X_2, X_3, X_4$ date da $X_i = 1$ se la pallina con il numero $i$ è stata estratta almeno una volta e $X_i = 0$ altrimenti.
  - Stabilire se $X_1$ e $X_3$ sono indipendenti.
  - Determinare la densità congiunta delle variabili $(X_1, X_2, X_3, X_4)$,

> [!info]- Soluzione
> (a) $X_1$ e $X_3$ sono dipendenti perché $X_1 = 0$ (non peschiamo mai la pallina 1) "fa aumentare" la probabilità che $X_3 = 1$ (la pallina 3 viene pescata almeno uno volta). E infatti
> $P(X_1 = 0, X_3 = 0) = (\frac{1}{2})^6$
> mentre
> $P(X_1 = 0) = P(X_3 = 0) = (\frac{3}{4})^6$
> per cui $P(X_1 = 0, X_3 = 0) \neq P(X_1 = 0) \cdot P(X_3 = 0)$.
> (b) per simmetria sarà sufficiente calcolare la densità congiunta in $(0, 0, 0, 0)$, $(1, 0, 0, 0)$, $(1, 1, 0, 0)$, $(1, 1, 1, 0)$ e $(1, 1, 1, 1)$. Abbiamo
> $P(X_1 = X_2 = X_3 = X_4 = 0) = 0$
> (non è possibile che nessuna pallina sia stata pescata)
> $P(X_1 = 1, X_2 = X_3 = X_4 = 0) = (\frac{1}{4})^6 = \frac{1}{4096}$
> (probabilità di pescare sempre la pallina 1)
> $P(X_1 = X_2 = 1, X_3 = X_4 = 0) = (\frac{1}{2})^6 - 2(\frac{1}{4})^6 = \frac{62}{4096}$
> (probabilità di pescare sempre 1 o 2, meno probabilità di pescare sempre 1, meno probabilità di pescare sempre 2)
> $P(X_1 = X_2 = X_3 = 1, X_4 = 0) = (\frac{3}{4})^6 - 3 \cdot \frac{62}{4096} - 3 \cdot \frac{1}{4096} = \frac{540}{4096}$
> e infine
> $P(X_1 = X_2 = X_3 = X_4 = 1) = 1 - 4 \cdot \frac{540}{4096} - 6 \cdot \frac{62}{4096} - 4 \cdot \frac{1}{4096} = \frac{1560}{4096}$.

- [ ] **Es. 8.3.** Due dadi, uno rosso e uno blu, vengono lanciati simultaneamente per 3 volte. Si considerino le seguenti variabili aleatorie:
  - $X$ = Numero di volte in cui un dado ha dato come risultato 1 o 6;
  - $Y$ = Numero di lanci in cui il dado rosso ha dato risultato minore o uguale a 3;
  - $Z$ = Numero di lanci in cui la somma dei dadi ha dato 7.
  (1) Determinare la densità delle variabili $X, Y$ e $Z$;
  (2) Stabilire se $X$ ed $Y$ sono indipendenti;
  (3) Stabilire se $Y$ e $Z$ sono indipendenti;
  (4) Stabilire se $X$ e $Z$ sono indipendenti.

> [!info]- Soluzione
> (a) Abbiamo
> $X \sim B(6, \frac{1}{3})$, $Y \sim B(3, \frac{1}{2})$, $Z \sim B(3, \frac{1}{6})$.
> (b) Scriviamo $X = X_1 + X_2 + X_3 + X_4 + X_5 + X_6$ e $Y = Y_1 +Y_2 +Y_3$ come somma di variabili di Bernoulli indipendenti come al solito. Per mostrare che $X$ ed $Y$ sono indipendenti, dobbiamo mostrare che le 9 variabili coinvolte
> $X_1, X_2, X_3, X_4, X_5, X_6, Y_1, Y_2, Y_3$
> sono tutte indipendenti. Siccome lanci diversi non si influenzano, basta vedere che le variabili coinvolte sono indipendenti quando riguardano lo stesso lancio. Ma questa è una semplice verifica.
> (c) Come nel punto precedente.
> (d) Queste sono invece dipendenti perché ad esempio $P(X = 5, Z = 3) = 0$ mentre $P(X = 5)$ e $P(Z = 3)$ sono entrambe non nulle.
