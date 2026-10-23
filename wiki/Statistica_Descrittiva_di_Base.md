---
indice: "4.1"
tipo: riassunto_fonte
tags:
  - statistica_descrittiva
data_creazione: 2026-10-07
fonti_usate:
  - "[[MdP20261007.md]]"
  - "[[lezioniNew.pdf]]"
  - "[[MDP Domande orale.pdf]]"
---

# Statistica Descrittiva di Base

La statistica descrittiva ha il compito di presentare i dati raccolti in una certa indagine in modo sintetico, comunicativo e rappresentativo (si veda il proseguimento su due caratteri in [[Correlazione_e_Regressione]], gli esercizi svolti in [[Esercitazione_05_16-Ottobre]] e le flashcard in [[02-Statistica_Descrittiva]]). Funge anche da introduzione ai concetti più astratti che verranno trattati in [[Spazi_di_Probabilita]] e [[Variabili_Discrete_e_Schemi_Successo_Insuccesso]].

## Dettagli Teorici

### Popolazione, Carattere e Campione

> [!summary] Definizione: Popolazione, Carattere e Campione
> - **Popolazione:** un insieme (finito o infinito) sul quale vogliamo effettuare l'indagine statistica. Corrisponde a quello che in probabilità sarà lo [[Spazi_di_Probabilita|spazio di probabilità]].
> - **Carattere:** una funzione definita sulla popolazione che rappresenta l'oggetto dell'indagine (es. altezza, sesso, materia preferita). Corrisponde al concetto probabilistico di [[Variabili_Discrete_e_Schemi_Successo_Insuccesso|variabile aleatoria]].
> - **Campione:** un sottoinsieme della popolazione, tipicamente finito di ampiezza $\textcolor{blue}{n}$, sul quale si riesce a determinare il valore del carattere.

I caratteri si dividono in:
- **Quantitativi:** si esprimono con un numero che quantifica qualcosa (es. voto di maturità).
- **Qualitativi:** esprimono una proprietà non scalare, anche se codificata numericamente (es. $1$ per maschio, $2$ per femmina).

### Modalità, Frequenze e Classi

> [!summary] Definizione: Modalità, Frequenza, Classe e Istogramma
> - **Modalità:** i possibili valori assunti dal carattere.
> - **Frequenza:** il numero di volte in cui una certa modalità si presenta all'interno del campione.
> - **Classi:** quando le modalità sono molto numerose (es. redditi), vengono raggruppate in intervalli definiti da un confine inferiore e superiore.
> - **Istogramma:** grafico in cui ogni classe (o modalità) è rappresentata da un rettangolo avente:
>   - *Base* proporzionale all'ampiezza della classe.
>   - *Area* (e non banalmente l'altezza) proporzionale alla frequenza della classe, garantendo la corretta percezione della distribuzione dei dati.

### Indici di Posizione
Gli indici di posizione sintetizzano in un unico valore un certo aspetto del carattere.

> [!summary] Definizione: Moda e Media Campionaria
> - **Moda:** la modalità avente la frequenza massima.
> - **Media Campionaria ($\textcolor{purple}{\bar{x}}$):** definita per caratteri quantitativi calcolati sul campione $\textcolor{purple}{x}_1, \dots, \textcolor{purple}{x}_{\textcolor{blue}{n}}$ come:
>   $$\textcolor{purple}{\bar{x}} = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}$$

> [!info] Proposizione: Linearità della Media Campionaria
> Se due caratteri sono legati da una combinazione lineare $y_{\textcolor{darkgreen}{i}} = \textcolor{teal}{a}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{teal}{b}$, allora le rispettive medie campionarie rispettano la medesima relazione:
> $$\bar{y} = \textcolor{teal}{a}\textcolor{purple}{\bar{x}} + \textcolor{teal}{b}$$

> [!quote] Dimostrazione
> Per definizione di media campionaria e per la proprietà distributiva della sommatoria:
> $$\bar{y} = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{teal}{a}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{teal}{b}) = \textcolor{teal}{a} \left(\frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}\right) + \frac{1}{\textcolor{blue}{n}} \cdot \textcolor{blue}{n}\textcolor{teal}{b} = \textcolor{teal}{a}\textcolor{purple}{\bar{x}} + \textcolor{teal}{b}$$

> [!info] Approfondimento dalle Dispense
> Più in generale, come riportato in [[lezioniNew.pdf]], se $z = \textcolor{teal}{a}\textcolor{purple}{x} + \textcolor{teal}{b}y$ si ha che $\bar{z} = \textcolor{teal}{a}\textcolor{purple}{\bar{x}} + \textcolor{teal}{b}\bar{y}$.

### Indici di Dispersione
Indicano quanto i dati del campione siano lontani tra loro o rarefatti rispetto alla media.

> [!summary] Definizione: Varianza Campionaria e Deviazione Standard
> - **Varianza ($\sigma_X^2$):** è la media dei quadrati degli scarti dalla media. Rappresenta quanto i dati tendono a distanziarsi dal valore medio $\textcolor{purple}{\bar{x}}$:
>   $$\sigma_X^2 = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})^2$$
> - **Deviazione Standard ($\sigma_X$):** o scarto quadratico medio, è la radice quadrata della varianza ($\sigma_X = \sqrt{\sigma_X^2}$). Fornisce un ordine di grandezza diretto della dispersione dei dati nella stessa unità di misura del carattere.

> [!info] Proposizione: Formula Operativa e Proprietà di Riscalamento della Varianza
> 1. **Formula Operativa:** la varianza si può calcolare come "la media dei quadrati meno il quadrato della media":
>    $$\sigma_X^2 = \overline{\textcolor{purple}{x}^2} - (\textcolor{purple}{\bar{x}})^2$$
> 2. **Riscalamento e Invarianza per Traslazione:** data la relazione lineare $y_{\textcolor{darkgreen}{i}} = \textcolor{teal}{a}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{teal}{b}$, le varianze sono legate da:
>    $$\sigma_Y^2 = \textcolor{teal}{a}^2 \sigma_X^2$$
>    La traslazione (termine $\textcolor{teal}{b}$) non influenza la dispersione, mentre il riscalamento ($\textcolor{teal}{a}$) pesa al quadrato.

> [!quote] Dimostrazione
> Sviluppando il quadrato del binomio nella definizione di varianza e sfruttando la linearità della media:
> $$\sigma_X^2 = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}}^2 - 2\textcolor{purple}{\bar{x}}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{purple}{\bar{x}}^2) = \overline{\textcolor{purple}{x}^2} - 2\textcolor{purple}{\bar{x}}\left(\frac{1}{\textcolor{blue}{n}}\sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}\right) + \textcolor{purple}{\bar{x}}^2 = \overline{\textcolor{purple}{x}^2} - (\textcolor{purple}{\bar{x}})^2$$
> Inoltre, per $y_{\textcolor{darkgreen}{i}} = \textcolor{teal}{a}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{teal}{b}$, lo scarto dalla media vale $y_{\textcolor{darkgreen}{i}} - \bar{y} = (\textcolor{teal}{a}\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} + \textcolor{teal}{b}) - (\textcolor{teal}{a}\textcolor{purple}{\bar{x}} + \textcolor{teal}{b}) = \textcolor{teal}{a}(\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})$, da cui elevando al quadrato e mediando segue $\sigma_Y^2 = \textcolor{teal}{a}^2 \sigma_X^2$.

---

## 📝 Domande di Verifica

> [!question]- 17. Cos'è un indice di dispersione?
> **Risposta:**
> Un indice di dispersione (come la varianza) serve per descrivere sinteticamente una distribuzione statistica quantitativa, esprimendo la compattezza o la rarefazione dei dati, ovvero la misura con la quale i suoi valori sono distanti da un valore centrale (come la media).

> [!question]- 18. Cos'è la varianza? Come si trova? Dimostrazione
> **Risposta:**
> La varianza è un indice di dispersione ed un indicatore della variabilità dei dati. Si calcola come la media dei quadrati delle distanze (scarti) dei valori del campione rispetto alla media campionaria:
> $$\sigma_X^2 = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} (\textcolor{purple}{x}_{\textcolor{darkgreen}{i}} - \textcolor{purple}{\bar{x}})^2$$
> Può essere riscritta in forma più operativa (dimostrazione per sviluppo del quadrato del binomio) come la media dei quadrati meno il quadrato della media:
> $$\sigma_X^2 = \overline{\textcolor{purple}{x}^2} - (\textcolor{purple}{\bar{x}})^2$$

> [!question]- 21. Cos'è un indice di posizione? A cosa serve la media campionaria? Come si calcola? Dimostrazione (x2)
> **Risposta:**
> Un indice di posizione (come moda, media, mediana) è un valore associato a un carattere usato per sintetizzare e dare un'idea approssimata dell'ordine di grandezza (la posizione sulla scala dei numeri) dei valori esistenti nel campione. La media campionaria serve a riassumere il valore atteso ed è calcolata come:
> $$\textcolor{purple}{\bar{x}} = \frac{1}{\textcolor{blue}{n}} \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} \textcolor{purple}{x}_{\textcolor{darkgreen}{i}}$$
> Essa gode della fondamentale proprietà di linearità: $\overline{\textcolor{teal}{a}\textcolor{purple}{x}+\textcolor{teal}{b}} = \textcolor{teal}{a}\textcolor{purple}{\bar{x}} + \textcolor{teal}{b}$.

