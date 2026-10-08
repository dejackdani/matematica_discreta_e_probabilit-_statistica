---
indice: "3.3"
tipo: [concetto]
tags: [matematica_discreta, calcolo_combinatorio, fibonacci]
data_creazione: 2026-09-25
fonti_usate: ["[[MdP20260925.md]]", "[[lezioniNew.pdf]]"]
stato: "🔴 Da Iniziare"
difficolta: Media
ultimo_ripasso: 
tempo_stimato: 20 min
---

# Combinazioni Multinomiali, Anagrammi e Fibonacci

Questo documento approfondisce le combinazioni espandendo i concetti introdotti in [[Disposizioni_e_Combinazioni]], includendo le combinazioni con ripetizione (attraverso l'uso degli anagrammi e del metodo stars and bars) e collegando le sequenze binarie ristrette ai numeri di Fibonacci.

## 1. Combinazioni Multinomiali (Tipo a,b,c)

> [!summary] Definizione: Coefficiente Multinomiale
> Estendendo la nozione di coefficiente binomiale, possiamo dividere un insieme di $\textcolor{blue}{n}$ elementi in tre sottoinsiemi disgiunti $A, B, C$ di cardinalità $\textcolor{red}{a}, \textcolor{purple}{b}, \textcolor{darkgreen}{c}$ (con $\textcolor{red}{a}+\textcolor{purple}{b}+\textcolor{darkgreen}{c}=\textcolor{blue}{n}$).
> Il numero di tali partizioni, noto come coefficiente multinomiale, è:
> $$ \binom{\textcolor{blue}{n}}{\textcolor{red}{a},\textcolor{purple}{b},\textcolor{darkgreen}{c}} = \frac{\textcolor{blue}{n}!}{\textcolor{red}{a}! \textcolor{purple}{b}! \textcolor{darkgreen}{c}!} $$

> [!info] Proposizione: Formula Ricorsiva Multinomiale
> Esiste una formula ricorsiva che generalizza l'identità di Pascal (o formula di Stifel):
> $$ \binom{\textcolor{blue}{n}}{\textcolor{red}{a},\textcolor{purple}{b},\textcolor{darkgreen}{c}} = \binom{\textcolor{blue}{n}-1}{\textcolor{red}{a}-1,\textcolor{purple}{b},\textcolor{darkgreen}{c}} + \binom{\textcolor{blue}{n}-1}{\textcolor{red}{a},\textcolor{purple}{b}-1,\textcolor{darkgreen}{c}} + \binom{\textcolor{blue}{n}-1}{\textcolor{red}{a},\textcolor{purple}{b},\textcolor{darkgreen}{c}-1} $$

> [!quote] Dimostrazione
> La logica della dimostrazione si basa sul tracciare la destinazione dell'elemento $\textcolor{blue}{n}$: esso deve appartenere necessariamente ad $A$, a $B$ o a $C$. Se appartiene ad $A$, per i restanti $\textcolor{blue}{n}-1$ elementi dovremo scegliere una partizione di tipo $\textcolor{red}{a}-1, \textcolor{purple}{b}, \textcolor{darkgreen}{c}$, e così via.

## 2. Corrispondenza con gli Anagrammi

> [!info] Proposizione: Corrispondenza con gli Anagrammi
> Le combinazioni di tipo $\textcolor{red}{a},\textcolor{purple}{b},\textcolor{darkgreen}{c}$ sono in corrispondenza biunivoca con gli **anagrammi**.
> Ad esempio, se vogliamo formare una parola in cui il simbolo "0" compare $\textcolor{red}{a}$ volte, "1" compare $\textcolor{purple}{b}$ volte e "2" compare $\textcolor{darkgreen}{c}$ volte, la scelta delle posizioni in cui collocare tali simboli equivale esattamente a ripartire le $\textcolor{blue}{n}$ posizioni totali nei tre insiemi $A, B$ e $C$. 

## 3. Combinazioni con Ripetizione (Stars and Bars)

> [!summary] Definizione: Combinazioni con Ripetizione (Stars and Bars)
> Se desideriamo scegliere $\textcolor{magenta}{k}$ oggetti da $\textcolor{blue}{n}$ tipologie diverse *con possibilità di ripetizione*, possiamo ricondurci alla codifica nota come **"stars and bars"** (stelle e sbarre).
> Ogni combinazione può essere rappresentata come una **sequenza binaria** in cui usiamo $\textcolor{blue}{n}-1$ cifre "1" per fungere da separatori (sbarre) che dividono lo spazio in $\textcolor{blue}{n}$ contenitori, all'interno dei quali posizioniamo i $\textcolor{magenta}{k}$ oggetti rappresentati da cifre "0".
> La sequenza totale sarà lunga $\textcolor{blue}{n}-1+\textcolor{magenta}{k}$, da cui si evince la formula:
> $$ \binom{\textcolor{blue}{n}+\textcolor{magenta}{k}-1}{\textcolor{magenta}{k}} = \binom{\textcolor{blue}{n}+\textcolor{magenta}{k}-1}{\textcolor{blue}{n}-1} $$

## 4. Sequenze Binarie senza Uni Consecutivi (Fibonacci)

> [!summary] Definizione: Numeri di Fibonacci (Sequenze Binarie)
> Cosa accade se consideriamo le sequenze binarie di lunghezza $\textcolor{blue}{n}$ ponendo la restrizione che **non possano esserci due "1" in posizioni adiacenti**?
> Se indichiamo con $F_{\textcolor{blue}{n}}$ il numero totale di queste sequenze, scopriamo che obbediscono alla ricorrenza della successione di Fibonacci.

> [!info] Teorema: Ricorrenza di Fibonacci per le Sequenze Binarie
> Il numero totale di sequenze binarie di lunghezza $\textcolor{blue}{n}$ senza uni consecutivi è dato da:
> $$ F_{\textcolor{blue}{n}} = F_{\textcolor{blue}{n}-1} + F_{\textcolor{blue}{n}-2} $$
> Se siamo interessati al numero di tali sequenze che contengono *esattamente* $\textcolor{magenta}{k}$ cifre "1", si può dimostrare che esse equivalgono a:
> $$ F(\textcolor{blue}{n},\textcolor{magenta}{k}) = \binom{\textcolor{blue}{n}-\textcolor{magenta}{k}+1}{\textcolor{magenta}{k}} $$

> [!quote] Dimostrazione
> La dimostrazione è ricorsiva. Uniamo due insiemi disgiunti:
> 1. Sequenze che terminano con "0": in questo caso, le restanti $\textcolor{blue}{n}-1$ cifre possono formare una qualsiasi sequenza valida. Ci sono $F_{\textcolor{blue}{n}-1}$ possibilità.
> 2. Sequenze che terminano con "1": per non violare la regola, la penultima cifra deve obbligatoriamente essere "0". I restanti $\textcolor{blue}{n}-2$ posti possono formare una qualsiasi sequenza valida, dando $F_{\textcolor{blue}{n}-2}$ possibilità.
> 
> Sommando i due casi otteniamo:
> $$ F_{\textcolor{blue}{n}} = F_{\textcolor{blue}{n}-1} + F_{\textcolor{blue}{n}-2} $$

---

## 📝 Domande di Verifica

> [!question]- Quante sono le combinazioni di tipo (a,b,c)?
> **Risposta:**
> Le combinazioni di tipo ($\textcolor{red}{a},\textcolor{purple}{b},\textcolor{darkgreen}{c}$) in un insieme $A$ (con $|A|=\textcolor{blue}{n}$) formano un prodotto condizionato di tipo $\binom{\textcolor{blue}{n}}{\textcolor{red}{a}} \binom{\textcolor{blue}{n}-\textcolor{red}{a}}{\textcolor{purple}{b}}$, che equivale a $\frac{\textcolor{blue}{n}!}{\textcolor{red}{a}!\textcolor{purple}{b}!\textcolor{darkgreen}{c}!}$.

> [!question]- Cosa sono i numeri di Fibonacci? (Definizione combinatoria)
> **Risposta:**
> In ambito combinatorio, $\forall \textcolor{blue}{n} \ge 0$, denotiamo con $F_{\textcolor{blue}{n}}$ il numero di sequenze (liste) binarie di lunghezza $\textcolor{blue}{n}$ in cui non compaiono due 1 consecutivi. 
> Godono della relazione ricorsiva $F_{\textcolor{blue}{n}} = F_{\textcolor{blue}{n}-1} + F_{\textcolor{blue}{n}-2}$.
