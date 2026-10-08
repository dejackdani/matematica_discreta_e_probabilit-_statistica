---
indice: "3.1"
tipo: [concetto]
tags: [matematica_discreta, calcolo_combinatorio]
data_creazione: 2026-09-24
fonti_usate: ["[[MdP20260918.md]]", "[[lezioniNew.pdf]]"]
stato: "🔴 Da Iniziare"
difficolta: Media
ultimo_ripasso: 
tempo_stimato: 15 min
---

# Basi del Calcolo Combinatorio

Lo scopo fondamentale della combinatoria è sempre quello di rispondere alla domanda **"quanti sono?"** gli elementi di un determinato insieme. Molto spesso questo richiede di partizionare un problema complesso in più sottoproblemi elementari.

## Prodotto Cartesiano e Potenza

> [!summary] Definizione: Prodotto Cartesiano
> La prima operazione fondamentale per creare strutture composte è il prodotto cartesiano $A \times B$, che rappresenta l'insieme delle coppie ordinate in cui il primo elemento appartiene ad $A$ e il secondo a $B$. Trattandosi di coppie ordinate, l'ordine è essenziale: ad esempio nel piano cartesiano $\mathbb{R}^2$, il punto $(1,2)$ è diverso da $(2,1)$.

> [!summary] Definizione: Potenza Cartesiana
> Quando si effettua il prodotto cartesiano di un insieme per se stesso $\textcolor{blue}{n}$ volte, si parla di potenza cartesiana $A^{\textcolor{blue}{n}}$. I suoi elementi sono definiti sequenze (o liste) di lunghezza $\textcolor{blue}{n}$. In combinatoria tratteremo principalmente con insiemi di dimensione finita.

## L'Insieme delle Parti $\mathcal{P}(A)$

Un passaggio di astrazione essenziale in matematica discreta è considerare un insieme i cui elementi siano a loro volta insiemi.

> [!summary] Definizione: Insieme delle Parti
> L'insieme delle parti $\mathcal{P}(A)$ di un insieme base $A$ si definisce come l'insieme di tutti i sottoinsiemi estraibili da $A$, includendo sempre l'insieme vuoto $\emptyset$ e l'intero insieme $A$.

### Corrispondenza con le sequenze binarie

> [!info] Proposizione: Cardinalità dell'Insieme delle Parti
> Se un insieme $A$ ha $\textcolor{blue}{n}$ elementi, allora l'insieme delle parti $\mathcal{P}(A)$ avrà esattamente $2^{\textcolor{blue}{n}}$ elementi.

> [!quote] Dimostrazione
> Sfruttiamo una geniale corrispondenza biunivoca: associamo ad ogni sottoinsieme una sequenza binaria di lunghezza $\textcolor{blue}{n}$ (definita come "funzione indicatrice").
> Mettiamo un $1$ se l'elemento appartiene al sottoinsieme e uno $0$ se non appartiene. Dal momento che per ogni elemento abbiamo due scelte (incluso o escluso), e l'associazione è invertibile e perfetta, la cardinalità dell'insieme delle parti è esattamente $2^{\textcolor{blue}{n}}$.

**Esempio pratico con $A = \{a, b, c\}$:**
Associano ogni bit della sequenza a uno degli elementi di $A$. Vediamo come si formano i $2^{\textcolor{blue}{3}} = 8$ possibili sottoinsiemi in base ai bit:

| Sequenza (a, b, c) | Elementi Inclusi (Il Sottoinsieme) | Elementi Esclusi |
| :----------------: | :--------------------------------: | :--------------: |
|      `0 0 0`       |            $\emptyset$             |   $\{a, b, c\}$  |
|      `1 0 0`       |               $\{a\}$              |     $\{b, c\}$   |
|      `0 1 0`       |               $\{b\}$              |     $\{a, c\}$   |
|      `0 0 1`       |               $\{c\}$              |     $\{a, b\}$   |
|      `1 1 0`       |             $\{a, b\}$             |       $\{c\}$    |
|      `1 0 1`       |             $\{a, c\}$             |       $\{b\}$    |
|      `0 1 1`       |             $\{b, c\}$             |       $\{a\}$    |
|      `1 1 1`       |           $\{a, b, c\}$            |    $\emptyset$   |

## Principi di Conteggio ed Errori Comuni

Nella costruzione e nel conteggio degli insiemi, il rischio più grande è quello di effettuare **scelte non univoche**, portando ad ottenere configurazioni doppie (doppio conteggio).

**L'Errore dei Numeri Pari:** "In quanti modi possiamo scegliere 4 numeri tra 1 e 8 in modo che almeno 2 siano pari?"
Se costruiamo forzatamente l'insieme scegliendo prima due numeri pari (es. $\{2,4\}$) e poi due numeri qualsiasi tra i restanti (es. $\{6,7\}$), otterremo l'insieme $\{2,4,6,7\}$. Il problema è che avremmo potuto ottenere *esattamente lo stesso insieme* partendo dai numeri $\{2,6\}$ e pescando successivamente $\{4,7\}$. 
Per risolvere questo difetto, bisogna spezzare il problema in classi di equivalenza mutuamente esclusive (esattamente 2 pari, esattamente 3 pari, esattamente 4 pari) e sommarne i risultati individuali in maniera sicura (la somma dà $53$).

**I Pugnetti e le Simmetrie:** In un gruppo di 10 amici che si scambiano un pugnetto, possiamo contare tutte le interazioni in sequenza: abbiamo $10$ possibilità per il primo e $9$ per il secondo, ovvero $10 \cdot 9 = 90$ sequenze possibili (questo è un **prodotto condizionato**). Tuttavia, l'interazione A $\to$ B è fisicamente identica a B $\to$ A. Per evitare il doppio conteggio ci basterà semplicemente dividere il risultato a metà ($45$).

---

## 📝 Domande di Verifica

> [!question]- Che cos'è l'insieme delle parti $\mathcal{P}(A)$ e qual è la sua cardinalità per un insieme di $\textcolor{blue}{n}$ elementi?
> **Risposta:**
> È l'insieme i cui elementi sono tutti i possibili sottoinsiemi dell'insieme di partenza $A$ (inclusi $A$ stesso e l'insieme vuoto $\emptyset$). La sua cardinalità è $2^{\textcolor{blue}{n}}$, risultato dimostrato tramite una biiezione con le sequenze binarie di lunghezza $\textcolor{blue}{n}$ (funzione indicatrice).

> [!question]- Come si evita il doppio conteggio in combinatoria (es. l'errore delle scelte non univoche)?
> **Risposta:**
> Il problema si aggira tipicamente suddividendo il quesito in più **sottoproblemi mutuamente esclusivi** (es. calcolare casi disgiunti come "esattamente 2", "esattamente 3") in modo da poter sommare in sicurezza i totali. In alternativa, si contano in modo sistematico i casi con una configurazione ordinata e si divide il tutto analizzando le simmetrie (es. dividere per 2 se l'ordine non conta per le coppie).
