---
indice: "3.2"
tipo: [concetto]
tags: [matematica_discreta, calcolo_combinatorio]
data_creazione: 2026-09-24
fonti_usate: ["[[MdP20260923.md]]", "[[lezioniNew.pdf]]"]
---

# Disposizioni e Combinazioni

Questi due concetti fondanti della matematica discreta estendono le [[Basi_del_Calcolo_Combinatorio]] e formalizzano l'estrazione e il raggruppamento degli elementi a partire da un insieme madre di [[Insiemi_e_Cardinalità|cardinalità]] $\textcolor{blue}{n}$ (con applicazioni dirette in [[Esercitazione_02_25-Settembre]] e [[Esercitazione_03_02-Ottobre]]).

## Disposizioni

> [!summary] Definizione: Disposizione
> Una disposizione rappresenta una sequenza finita in cui **tutte le coordinate devono essere diverse tra loro**. L'ordine degli elementi conta, ma non ci possono essere ripetizioni.

Volendo estrarre sequenze di lunghezza $\textcolor{magenta}{k}$ da $\textcolor{blue}{n}$ elementi, usiamo il principio del *prodotto condizionato*. 
- Per la prima coordinata avremo $\textcolor{blue}{n}$ possibilità. 
- Per la seconda, non potendo usare la precedente, ne avremo $\textcolor{blue}{n}-1$.
- E così via, per $\textcolor{magenta}{k}$ fattori totali, scendendo di $1$ fino all'elemento $\textcolor{blue}{n}-\textcolor{magenta}{k}+1$.
 
Questo prodotto prende il nome di **fattoriale discendente** e fornisce la formula del numero di disposizioni:
$$ D_{\textcolor{blue}{n},\textcolor{magenta}{k}} = \textcolor{blue}{n} \cdot (\textcolor{blue}{n}-1) \cdot (\textcolor{blue}{n}-2) \dots (\textcolor{blue}{n}-\textcolor{magenta}{k}+1) = \frac{\textcolor{blue}{n}!}{(\textcolor{blue}{n}-\textcolor{magenta}{k})!} $$

## Combinazioni

> [!summary] Definizione: Combinazione
> Quando parliamo di combinazioni, l'**ordine degli elementi all'interno del raggruppamento smette di avere importanza**. Una combinazione rappresenta quindi semplicemente un sottoinsieme estratto dall'insieme base.

In combinatoria, tre concetti sono tra loro strettamente collegati e si dimostrano in **corrispondenza biunivoca**:
1. L'insieme dei sottoinsiemi con $\textcolor{purple}{a}$ elementi (tratti da un totale $\textcolor{blue}{n}$).
2. L'insieme dei sottoinsiemi con $\textcolor{teal}{b}$ elementi (dove $\textcolor{teal}{b} = \textcolor{blue}{n}-\textcolor{purple}{a}$), legati ai primi dal concetto di **passaggio al complementare**.
3. Le sequenze binarie di lunghezza $\textcolor{blue}{n}$ con esattamente $\textcolor{purple}{a}$ cifre $1$ e $\textcolor{teal}{b}$ cifre $0$.

### La Funzione $\textcolor{navy}{m}$-a-$1$ e il Calcolo

> [!info] Proposizione: Funzione $\textcolor{navy}{m}$-a-$1$
> Come ricaviamo la formula del numero delle combinazioni? Introduciamo la nozione elementare di funzione $\textcolor{navy}{m}$-a-$1$: se su ogni elemento del codominio di una funzione suriettiva corrispondono esattamente $\textcolor{navy}{m}$ elementi del dominio, allora $|Dominio| = \textcolor{navy}{m} \cdot |Codominio|$.

Applichiamo la funzione $\textcolor{navy}{m}$-a-$1$ mappando l'insieme delle *Disposizioni* (dominio) all'insieme dei sottoinsiemi/combinazioni (codominio). Questa funzione essenzialmente "rimuove l'ordine". Poiché a parità di sottoinsieme (es. $\{1,2,3\}$) possiamo comporre esattamente $\textcolor{purple}{a}!$ disposizioni diverse che contengono quegli stessi elementi permutati, avremo una funzione dove $\textcolor{navy}{m} = \textcolor{purple}{a}!$.

Ne consegue la famosa formula delle combinazioni (il Coefficiente Binomiale $\binom{\textcolor{blue}{n}}{\textcolor{purple}{a}}$):
$$ \text{Combinazioni} = \frac{\text{Disposizioni}}{\textcolor{purple}{a}!} $$
$$ \binom{\textcolor{blue}{n}}{\textcolor{purple}{a}} = \frac{\textcolor{blue}{n}(\textcolor{blue}{n}-1)\dots(\textcolor{blue}{n}-\textcolor{purple}{a}+1)}{\textcolor{purple}{a}!} = \frac{\textcolor{blue}{n}!}{\textcolor{purple}{a}! \cdot (\textcolor{blue}{n}-\textcolor{purple}{a})!} = \frac{\textcolor{blue}{n}!}{\textcolor{purple}{a}! \cdot \textcolor{teal}{b}!} $$
L'eleganza di questa formula mostra immediatamente la simmetria profonda tra l'insieme estratto $\textcolor{purple}{a}$ e il suo complementare $\textcolor{teal}{b}$.

### Identità di Ricorrenza (Regola di Pascal)

> [!info] Teorema: Regola di Pascal
> Un'importante proprietà ricorsiva ci permette di calcolare le combinazioni sfruttando il [[Partizioni_di_un_Insieme|partizionamento]]. 
> $$ \binom{\textcolor{blue}{n}}{\textcolor{purple}{a}} = \binom{\textcolor{blue}{n}-1}{\textcolor{purple}{a}} + \binom{\textcolor{blue}{n}-1}{\textcolor{purple}{a}-1} $$

> [!quote] Dimostrazione
> Se vogliamo estrarre $\textcolor{purple}{a}$ elementi da un totale di $\textcolor{blue}{n}$, possiamo focalizzarci su un singolo elemento specifico (es. l'elemento $\textcolor{blue}{n}$) e dividere tutti i possibili sottoinsiemi in due blocchi mutuamente esclusivi:
> 1. I sottoinsiemi che **NON contengono** l'elemento $\textcolor{blue}{n}$: dobbiamo scegliere tutti gli $\textcolor{purple}{a}$ elementi tra i restanti $\textcolor{blue}{n}-1$, ovvero $\binom{\textcolor{blue}{n}-1}{\textcolor{purple}{a}}$.
> 2. I sottoinsiemi che **contengono** l'elemento $\textcolor{blue}{n}$: ci mancano da scegliere $\textcolor{purple}{a}-1$ elementi tra i restanti $\textcolor{blue}{n}-1$, ovvero $\binom{\textcolor{blue}{n}-1}{\textcolor{purple}{a}-1}$.
> Sommando questi due casi disgiunti otteniamo la celebre identità di Pascal.

### Generalizzazione: Combinazioni Tri-variate (Multinomiali)

> [!summary] Definizione: Combinazioni Tri-variate
> Anziché dividere l'insieme iniziale in soli due gruppi (l'insieme e il suo complementare), lo si può partizionare in tre insiemi $A, B, C$ di cardinalità $\textcolor{purple}{a}, \textcolor{teal}{b}, \textcolor{darkgreen}{c}$ (tali che $\textcolor{purple}{a}+\textcolor{teal}{b}+\textcolor{darkgreen}{c} = \textcolor{blue}{n}$), come approfondito in [[Combinazioni_con_Ripetizione_e_Fibonacci]].
> In modo naturale, estendiamo la formula al caso tri-variato:
> $$ \binom{\textcolor{blue}{n}}{\textcolor{purple}{a},\textcolor{teal}{b},\textcolor{darkgreen}{c}} = \frac{\textcolor{blue}{n}!}{\textcolor{purple}{a}! \cdot \textcolor{teal}{b}! \cdot \textcolor{darkgreen}{c}!} $$

> [!quote] Dimostrazione
> Possiamo scegliere prima il gruppo $A$ in $\binom{\textcolor{blue}{n}}{\textcolor{purple}{a}}$ modi. Successivamente, ci resteranno solo $\textcolor{blue}{n}-\textcolor{purple}{a}$ elementi di partenza da cui scegliere il gruppo $B$, che darà luogo a $\binom{\textcolor{blue}{n}-\textcolor{purple}{a}}{\textcolor{teal}{b}}$ scelte. Il gruppo $C$ rimarrà univocamente determinato dagli scarti finali. Moltiplicando e sviluppando i coefficienti si ritorna all'equazione di base con i tre fattoriali a denominatore.

---

## 📝 Domande di Verifica

> [!question]- Qual è la differenza strutturale chiave tra le Disposizioni e le Combinazioni?
> **Risposta:**
> Nelle Disposizioni **l'ordine conta** ma gli elementi non possono ripetersi (è di fatto una sequenza iniettiva governata dal fattoriale discendente). Nelle Combinazioni **l'ordine non conta**, trattandosi di un mero sottoinsieme. Infatti il numero di combinazioni si ottiene dividendo le disposizioni per il fattoriale $\textcolor{purple}{a}!$, che rimuove matematicamente le permutazioni interne degli elementi.

> [!question]- Illustra i tre modi equivalenti (in corrispondenza biunivoca) di vedere una combinazione.
> **Risposta:**
> I tre concetti intercambiabili sono: 1) I sottoinsiemi di $\textcolor{purple}{a}$ elementi (inclusi gli elementi scelti). 2) I sottoinsiemi di $\textcolor{teal}{b}$ elementi (il loro complementare logico costituito dagli esclusi, con $\textcolor{teal}{b}=\textcolor{blue}{n}-\textcolor{purple}{a}$). 3) Le sequenze binarie formattate con esattamente $\textcolor{purple}{a}$ cifre $1$ e $\textcolor{teal}{b}$ cifre $0$ (la funzione indicatrice).
