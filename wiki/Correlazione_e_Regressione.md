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
  - "[[MDP Domande orale.pdf]]"
---

# Correlazione, Regressione e Altri Indici di Posizione

Nello studio della [[Statistica_Descrittiva_di_Base|statistica descrittiva]], quando su ogni unità di un medesimo campione vengono rilevati **due caratteri quantitativi congiunti** $(X, Y)$ (es. ore di studio e voto d'esame, oppure altezza e peso), l'obiettivo è misurare l'eventuale relazione o influenza reciproca fra di essi (si vedano gli esercizi applicativi in [[Esercitazione_05_16-Ottobre]] e le flashcard in [[03-Correlazione_e_Regressione]]).

---

## Dettagli Teorici

### 1. Covarianza Campionaria

Per valutare se all'aumentare di un carattere l'altro tenda a crescere o decrescere, si esamina il segno del prodotto degli scarti dalle rispettive medie campionarie:
$$(\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})(\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - \textcolor{teal}{\bar{y}})$$

> [!summary] Definizione: Covarianza Campionaria
> La **covarianza campionaria** $\sigma_{X,Y}$ di due caratteri $X$ e $Y$ su un campione di ampiezza $\textcolor{blue}{n}$ è la media aritmetica dei prodotti dei loro scarti:
> $$\sigma_{X,Y} = \frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})(\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - \textcolor{teal}{\bar{y}})$$

In base al segno della covarianza distinguiamo:
- **$\sigma_{X,Y} > 0$ (Correlazione Diretta o Positiva):** i termini con scarti concordi prevalgono; al crescere di $X$ ci si attende mediamente una crescita di $Y$.
- **$\sigma_{X,Y} < 0$ (Correlazione Inversa o Negativa):** i termini con scarti discordi prevalgono; al crescere di $X$ ci si attende mediamente una diminuzione di $Y$.
- **$\sigma_{X,Y} = 0$ (Caratteri Incorrelati):** non esiste alcuna tendenza di tipo lineare tra le due variabili (ciò non esclude una dipendenza di tipo non lineare, ad esempio parabolica).

> [!info] Proposizione: Formula Operativa della Covarianza
> Come dimostrato in [[lezioniNew.pdf]] (Lemma 4.15), la covarianza campionaria è uguale alla media campionaria del prodotto delle due variabili meno il prodotto delle rispettive medie campionarie:
> $$\sigma_{X,Y} = \overline{\textcolor{purple}{x}\textcolor{teal}{y}} - \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}}$$

> [!quote] Dimostrazione
> Sviluppando il prodotto degli scarti e applicando la linearità della media:
> $$\sigma_{X,Y} = \frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}}\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}\textcolor{teal}{\bar{y}} - \textcolor{purple}{\bar{x}}\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} + \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}}) = \overline{\textcolor{purple}{x}\textcolor{teal}{y}} - \textcolor{teal}{\bar{y}}\textcolor{purple}{\bar{x}} - \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}} + \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}} = \overline{\textcolor{purple}{x}\textcolor{teal}{y}} - \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}}$$

---

### 2. Il Coefficiente di Correlazione Lineare di Pearson

La covarianza dipende dall'unità di misura e dai cambi di scala dei dati. Per ovviare a questo problema, si introduce un numero puro (adimensionale) dividendo la covarianza per il prodotto delle deviazioni standard:

> [!summary] Definizione: Indice di Correlazione Lineare di Pearson
> Il **coefficiente di correlazione lineare** $\rho_{X,Y}$ è definito come:
> $$\rho_{X,Y} = \frac{\sigma_{X,Y}}{\sigma_X \sigma_Y}$$

> [!info] Proposizione: Proprietà e Limitazione dell'Indice di Pearson
> L'indice di correlazione lineare $\rho_{X,Y}$ soddisfa le seguenti proprietà fondamentali:
> 1. È un numero puro invariante per trasformazioni lineari crescenti (cambiamenti di scala).
> 2. È sempre compreso tra $-1$ e $1$:
>    $$-1 \le \rho_{X,Y} \le 1$$
> 3. $\rho_{X,Y} = 1$ se e solo se i punti del campione si dispongono esattamente su una retta con pendenza positiva ($a > 0$).
> 4. $\rho_{X,Y} = -1$ se e solo se i punti si dispongono esattamente su una retta con pendenza negativa ($a < 0$).
> 5. Più $|\rho_{X,Y}|$ è prossimo a $1$, migliore è l'approssimazione dei dati tramite una retta.

---

### 3. Retta di Regressione ai Minimi Quadrati

> [!summary] Definizione: Retta di Regressione ai Minimi Quadrati
> Se desideriamo stimare un carattere dipendente $Y$ in funzione del carattere esplicativo $X$ tramite una retta $\textcolor{teal}{y} = a\textcolor{purple}{x} + b$, per ciascuna osservazione commettiamo un errore pari a $e_{\textcolor{darkgreen}{i}} = \textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - (a\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + b)$.
> Il **metodo dei minimi quadrati** determina la coppia di parametri $(a, b)$ che rende minima la media dei quadrati degli errori:
> $$E(a,b) = \frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - a\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - b)^2$$

> [!info] Teorema: Parametri della Retta ai Minimi Quadrati
> I parametri ottimali che minimizzano $E(a,b)$ sono dati da:
> $$a = \frac{\sigma_{X,Y}}{\sigma_X^2}, \qquad b = \textcolor{teal}{\bar{y}} - a\textcolor{purple}{\bar{x}}$$
> In particolare:
> 1. La retta di regressione **passa sempre per il baricentro** $(\textcolor{purple}{\bar{x}}, \textcolor{teal}{\bar{y}})$ dei dati.
> 2. Il coefficiente angolare $a$ ha lo stesso segno della covarianza $\sigma_{X,Y}$.
> 3. L'errore quadratico medio minimo commesso vale:
>    $$E(a,b) = \sigma_Y^2(1 - \rho_{X,Y}^2)$$

> [!quote] Dimostrazione
> Poiché l'errore quadratico medio $E(a,b) \ge 0$ per definizione, sostituendo i parametri ottimali si ottiene $E(a,b) = \sigma_Y^2(1 - \rho_{X,Y}^2) \ge 0$. Essendo $\sigma_Y^2 > 0$, segue necessariamente che $1 - \rho_{X,Y}^2 \ge 0$, ovvero $\rho_{X,Y}^2 \le 1 \iff -1 \le \rho_{X,Y} \le 1$, e l'errore si annulla ($E=0$, tutti i punti allineati) se e solo se $\rho_{X,Y} = \pm 1$.

---

### 4. Altri Indici di Posizione e Medie Trasformate

Quando i dati hanno natura moltiplicativa, tassi di variazione o rapporti con grandezze costanti, la media aritmetica non è idonea.

> [!summary] Definizione: Quantili, Mediana, Media Geometrica e Media Armonica
> - **Quantili di ordine $k$:** suddividono le osservazioni ordinate in $k$ intervalli equinumerosi.
>   - **Mediana (quantile di ordine 2):** valore centrale che separa il $50\%$ inferiore dal $50\%$ superiore del campione.
>   - **Quartili (ordine 4):** $Q_1$, $Q_2 = \text{mediana}$, $Q_3$. Lo **scarto interquartile** $Q_3 - Q_1$ rappresenta la dispersione del $50\%$ centrale delle osservazioni, immune da outlier estremi.
>   - **Percentili (ordine 100):** ad esempio, il 90° percentile lascia alla sua sinistra il $90\%$ del campione.
> - **Media Geometrica ($G$):** impiegata per grandezze positive che si moltiplicano tra loro (tassi di crescita, inflazione, rendimenti cumulati):
>   $$G = \sqrt[\textcolor{blue}{n}]{\textcolor{purple}{x}_1 \textcolor{purple}{x}_2 \cdots \textcolor{purple}{x}_{\textcolor{blue}{n}}}$$
> - **Media Armonica ($H$):** impiegata per grandezze espresse come rapporto (es. velocità $\text{km/h} = \text{spazio}/\text{tempo}$) quando il numeratore rimane costante:
>   $$H = \frac{\textcolor{blue}{n}}{\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \frac{1}{\textcolor{purple}{x}_{\textcolor{darkgreen}{i}}}} = \left(\frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \frac{1}{\textcolor{purple}{x}_{\textcolor{darkgreen}{i}}}\right)^{-1}$$

---

## 📝 Domande di Verifica

> [!question]- 19. Covarianza. Cos'è? Come si trova?
> **Risposta:**
> La covarianza di due caratteri $X$ e $Y$ è un indice che misura la tendenza delle due variabili a variare congiuntamente (la loro dipendenza lineare). 
> È definita come la media aritmetica del prodotto degli scarti dalle rispettive medie:
> $$\sigma_{X,Y} = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})(\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - \textcolor{teal}{\bar{y}})$$
> Può essere positiva (caratteri direttamente correlati), negativa (inversamente correlati) o nulla (incorrelati).
> Operativamente si calcola con la formula semplificata:
> $$\sigma_{X,Y} = \overline{\textcolor{purple}{x}\textcolor{teal}{y}} - \textcolor{purple}{\bar{x}}\textcolor{teal}{\bar{y}}$$
> ossia la media dei prodotti meno il prodotto delle medie.

> [!question]- 20. Cos'è un indice di correlazione? Come capisco se ho una buona approssimazione?
> **Risposta:**
> Date due variabili $X$ e $Y$, l'indice di correlazione lineare di Pearson $\rho_{X,Y}$ è dato dal rapporto tra la covarianza e il prodotto delle rispettive deviazioni standard:
> $$\rho_{X,Y} = \frac{\sigma_{X,Y}}{\sigma_X \sigma_Y}$$
> È un numero puro adimensionale invariante per cambi di scala, con valore compreso in $[-1, 1]$.
> Si ha una buona approssimazione lineare quando $|\rho_{X,Y}|$ è vicino a $1$. In particolare, se $\rho_{X,Y} = \pm 1$, i punti giacciono esattamente su una retta e l'errore quadratico della regressione è nullo ($E = \sigma_Y^2(1-\rho^2) = 0$).

> [!question]- 22. A cosa serve la media geometrica? Come si calcola?
> **Risposta:**
> La media geometrica di $\textcolor{blue}{n}$ valori positivi è definita come la radice $\textcolor{blue}{n}$-esima del loro prodotto:
> $$G = \sqrt[\textcolor{blue}{n}]{\prod_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}}$$
> Trova impiego dove i valori per loro natura si compongono moltiplicativamente e non per somma, come nel calcolo di variazioni percentuali concatenate, tassi di interesse composti o tassi di inflazione medi. Un singolo valore nullo annulla l'intera media geometrica.

> [!question]- 23. Retta ai minimi quadrati, qual è il suo scopo? Come si trova? Che cos'è? Definizione.
> **Risposta:**
> Lo scopo della retta ai minimi quadrati (o retta di regressione) è stimare e approssimare l'andamento del carattere $Y$ in funzione di $X$ tramite una retta $\textcolor{teal}{y} = a\textcolor{purple}{x} + b$, minimizzando la media dei quadrati degli errori verticali $E(a,b) = \frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{teal}{y}_{\textcolor{darkgreen}{i}} - (a\textcolor{purple}{x}_{\textcolor{darkgreen}{i}}+b))^2$.
> I coefficienti ottimali sono:
> $$a = \frac{\sigma_{X,Y}}{\sigma_X^2}, \qquad b = \textcolor{teal}{\bar{y}} - a\textcolor{purple}{\bar{x}}$$
> La retta passa necessariamente per il baricentro $(\textcolor{purple}{\bar{x}}, \textcolor{teal}{\bar{y}})$ dei dati del campione e la sua pendenza $a$ condivide il segno della covarianza $\sigma_{X,Y}$.
