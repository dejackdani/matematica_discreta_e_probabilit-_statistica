---
indice: "4.1"
tipo: riassunto_fonte
tags:
  - statistica_descrittiva
data_creazione: 2026-10-07
fonti_usate:
  - "[[MdP20261007.md]]"
  - "[[lezioniNew.pdf]]"
stato: "🔴 Da Iniziare"
difficolta: Bassa
ultimo_ripasso:
tempo_stimato: 20 min
---

# Statistica Descrittiva di Base

La statistica descrittiva ha il compito di presentare i dati raccolti in una certa indagine in modo sintetico, comunicativo e rappresentativo. Funge anche da introduzione ai concetti più astratti che verranno trattati nella probabilità.

## Dettagli Teorici

### Popolazione, Carattere e Campione
- **Popolazione:** un insieme (finito o infinito) sul quale vogliamo effettuare l'indagine statistica. Corrisponde a quello che in probabilità sarà lo "spazio di probabilità".
- **Carattere:** una funzione definita sulla popolazione che rappresenta l'oggetto dell'indagine (es. altezza, sesso, materia preferita). Corrisponde al concetto probabilistico di "variabile aleatoria".
- **Campione:** un sottoinsieme della popolazione, tipicamente finito, sul quale si riesce a determinare il valore del carattere.

I caratteri si dividono in:
- **Quantitativi:** si esprimono con un numero che quantifica qualcosa (es. voto di maturità).
- **Qualitativi:** esprimono una proprietà non scalare, anche se codificata numericamente (es. 1 per maschio, 2 per femmina).

### Modalità, Frequenze e Classi
- **Modalità:** i possibili valori assunti dal carattere.
- **Frequenza:** il numero di volte in cui una certa modalità si presenta all'interno del campione.
- **Classi:** quando le modalità sono molto numerose (es. redditi), vengono raggruppate in intervalli definiti da un confine inferiore e superiore.

**Istogramma:** è un grafico in cui ogni classe (o modalità) è rappresentata da un rettangolo avente:
- *Base* proporzionale all'ampiezza della classe.
- *Area* (e non banalmente l'altezza) proporzionale alla frequenza della classe. Questo garantisce la corretta percezione della distribuzione dei dati.

### Indici di Posizione
Gli indici di posizione sintetizzano in un unico valore un certo aspetto del carattere.
- **Moda:** la modalità avente la frequenza massima.
- **Media Campionaria ($\bar{x}$):** definita per caratteri quantitativi calcolati sul campione $x_1, \dots, x_n$ come:
  $$\bar{x} = \frac{1}{n} \sum_{i=1}^n x_i$$

**Linearità della Media:** 
Se due caratteri sono legati da una combinazione lineare $y_i = ax_i + b$, allora le rispettive medie campionarie rispettano la medesima relazione:
$$\bar{y} = a\bar{x} + b$$
> [!info] Approfondimento dalle Dispense
> Più in generale, come riportato in `lezioniNew.pdf`, se $z = ax + by$ si ha che $\bar{z} = a\bar{x} + b\bar{y}$.

### Indici di Dispersione
Indicano quanto i dati del campione siano lontani tra loro o rarefatti rispetto alla media.
- **Varianza ($\sigma_X^2$):** è la media dei quadrati degli scarti dalla media. Rappresenta quanto i dati tendono a distanziarsi dal valore medio $\bar{x}$.
  $$\sigma_X^2 = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})^2$$
  *Formula alternativa (operativa):* sviluppando il quadrato, la varianza si può calcolare come "la media dei quadrati meno il quadrato della media":
  $$\sigma_X^2 = \overline{x^2} - (\bar{x})^2$$
- **Deviazione Standard ($\sigma_X$):** o scarto quadratico medio, è la radice quadrata della varianza ($\sigma_X = \sqrt{\sigma_X^2}$). Fornisce un ordine di grandezza diretto della dispersione dei dati.

**Proprietà della Varianza:**
Data la relazione lineare $y_i = a x_i + b$, le varianze sono legate da:
$$\sigma_Y^2 = a^2 \sigma_X^2$$
La traslazione (termine $b$) non influenza la dispersione, mentre il riscalamento ($a$) pesa al quadrato.

---

## 📝 Domande di Verifica

> [!question]- 17. Cos'è un indice di dispersione?
> **Risposta:**
> Un indice di dispersione (come la varianza) serve per descrivere sinteticamente una distribuzione statistica quantitativa, esprimendo la compattezza o la rarefazione dei dati, ovvero la misura con la quale i suoi valori sono distanti da un valore centrale (come la media).

> [!question]- 18. Cos'è la varianza? Come si trova? Dimostrazione
> **Risposta:**
> La varianza è un indice di dispersione ed un indicatore della variabilità dei dati. Si calcola come la media dei quadrati delle distanze (scarti) dei valori del campione rispetto alla media campionaria:
> $$\sigma_X^2 = \frac{1}{n} \sum_{i=1}^n (x_i - \bar{x})^2$$
> Può essere riscritta in forma più operativa (dimostrazione per sviluppo del quadrato del binomio) come la media dei quadrati meno il quadrato della media:
> $$\sigma_X^2 = \overline{x^2} - (\bar{x})^2$$

> [!question]- 21. Cos'è un indice di posizione? A cosa serve la media campionaria? Come si calcola? Dimostrazione (x2)
> **Risposta:**
> Un indice di posizione (come moda, media, mediana) è un valore associato a un carattere usato per sintetizzare e dare un'idea approssimata dell'ordine di grandezza (la posizione sulla scala dei numeri) dei valori esistenti nel campione. La media campionaria serve a riassumere il valore atteso ed è calcolata come:
> $$\bar{x} = \frac{1}{n} \sum_{i=1}^n x_i$$
> Essa gode della fondamentale proprietà di linearità: $\overline{ax+b} = a\bar{x} + b$.

