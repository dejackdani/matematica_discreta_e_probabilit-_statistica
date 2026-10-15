---
indice: "4.2"
tipo: riassunto_fonte
tags:
  - statistica_descrittiva
  - correlazione
  - regressione
data_creazione: 2026-10-15
fonti_usate:
  - "[[MdP20261009.md]]"
  - "[[lezioniNew.pdf]]"
stato: "🔴 Da Iniziare"
difficolta: Media
ultimo_ripasso:
tempo_stimato: 25 min
---

# Correlazione, Regressione e Altri Indici di Posizione

Nello studio della statistica descrittiva, quando su ogni unità di un medesimo campione vengono rilevati **due caratteri quantitativi congiunti** $(X, Y)$ (es. ore di studio e voto d'esame, oppure altezza e peso), l'obiettivo è misurare l'eventuale relazione o influenza reciproca fra di essi.

---

## Dettagli Teorici

### 1. Covarianza Campionaria

Per valutare se all'aumentare di un carattere l'altro tenda a crescere o decrescere, si esamina il segno del prodotto degli scarti dalle rispettive medie campionarie:
$$(x_i - \bar{x})(y_i - \bar{y})$$

> [!definition] Covarianza Campionaria
> La **covarianza campionaria** $\sigma_{X,Y}$ di due caratteri $X$ e $Y$ su un campione di ampiezza $n$ è la media aritmetica dei prodotti dei loro scarti:
> $$\sigma_{X,Y} = \frac{1}{n}\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})$$

In base al segno della covarianza distinguiamo:
- **$\sigma_{X,Y} > 0$ (Correlazione Diretta o Positiva):** i termini con scarti concordi prevalgono; al crescere di $X$ ci si attende mediamente una crescita di $Y$.
- **$\sigma_{X,Y} < 0$ (Correlazione Inversa o Negativa):** i termini con scarti discordi prevalgono; al crescere di $X$ ci si attende mediamente una diminuzione di $Y$.
- **$\sigma_{X,Y} = 0$ (Caratteri Incorrelati):** non esiste alcuna tendenza di tipo lineare tra le due variabili (ciò non esclude una dipendenza di tipo non lineare, ad esempio parabolica).

> [!info] Approfondimento dalle Dispense: Formula Operativa della Covarianza
> Come dimostrato in `lezioniNew.pdf` (Lemma 4.15):
> $$\sigma_{X,Y} = \overline{xy} - \bar{x}\bar{y}$$
> ossia la covarianza campionaria è uguale alla media campionaria del prodotto delle due variabili meno il prodotto delle rispettive medie campionarie.

---

### 2. Il Coefficiente di Correlazione Lineare di Pearson

La covarianza dipende dall'unità di misura e dai cambi di scala dei dati. Per ovviare a questo problema, si introduce un numero puro (adimensionale) dividendo la covarianza per il prodotto delle deviazioni standard:

> [!definition] Indice di Correlazione di Pearson
> Il **coefficiente di correlazione lineare** $\rho_{X,Y}$ è definito come:
> $$\rho_{X,Y} = \frac{\sigma_{X,Y}}{\sigma_X \sigma_Y}$$

**Proprietà fondamentali:**
1. È invariante per trasformazioni lineari (cambiamenti di scala).
2. È sempre compreso tra $-1$ e $1$:
   $$-1 \le \rho_{X,Y} \le 1$$
3. $\rho_{X,Y} = 1$ se e solo se i punti del campione si dispongono esattamente su una retta con pendenza positiva ($a > 0$).
4. $\rho_{X,Y} = -1$ se e solo se i punti si dispongono esattamente su una retta con pendenza negativa ($a < 0$).
5. Più $|\rho_{X,Y}|$ è prossimo a $1$, migliore è l'approssimazione dei dati tramite una retta.

---

### 3. Retta di Regressione ai Minimi Quadrati

Se desideriamo stimare un carattere dipendente $Y$ in funzione del carattere esplicativo $X$ tramite una retta $y = ax + b$, per ciascuna osservazione commettiamo un errore pari a $e_i = y_i - (ax_i + b)$.

Il **metodo dei minimi quadrati** determina la coppia di parametri $(a, b)$ che rende minima la media dei quadrati degli errori:
$$E(a,b) = \frac{1}{n}\sum_{i=1}^n (y_i - ax_i - b)^2$$

> [!theorem] Parametri della Retta ai Minimi Quadrati
> I parametri ottimali che minimizzano $E(a,b)$ sono dati da:
> $$a = \frac{\sigma_{X,Y}}{\sigma_X^2}, \qquad b = \bar{y} - a\bar{x}$$
> In particolare:
> 1. La retta di regressione **passa sempre per il baricentro** $(\bar{x}, \bar{y})$ dei dati.
> 2. Il coefficiente angolare $a$ ha lo stesso segno della covarianza $\sigma_{X,Y}$.
> 3. L'errore quadratico medio minimo commesso vale:
>    $$E(a,b) = \sigma_Y^2(1 - \rho_{X,Y}^2)$$

---

### 4. Altri Indici di Posizione e Medie Trasformate

Quando i dati hanno natura moltiplicativa, tassi di variazione o rapporti con grandezze costanti, la media aritmetica non è idonea.

#### Quantili, Quartili e Mediana
- **Quantili di ordine $k$:** suddividono le osservazioni ordinate in $k$ intervalli equinumerosi.
- **Mediana (quantile di ordine 2):** valore centrale che separa il $50\%$ inferiore dal $50\%$ superiore del campione.
- **Quartili (ordine 4):** $Q_1$, $Q_2 = \text{mediana}$, $Q_3$. Lo **scarto interquartile** $Q_3 - Q_1$ rappresenta la dispersione del $50\%$ centrale delle osservazioni, immune da outlier estremi.
- **Percentili (ordine 100):** ad esempio, il 90° percentile lascia alla sua sinistra il $90\%$ del campione.

#### Media Geometrica
Impiegata per grandezze che si moltiplicano tra loro, come tassi di crescita, inflazione o rendimenti finanziari cumulati:
$$G = \sqrt[n]{x_1 x_2 \cdots x_n}$$
*Esempio:* variazioni percentuali annue trasformate in fattori moltiplicativi ($+10\% \to 1.10$, $-20\% \to 0.80$).

#### Media Armonica
Impiegata per grandezze espresse come rapporto (es. velocità $\text{km/h} = \text{spazio}/\text{tempo}$) quando la quantità al numeratore (lo spazio percorso) rimane costante:
$$H = \frac{n}{\sum_{i=1}^n \frac{1}{x_i}} = \left(\frac{1}{n}\sum_{i=1}^n \frac{1}{x_i}\right)^{-1}$$

---

## 📝 Domande di Verifica

> [!question]- 19. Covarianza. Cos'è? Come si trova?
> **Risposta:**
> La covarianza di due caratteri $X$ e $Y$ è un indice che misura la tendenza delle due variabili a variare congiuntamente (la loro dipendenza lineare). 
> È definita come la media aritmetica del prodotto degli scarti dalle rispettive medie:
> $$\sigma_{X,Y} = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})$$
> Può essere positiva (caratteri direttamente correlati), negativa (inversamente correlati) o nulla (incorrelati).
> Operativamente si calcola con la formula semplificata:
> $$\sigma_{X,Y} = \overline{xy} - \bar{x}\bar{y}$$
> ossia la media dei prodotti meno il prodotto delle medie.

> [!question]- 20. Cos'è un indice di correlazione? Come capisco se ho una buona approssimazione?
> **Risposta:**
> Date due variabili $X$ e $Y$, l'indice di correlazione lineare di Pearson $\rho_{X,Y}$ è dato dal rapporto tra la covarianza e il prodotto delle rispettive deviazioni standard:
> $$\rho_{X,Y} = \frac{\sigma_{X,Y}}{\sigma_X \sigma_Y}$$
> È un numero puro adimensionale invariante per cambi di scala, con valore compreso in $[-1, 1]$.
> Si ha una buona approssimazione lineare quando $|\rho_{X,Y}|$ è vicino a $1$. In particolare, se $\rho_{X,Y} = \pm 1$, i punti giacciono esattamente su una retta e l'errore quadratico della regressione è nullo ($E = \sigma_Y^2(1-\rho^2) = 0$).

> [!question]- 22. A cosa serve la media geometrica? Come si calcola?
> **Risposta:**
> La media geometrica di $n$ valori positivi è definita come la radice $n$-esima del loro prodotto:
> $$G = \sqrt[n]{\prod_{i=1}^n x_i}$$
> Trova impiego dove i valori per loro natura si compongono moltiplicativamente e non per somma, come nel calcolo di variazioni percentuali concatenate, tassi di interesse composti o tassi di inflazione medi. Un singolo valore nullo annulla l'intera media geometrica.

> [!question]- 23. Retta ai minimi quadrati, qual è il suo scopo? Come si trova? Che cos'è? Definizione.
> **Risposta:**
> Lo scopo della retta ai minimi quadrati (o retta di regressione) è stimare e approssimare l'andamento del carattere $Y$ in funzione di $X$ tramite una retta $y = ax + b$, minimizzando la media dei quadrati degli errori verticali $E(a,b) = \frac{1}{n}\sum_{i=1}^n (y_i - (ax_i+b))^2$.
> I coefficienti ottimali sono:
> $$a = \frac{\sigma_{X,Y}}{\sigma_X^2}, \qquad b = \bar{y} - a\bar{x}$$
> La retta passa necessariamente per il baricentro $(\bar{x}, \bar{y})$ dei dati del campione e la sua pendenza $a$ condivide il segno della covarianza $\sigma_{X,Y}$.
