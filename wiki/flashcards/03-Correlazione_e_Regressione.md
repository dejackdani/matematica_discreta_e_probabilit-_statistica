# Flashcard: 03 - Correlazione e Regressione
*Fonte: [[Correlazione_e_Regressione]]*

#Q
Che cos'è la **Covarianza Campionaria** tra due caratteri $X$ e $Y$?
?
È un indice che misura la tendenza di due caratteri quantitativi a variare congiuntamente. È definita come la media aritmetica dei prodotti dei loro scarti dalle rispettive medie campionarie:
$$\sigma_{X,Y} = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})$$

#Q
Qual è la **formula operativa semplificata** per il calcolo della covarianza campionaria?
?
La covarianza è uguale alla media campionaria dei prodotti meno il prodotto delle medie campionarie:
$$\sigma_{X,Y} = \overline{xy} - \bar{x}\bar{y}$$

#Q
Come si interpreta il **segno della Covarianza Campionaria**?
?
- $\sigma_{X,Y} > 0$: **Correlazione diretta (positiva)**; al crescere di $X$ ci si aspetta mediamente un aumento di $Y$.
- $\sigma_{X,Y} < 0$: **Correlazione inversa (negativa)**; al crescere di $X$ ci si aspetta mediamente una diminuzione di $Y$.
- $\sigma_{X,Y} = 0$: **Caratteri incorrelati** (nessun legame di tipo lineare).

#Q
Perché la covarianza non è sufficiente a misurare la forza della correlazione e come si definisce il **Coefficiente di Correlazione di Pearson**?
?
La covarianza risente dei cambiamenti di unità di misura (scala). Il coefficiente di correlazione lineare di Pearson $\rho_{X,Y}$ è un numero puro normalizzato:
$$\rho_{X,Y} = \frac{\sigma_{X,Y}}{\sigma_X \sigma_Y}$$

#Q
Quali sono le proprietà fondamentali del **Coefficiente di Correlazione di Pearson** $\rho_{X,Y}$?
?
1. È invariante per trasformazioni lineari (cambi di scala).
2. È compreso nell'intervallo: $-1 \le \rho_{X,Y} \le 1$.
3. $\rho_{X,Y} = 1 \iff$ i punti giacciono esattamente su una retta a pendenza positiva ($a > 0$).
4. $\rho_{X,Y} = -1 \iff$ i punti giacciono esattamente su una retta a pendenza negativa ($a < 0$).

#Q
Qual è l'obiettivo della **Retta di Regressione ai Minimi Quadrati** e quali sono i suoi parametri ottimali?
?
L'obiettivo è stimare $Y$ in funzione di $X$ tramite una retta $y = ax + b$ minimizzando la media dei quadrati degli errori $E(a,b) = \frac{1}{n}\sum_{i=1}^n (y_i - ax_i - b)^2$.
I coefficienti ottimali sono:
$$a = \frac{\sigma_{X,Y}}{\sigma_X^2}, \qquad b = \bar{y} - a\bar{x}$$
In particolare, la retta passa sempre per il baricentro $(\bar{x}, \bar{y})$ dei dati.

#Q
A quanto ammonta l'**Errore Quadratico Medio Minimo** della retta ai minimi quadrati?
?
Sostituendo i parametri ottimali si ottiene:
$$E(a,b) = \sigma_Y^2 (1 - \rho_{X,Y}^2)$$
Questo conferma che l'errore è nullo se e solo se $\rho_{X,Y} = \pm 1$.

#Q
Cosa sono i **Quantili**, la **Mediana** e i **Quartili**?
?
- **Quantili di ordine $k$:** suddividono le osservazioni ordinate in $k$ blocchi equinumerosi.
- **Mediana (quantile di ordine 2):** valore centrale che bipartisce il campione al $50\%$.
- **Quartili (ordine 4):** $Q_1$, $Q_2 = \text{mediana}$, $Q_3$. La differenza $Q_3 - Q_1$ è lo **scarto interquartile**, indice di dispersione robusto contro gli outlier.

#Q
A cosa serve la **Media Geometrica** e come si calcola?
?
Serve a calcolare il valore medio per grandezze che si compongono moltiplicativamente, come variazioni percentuali concatenate, tassi d'interesse o inflazione.
Si calcola come la radice $n$-esima del prodotto dei valori:
$$G = \sqrt[n]{x_1 x_2 \cdots x_n}$$

#Q
A cosa serve la **Media Armonica** e come si calcola?
?
Serve quando le osservazioni sono espresse come rapporti in cui la grandezza al numeratore rimane costante (es. velocità media su tratti di uguale distanza).
Si calcola come il reciproco della media dei reciproci:
$$H = \frac{n}{\sum_{i=1}^n \frac{1}{x_i}}$$
