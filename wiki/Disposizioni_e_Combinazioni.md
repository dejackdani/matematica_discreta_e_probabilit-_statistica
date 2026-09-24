---
tipo: [concetto]
tags: [matematica_discreta, calcolo_combinatorio]
data_creazione: 2026-09-24
fonti_usate: ["[[MdP20260923.md]]", "[[lezioniNew.pdf]]"]
stato_studio: 🔴 Da Iniziare
difficolta: Media
ultimo_ripasso: 
tempo_stimato: 20 min
---

# Disposizioni e Combinazioni

Questi due concetti fondanti della matematica discreta formalizzano l'estrazione e il raggruppamento degli elementi a partire da un insieme madre di cardinalità $n$.

## Disposizioni
Una disposizione rappresenta una sequenza finita in cui **tutte le coordinate devono essere diverse tra loro**. L'ordine degli elementi conta, ma non ci possono essere ripetizioni.

Volendo estrarre sequenze di lunghezza $k$ da $n$ elementi, usiamo il principio del *prodotto condizionato*. 
- Per la prima coordinata avremo $n$ possibilità. 
- Per la seconda, non potendo usare la precedente, ne avremo $n-1$.
- E così via, per $k$ fattori totali, scendendo di $1$ fino all'elemento $n-k+1$.
 
Questo prodotto prende il nome di **fattoriale discendente** e fornisce la formula del numero di disposizioni:
$$ D_{n,k} = n \cdot (n-1) \cdot (n-2) \dots (n-k+1) = \frac{n!}{(n-k)!} $$

## Combinazioni
Quando parliamo di combinazioni, l'**ordine degli elementi all'interno del raggruppamento smette di avere importanza**. Una combinazione rappresenta quindi semplicemente un sottoinsieme estratto dall'insieme base.

In combinatoria, tre concetti sono tra loro strettamente collegati e si dimostrano in **corrispondenza biunivoca**:
1. L'insieme dei sottoinsiemi con $a$ elementi (tratti da un totale $n$).
2. L'insieme dei sottoinsiemi con $b$ elementi (dove $b = n-a$), legati ai primi dal concetto di **passaggio al complementare**.
3. Le sequenze binarie di lunghezza $n$ con esattamente $a$ cifre $1$ e $b$ cifre $0$.

### La Funzione $m$-a-$1$ e il Calcolo
Come ricaviamo la formula del numero delle combinazioni? Introduciamo la nozione elementare di funzione $m$-a-$1$: se su ogni elemento del codominio di una funzione suriettiva corrispondono esattamente $m$ elementi del dominio, allora $|Dominio| = m \cdot |Codominio|$.

Applichiamo la funzione $m$-a-$1$ mappando l'insieme delle *Disposizioni* (dominio) all'insieme dei sottoinsiemi/combinazioni (codominio). Questa funzione essenzialmente "rimuove l'ordine". Poiché a parità di sottoinsieme (es. $\{1,2,3\}$) possiamo comporre esattamente $a!$ disposizioni diverse che contengono quegli stessi elementi permutati, avremo una funzione dove $m = a!$.

Ne consegue la famosa formula delle combinazioni (il Coefficiente Binomiale $\binom{n}{a}$):
$$ \text{Combinazioni} = \frac{\text{Disposizioni}}{a!} $$
$$ \binom{n}{a} = \frac{n(n-1)\dots(n-a+1)}{a!} = \frac{n!}{a! \cdot (n-a)!} = \frac{n!}{a! \cdot b!} $$
L'eleganza di questa formula mostra immediatamente la simmetria profonda tra l'insieme estratto $a$ e il suo complementare $b$.

### Generalizzazione: Combinazioni Tri-variate (Multinomiali)
Anziché dividere l'insieme iniziale in soli due gruppi (l'insieme e il suo complementare), lo si può partizionare in tre insiemi $A, B, C$ di cardinalità $a, b, c$ (tali che $a+b+c = n$).
In modo naturale, estendiamo la formula al caso tri-variato:
$$ \binom{n}{a,b,c} = \frac{n!}{a! \cdot b! \cdot c!} $$
*Dimostrazione intuitiva:* Possiamo scegliere prima il gruppo $A$ in $\binom{n}{a}$ modi. Successivamente, ci resteranno solo $n-a$ elementi di partenza da cui scegliere il gruppo $B$, che darà luogo a $\binom{n-a}{b}$ scelte. Il gruppo $C$ rimarrà univocamente determinato dagli scarti finali. Moltiplicando e sviluppando i coefficienti si ritorna all'equazione di base con i tre fattoriali a denominatore.

---

## 📝 Domande di Verifica

> [!question]- Qual è la differenza strutturale chiave tra le Disposizioni e le Combinazioni?
> **Risposta:**
> Nelle Disposizioni **l'ordine conta** ma gli elementi non possono ripetersi (è di fatto una sequenza iniettiva governata dal fattoriale discendente). Nelle Combinazioni **l'ordine non conta**, trattandosi di un mero sottoinsieme. Infatti il numero di combinazioni si ottiene dividendo le disposizioni per il fattoriale $a!$, che rimuove matematicamente le permutazioni interne degli elementi.

> [!question]- Illustra i tre modi equivalenti (in corrispondenza biunivoca) di vedere una combinazione.
> **Risposta:**
> I tre concetti intercambiabili sono: 1) I sottoinsiemi di $a$ elementi (inclusi gli elementi scelti). 2) I sottoinsiemi di $b$ elementi (il loro complementare logico costituito dagli esclusi, con $b=n-a$). 3) Le sequenze binarie formattate con esattamente $a$ cifre $1$ e $b$ cifre $0$ (la funzione indicatrice).
