---
indice: "1.2"
tipo: indice
tags:
  - matematica
  - definizioni
  - teoremi
data_creazione: 2026-09-30
---

# Indice dei Teoremi e delle Definizioni

Questo è il catalogo globale di tutte le definizioni formali, dei teoremi e delle proposizioni incontrate nel corso. Ogni volta che viene ingerita una nuova lezione che introduce concetti formali, i collegamenti verranno inseriti qui.

## Insiemi e Cardinalità
**Pagina:** [[Insiemi_e_Cardinalità]]
- **Definizioni:** Insieme Finito, Insieme Numerabile, Insieme Discreto.
- **Teoremi/Proposizioni:** L'insieme delle sequenze binarie infinite non è numerabile (Dimostrazione tramite Argomento Diagonale).

## Basi del Calcolo Combinatorio
**Pagina:** [[Basi_del_Calcolo_Combinatorio]]
- **Definizioni:** Prodotto Cartesiano, Potenza Cartesiana, Insieme delle Parti.
- **Teoremi/Proposizioni:** Cardinalità dell'Insieme delle Parti ($2^n$).

## Disposizioni e Combinazioni
**Pagina:** [[Disposizioni_e_Combinazioni]]
- **Definizioni:** Disposizione, Combinazione, Combinazioni Tri-variate.
- **Teoremi/Proposizioni:** Funzione $m$-a-$1$, Regola di Pascal.

## Combinazioni con Ripetizione e Fibonacci
**Pagina:** [[Combinazioni_con_Ripetizione_e_Fibonacci]]
- **Definizioni:** Coefficiente Multinomiale, Combinazioni con Ripetizione (Stars and Bars), Numeri di Fibonacci (Sequenze binarie senza 11).
- **Teoremi/Proposizioni:** Formula Ricorsiva Multinomiale, Corrispondenza con gli Anagrammi, Formula di Ricorrenza di Fibonacci.

## Principio di Inclusione-Esclusione
**Pagina:** [[Principio_di_Inclusione_Esclusione]]
- **Definizioni:** Sequenza $k$-piena, Scombussolamento (Derangement).
- **Teoremi/Proposizioni:** Principio di Inclusione-Esclusione per $n$ insiemi.

## Partizioni
**Pagina:** [[Partizioni_di_un_Insieme]]
- **Definizioni:** Partizione di un Insieme, Blocchi, Numeri di Bell ($B_n$), Triangolo di Bell, Numeri di Stirling di Seconda Specie ($S_{n,k}$), Triangolo di Stirling.
- **Teoremi/Proposizioni:** Formula Ricorsiva per i Numeri di Bell ($B_n = \sum_{h=0}^{n-1} \binom{n-1}{h} B_h$), Formula Ricorsiva per i Numeri di Stirling ($S_{n,k} = S_{n-1,k-1} + k S_{n-1,k}$), Formula Esplicita per i Numeri di Stirling tramite Funzioni Suriettive ($S_{n,k} = \frac{1}{k!} \sum_{i=0}^k (-1)^i \binom{k}{i} (k-i)^n$).

## Statistica Descrittiva di Base
**Pagina:** [[Statistica_Descrittiva_di_Base]]
- **Definizioni:** Carattere, Popolazione, Campione, Modalità, Frequenza, Classe, Istogramma, Moda, Media Campionaria, Varianza, Deviazione Standard.
- **Teoremi/Proposizioni:** Linearità della Media, Formula Operativa per la Varianza, Proprietà della Varianza (Riscalamento).

## Correlazione e Regressione
**Pagina:** [[Correlazione_e_Regressione]]
- **Definizioni:** Covarianza Campionaria, Caratteri Correlati Positivamente/Negativamente/Incorrelati, Indice di Correlazione di Pearson, Retta di Regressione ai Minimi Quadrati, Quantili (Mediana, Quartili, Percentili), Media Geometrica, Media Armonica.
- **Teoremi/Proposizioni:** Formula Operativa della Covarianza ($\sigma_{X,Y} = \overline{xy} - \bar{x}\bar{y}$), Parametri Ottimali della Retta ai Minimi Quadrati e Passaggio per il Baricentro, Formula dell'Errore Minimo ($E = \sigma_Y^2(1-\rho_{X,Y}^2)$), Proprietà e Limitazione dell'Indice di Pearson ($-1 \le \rho_{X,Y} \le 1$).

## Spazi di Probabilità
**Pagina:** [[Spazi_di_Probabilita]]
- **Definizioni:** Fenomeno Deterministico e Fenomeno Aleatorio, Spazio Campionario ($\Omega$), Evento, Famiglia Coerente di Eventi ($\sigma$-algebra), Valutazione/Misura di Probabilità (Assiomi di Kolmogorov), Spazio di Probabilità $(\Omega, \mathcal{A}, P)$, Spazio di Probabilità Uniforme.
- **Teoremi/Proposizioni:** Proprietà Derivate della Probabilità (Probabilità del Complementare, Monotonia, Decomposizione su Partizioni, Formula per l'Unione di Due Eventi), Formula della Probabilità Uniforme ($P(E) = \frac{|E|}{|\Omega|}$), Teorema di Impossibilità della Probabilità Uniforme su Insiemi Infiniti Numerabili.

## Probabilità Condizionale e Formula di Bayes
**Pagina:** [[Probabilita_Condizionale_e_Bayes]]
- **Definizioni:** Probabilità Condizionale ($P(A|B) = \frac{P(A \cap B)}{P(B)}$), Eventi Indipendenti ($P(A \cap B) = P(A)P(B)$, ovvero $P(B|A) = P(B)$).
- **Teoremi/Proposizioni:** Lo Spazio di Probabilità Condizionato $(\Omega, \mathcal{A}, P')$, Formula delle Probabilità Totali ($P(B) = \sum_{i=1}^n P(B|A_i)P(A_i)$), Invarianza della Probabilità a Priori nelle Estrazioni Senza Rimpiazzo ($P(B_i) = \frac{b}{b+r}$), Formula di Bayes ($P(A|B) = \frac{P(B|A)P(A)}{P(B)}$).

## Variabili Aleatorie Discrete e Schemi Successo-Insuccesso
**Pagina:** [[Variabili_Discrete_e_Schemi_Successo_Insuccesso]]
- **Definizioni:** Variabile Aleatoria ($X: \Omega \to \mathbb{R}$ tale che $\{\omega \in \Omega : X(\omega) \le a\} \in \mathcal{A}$), Funzione di Ripartizione ($F_X(t) = P(X \le t)$), Variabile Aleatoria Discreta, Densità Discreta Concreta e Astratta ($d_X(h) = P(X = h)$), Variabile Uniforme Discreta ($X \sim U(a_1, \dots, a_n)$), Variabile di Bernoulli ($X \sim B(1, p)$), Funzione Indicatrice/Caratteristica di un Evento ($\chi_A \sim B(1, P(A))$), Schema Successo-Insuccesso (a prove indipendenti e senza rimpiazzo), Variabile Aleatoria Binomiale ($X \sim B(n, p)$), Variabile Aleatoria Ipergeometrica ($X \sim H(n; b, r)$).
- **Teoremi/Proposizioni:** Proposizione sugli Eventi Generati da una Variabile Aleatoria ($\{X > a\}, \{X < a\}, \{X \ge a\}, \{X = a\}, \{X \neq a\} \in \mathcal{A}$), Proprietà Caratterizzanti della Densità Discreta (supporto discreto, non-negatività, normalizzazione $\sum_h d_X(h) = 1$), Formula della Densità Binomiale ($d_X(k) = \binom{n}{k}p^k(1-p)^{n-k}$ e normalizzazione tramite Binomio di Newton), Formula della Densità Ipergeometrica ($d_X(k) = \frac{\binom{b}{k}\binom{r}{n-k}}{\binom{b+r}{n}}$ con dominio $\max(0, n-r) \le k \le \min(n, b)$).

