---
indice: "5.2"
tipo: concetto
tags:
  - probabilita
  - probabilita_condizionale
  - teorema_di_bayes
data_creazione: 2026-10-19
fonti_usate:
  - "[[MdP20261016.md]]"
  - "[[MdP20261023.md]]"
  - "[[lezioniNew.pdf]]"
  - "[[MDP Domande orale.pdf]]"
stato: "🔴 Da Iniziare"
difficolta: Media
ultimo_ripasso:
tempo_stimato: 30 min
---

# Probabilità Condizionale, Formula di Bayes ed Eventi Indipendenti

La **probabilità condizionale** modella come si evolve la valutazione di probabilità di un evento quando si acquisiscono nuove informazioni sul risultato del fenomeno aleatorio, ovvero quando si sa già (o si vuole imporre) che l'esito appartenga a un determinato sottoinsieme dello [[Spazi_di_Probabilita|spazio campionario]]. Da essa discendono anche la **Formula delle Probabilità Totali**, la **Formula di Bayes** e il concetto formale di **indipendenza stocastica** tra eventi.

---

## 1. Dall'Intuizione alla Definizione Formale

### L'Esempio Guida delle Due Urne
Consideriamo il seguente fenomeno aleatorio: abbiamo due urne indistinguibili dall'esterno (ciascuna scelta con probabilità $\frac{1}{2}$):
- **Urna 1 ($\textcolor{teal}{A_1}$):** contiene $2$ palline rosse e $1$ pallina bianca ($3$ palline);
- **Urna 2 ($\textcolor{teal}{A_2}$):** contiene $2$ palline rosse e $2$ palline bianche ($4$ palline).

Scegliamo un'urna a caso ed estraiamo una pallina. Lo [[Spazi_di_Probabilita|spazio dei risultati]] $\Omega$ è costituito dalle $7$ palline fisicamente distinte ($|\Omega| = 7$).
Se vogliamo calcolare la probabilità dell'evento $\textcolor{blue}{B} = \text{"la pallina estratta è bianca"}$, viene naturale rispondere che **dipende** dall'urna scelta. Quando in un problema sorge spontaneo dire *"dipende"*, dal punto di vista matematico occorre considerare una [[Partizioni_di_un_Insieme|partizione]] di $\Omega$ in eventi corrispondenti ai vari casi: in questo esempio, $\{\textcolor{teal}{A_1}, \textcolor{teal}{A_2}\}$.

Spezzando l'evento $\textcolor{blue}{B}$ sui due blocchi della partizione:
$$P(\textcolor{blue}{B}) = P(\textcolor{blue}{B} \cap \textcolor{teal}{A_1}) + P(\textcolor{blue}{B} \cap \textcolor{teal}{A_2})$$
Per valutare ciascun addendo diventa necessario esprimere la probabilità di estrarre una pallina bianca *imponendo la condizione* di trovarsi nella prima o nella seconda urna.

---

### Definizione ed Interpretazione Geometrica

> [!summary] Definizione: Probabilità Condizionale
> Dato uno [[Spazi_di_Probabilita|spazio di probabilità]] $(\Omega, \mathcal{A}, P)$ e fissato un evento $\textcolor{teal}{B} \in \mathcal{A}$ tale che $P(\textcolor{teal}{B}) > 0$, si definisce **probabilità condizionale** di un evento $\textcolor{blue}{A}$ rispetto a $\textcolor{teal}{B}$ (letta *"probabilità di $\textcolor{blue}{A}$ dato $\textcolor{teal}{B}$"*) la quantità:
> $$P(\textcolor{blue}{A}|\textcolor{teal}{B}) = \frac{P(\textcolor{blue}{A} \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})}$$

**Interpretazione tramite Diagrammi di Venn:**
Immaginiamo che $\Omega$ abbia superficie unitaria ($S(\Omega) = 1$) e che ogni evento abbia un'area proporzionale alla propria probabilità.
Imporre la condizione *"dato $\textcolor{teal}{B}$"* equivale a restringere il mondo possibile ai soli risultati contenuti in $\textcolor{teal}{B}$, cancellando tutto ciò che sta fuori da $\textcolor{teal}{B}$. In questo nuovo spazio ristretto, l'accadere dell'evento $\textcolor{blue}{A}$ corrisponde alla regione di intersezione $\textcolor{blue}{A} \cap \textcolor{teal}{B}$, valutata in proporzione alla superficie di $\textcolor{teal}{B}$:
$$P(\textcolor{blue}{A}|\textcolor{teal}{B}) = \frac{S(\textcolor{blue}{A} \cap \textcolor{teal}{B})}{S(\textcolor{teal}{B})} = \frac{P(\textcolor{blue}{A} \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})}$$

> [!info] Proposizione: Lo Spazio di Probabilità Condizionato
> Dato uno spazio di probabilità $(\Omega, \mathcal{A}, P)$ e fissato un evento $\textcolor{teal}{B} \in \mathcal{A}$ con $P(\textcolor{teal}{B}) > 0$, la terna $(\Omega, \mathcal{A}, P')$ con:
> $$P'(\textcolor{blue}{A}) = P(\textcolor{blue}{A}|\textcolor{teal}{B}) = \frac{P(\textcolor{blue}{A} \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})}$$
> è ancora uno **spazio di probabilità**.

> [!quote] Dimostrazione
> Verifichiamo che la funzione $P'(\cdot) = P(\cdot|\textcolor{teal}{B})$ soddisfa i due [[Spazi_di_Probabilita|assiomi di Kolmogorov]]:
> 1. **Normalizzazione:**
>    $$P'(\Omega) = P(\Omega|\textcolor{teal}{B}) = \frac{P(\Omega \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})} = \frac{P(\textcolor{teal}{B})}{P(\textcolor{teal}{B})} = 1$$
> 2. **$\sigma$-additività:** siano $\textcolor{blue}{A_1}, \textcolor{blue}{A_2}, \dots$ eventi a due a due disgiunti. Allora anche le intersezioni $\textcolor{blue}{A_i} \cap \textcolor{teal}{B}$ sono a due a due disgiunte e si ha:
>    $$P'\left(\bigcup_{\textcolor{purple}{i}=1}^\infty \textcolor{blue}{A_{\textcolor{purple}{i}}}\right) = \frac{P\left(\left(\bigcup_{\textcolor{purple}{i}=1}^\infty \textcolor{blue}{A_{\textcolor{purple}{i}}}\right) \cap \textcolor{teal}{B}\right)}{P(\textcolor{teal}{B})} = \frac{P\left(\bigcup_{\textcolor{purple}{i}=1}^\infty (\textcolor{blue}{A_{\textcolor{purple}{i}}} \cap \textcolor{teal}{B})\right)}{P(\textcolor{teal}{B})} = \sum_{\textcolor{purple}{i}=1}^\infty \frac{P(\textcolor{blue}{A_{\textcolor{purple}{i}}} \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})} = \sum_{\textcolor{purple}{i}=1}^\infty P'(\textcolor{blue}{A_{\textcolor{purple}{i}}}) \quad \square$$

### Formula Inversa per l'Intersezione e Differenza Concettuale
Nella risoluzione dei problemi, spesso si conosce direttamente la probabilità condizionale $P(\textcolor{blue}{A}|\textcolor{teal}{B})$ dalla modellizzazione e si usa la definizione "a rovescio" per calcolare la probabilità dell'intersezione:
$$P(\textcolor{blue}{A} \cap \textcolor{teal}{B}) = P(\textcolor{blue}{A}|\textcolor{teal}{B})P(\textcolor{teal}{B})$$

> [!warning] Attenzione all'Errore Comune: $P(\textcolor{blue}{A} \cap \textcolor{teal}{B})$ vs $P(\textcolor{blue}{A}|\textcolor{teal}{B})$
> È un errore grave confondere l'intersezione con la probabilità condizionale:
> - **$P(\textcolor{blue}{A} \cap \textcolor{teal}{B})$**: calcola a priori, all'inizio del fenomeno e senza alcuna informazione acquisita, la probabilità che il risultato verifichi simultaneamente sia $\textcolor{blue}{A}$ sia $\textcolor{teal}{B}$.
> - **$P(\textcolor{blue}{A}|\textcolor{teal}{B})$**: assume come dato certo che l'evento $\textcolor{teal}{B}$ si sia già verificato, e calcola la probabilità che in tale contesto si verifichi anche $\textcolor{blue}{A}$.

> [!info] Approfondimento dalle Dispense: Esempio sul Gioco del Lotto
> Riprendiamo l'esempio del [[Spazi_di_Probabilita#Esempio 2: Il Gioco del Lotto (Estrazione di 5 numeri tra 1 e 90)|Gioco del Lotto]] da [[lezioniNew.pdf]] (p. 52). Sia $\textcolor{blue}{B}$ l'evento *"esce il terno $\{1, 2, 3\}$"* (la cui probabilità assoluta è $P(\textcolor{blue}{B}) = \frac{1}{11748} \approx 0.000085$) e sia $\textcolor{teal}{A}$ l'evento *"il primo numero estratto è $1, 2$ o $3$"*, che ha probabilità $P(\textcolor{teal}{A}) = \frac{3}{90} = \frac{1}{30}$.
> Vogliamo calcolare $P(\textcolor{blue}{B}|\textcolor{teal}{A})$. Considerando le cinquine ordinate (che sono in totale $(90)_5$), i casi favorevoli a $\textcolor{teal}{A} \cap \textcolor{blue}{B}$ si ottengono scegliendo in $\binom{4}{2}$ modi le altre due posizioni per i numeri del terno, disponendo i $3$ numeri giocati in $3!$ modi e scegliendo gli ultimi $2$ numeri tra gli $87$ rimanenti in $87 \cdot 86$ modi:
> $$P(\textcolor{teal}{A} \cap \textcolor{blue}{B}) = \frac{\binom{4}{2} \cdot 3! \cdot 87 \cdot 86}{(90)_5} = \frac{269352}{(90)_5} = \frac{1}{19624}$$
> Da cui segue che sapere che il primo estratto è uno dei nostri numeri innalza sensibilmente la probabilità di fare terno:
> $$P(\textcolor{blue}{B}|\textcolor{teal}{A}) = \frac{P(\textcolor{teal}{A} \cap \textcolor{blue}{B})}{P(\textcolor{teal}{A})} = \frac{30}{19624} \approx 0.0015$$

---

## 2. La Formula delle Probabilità Totali

Formalizziamo il procedimento di suddivisione in "casi" visto nell'esempio delle urne.

> [!info] Proposizione: Formula delle Probabilità Totali
> Sia $\{\textcolor{teal}{A_1}, \textcolor{teal}{A_2}, \dots, \textcolor{teal}{A_n}\}$ una [[Partizioni_di_un_Insieme|partizione]] in eventi di $\Omega$ (ovvero eventi a due a due disgiunti tali che $\bigcup_{\textcolor{purple}{i}=1}^n \textcolor{teal}{A_{\textcolor{purple}{i}}} = \Omega$). Allora, per ogni evento $\textcolor{blue}{B} \in \mathcal{A}$, vale la **formula delle probabilità totali**:
> $$P(\textcolor{blue}{B}) = \sum_{\textcolor{purple}{i}=1}^n P(\textcolor{blue}{B}|\textcolor{teal}{A_{\textcolor{purple}{i}}})P(\textcolor{teal}{A_{\textcolor{purple}{i}}})$$

> [!quote] Dimostrazione
> Poiché $\{\textcolor{teal}{A_1}, \dots, \textcolor{teal}{A_n}\}$ è una partizione di $\Omega$, possiamo decomporre $\textcolor{blue}{B}$ nell'unione disgiunta $\textcolor{blue}{B} = \bigcup_{\textcolor{purple}{i}=1}^n (\textcolor{blue}{B} \cap \textcolor{teal}{A_{\textcolor{purple}{i}}})$. Per l'additività della probabilità e la definizione di probabilità condizionale:
> $$P(\textcolor{blue}{B}) = \sum_{\textcolor{purple}{i}=1}^n P(\textcolor{blue}{B} \cap \textcolor{teal}{A_{\textcolor{purple}{i}}}) = \sum_{\textcolor{purple}{i}=1}^n P(\textcolor{blue}{B}|\textcolor{teal}{A_{\textcolor{purple}{i}}})P(\textcolor{teal}{A_{\textcolor{purple}{i}}}) \quad \square$$

**Completamento dell'Esempio delle Due Urne:**
Applicando la formula delle probabilità totali all'esempio iniziale con $P(\textcolor{teal}{A_1}) = P(\textcolor{teal}{A_2}) = \frac{1}{2}$, $P(\textcolor{blue}{B}|\textcolor{teal}{A_1}) = \frac{1}{3}$ e $P(\textcolor{blue}{B}|\textcolor{teal}{A_2}) = \frac{2}{4} = \frac{1}{2}$, si ottiene:
$$P(\textcolor{blue}{B}) = P(\textcolor{blue}{B}|\textcolor{teal}{A_1})P(\textcolor{teal}{A_1}) + P(\textcolor{blue}{B}|\textcolor{teal}{A_2})P(\textcolor{teal}{A_2}) = \frac{1}{3} \cdot \frac{1}{2} + \frac{2}{4} \cdot \frac{1}{2} = \frac{1}{6} + \frac{1}{4} = \frac{5}{12}$$
Di conseguenza, la probabilità di estrarre una pallina rossa è $P(\textcolor{blue}{B}^c) = 1 - \frac{5}{12} = \frac{7}{12}$.

---

### Applicazione Classica: Estrazioni Senza Rimpiazzo da un'Urna
Consideriamo un'urna contenente $\textcolor{blue}{b}$ palline bianche e $\textcolor{red}{r}$ palline rosse. Effettuiamo $n$ estrazioni successive **senza rimpiazzo** (lasciando fuori di volta in volta la pallina estratta) e definiamo gli eventi:
$$\textcolor{blue}{B_{\textcolor{purple}{i}}} = \text{"l'}\textcolor{purple}{i}\text{-esima pallina estratta è bianca"}, \qquad \textcolor{red}{R_{\textcolor{purple}{i}}} = \textcolor{blue}{B_{\textcolor{purple}{i}}}^c = \text{"l'}\textcolor{purple}{i}\text{-esima pallina estratta è rossa"}$$

1. **Prima estrazione ($P(\textcolor{blue}{B_1})$):**
   Alla prima estrazione tutte le $\textcolor{blue}{b} + \textcolor{red}{r}$ palline sono equiprobabili, quindi:
   $$P(\textcolor{blue}{B_1}) = \frac{\textcolor{blue}{b}}{\textcolor{blue}{b} + \textcolor{red}{r}}$$
2. **Seconda estrazione ($P(\textcolor{blue}{B_2})$):**
   L'esito della seconda estrazione dipende dalla prima. Applichiamo la formula delle probabilità totali rispetto alla partizione $\{\textcolor{blue}{B_1}, \textcolor{red}{R_1}\}$:
   $$P(\textcolor{blue}{B_2}) = P(\textcolor{blue}{B_2}|\textcolor{blue}{B_1})P(\textcolor{blue}{B_1}) + P(\textcolor{blue}{B_2}|\textcolor{red}{R_1})P(\textcolor{red}{R_1})$$
   - Se la prima estratta è bianca ($\textcolor{blue}{B_1}$), nell'urna restano $\textcolor{blue}{b}-1$ bianche su $\textcolor{blue}{b}+\textcolor{red}{r}-1$ palline: $P(\textcolor{blue}{B_2}|\textcolor{blue}{B_1}) = \frac{\textcolor{blue}{b}-1}{\textcolor{blue}{b}+\textcolor{red}{r}-1}$.
   - Se la prima estratta è rossa ($\textcolor{red}{R_1}$), nell'urna restano $\textcolor{blue}{b}$ bianche su $\textcolor{blue}{b}+\textcolor{red}{r}-1$ palline: $P(\textcolor{blue}{B_2}|\textcolor{red}{R_1}) = \frac{\textcolor{blue}{b}}{\textcolor{blue}{b}+\textcolor{red}{r}-1}$.

   Sostituendo e raccogliendo $\textcolor{blue}{b}$ a numeratore:
   $$P(\textcolor{blue}{B_2}) = \frac{\textcolor{blue}{b}-1}{\textcolor{blue}{b}+\textcolor{red}{r}-1} \cdot \frac{\textcolor{blue}{b}}{\textcolor{blue}{b}+\textcolor{red}{r}} + \frac{\textcolor{blue}{b}}{\textcolor{blue}{b}+\textcolor{red}{r}-1} \cdot \frac{\textcolor{red}{r}}{\textcolor{blue}{b}+\textcolor{red}{r}} = \frac{\textcolor{blue}{b}[(\textcolor{blue}{b}-1) + \textcolor{red}{r}]}{(\textcolor{blue}{b}+\textcolor{red}{r})(\textcolor{blue}{b}+\textcolor{red}{r}-1)} = \frac{\textcolor{blue}{b}}{\textcolor{blue}{b}+\textcolor{red}{r}} = P(\textcolor{blue}{B_1})$$
3. **$i$-esima estrazione ($P(\textcolor{blue}{B_{\textcolor{purple}{i}}})$):**
   Per ogni $\textcolor{purple}{i} = 1, \dots, n$, se si osserva esclusivamente l'$\textcolor{purple}{i}$-esima estrazione a priori (senza conoscere gli esiti delle estrazioni precedenti), per simmetria ciascuna delle $\textcolor{blue}{b}+\textcolor{red}{r}$ palline ha la medesima probabilità di occupare la posizione $\textcolor{purple}{i}$-esima (nello spazio uniforme delle [[Disposizioni_e_Combinazioni|disposizioni]] di lunghezza $n$, scambiare la prima e l'$\textcolor{purple}{i}$-esima componente crea una corrispondenza biunivoca tra $\textcolor{blue}{B_1}$ e $\textcolor{blue}{B_{\textcolor{purple}{i}}}$). Pertanto:
   $$P(\textcolor{blue}{B_{\textcolor{purple}{i}}}) = \frac{\textcolor{blue}{b}}{\textcolor{blue}{b}+\textcolor{red}{r}} \quad \forall \textcolor{purple}{i} = 1, \dots, n$$

---

## 3. La Formula di Bayes

Quando occorre calcolare una probabilità condizionale $P(\textcolor{teal}{A}|\textcolor{blue}{B})$ ma risulta molto più agevole conoscere la probabilità condizionale inversa $P(\textcolor{blue}{B}|\textcolor{teal}{A})$, si ricorre alla **formula di Bayes**.

> [!info] Teorema: Formula di Bayes
> Siano $\textcolor{teal}{A}$ e $\textcolor{blue}{B}$ due eventi con $P(\textcolor{teal}{A}) > 0$ e $P(\textcolor{blue}{B}) > 0$. Allora:
> $$P(\textcolor{teal}{A}|\textcolor{blue}{B}) = \frac{P(\textcolor{blue}{B}|\textcolor{teal}{A})P(\textcolor{teal}{A})}{P(\textcolor{blue}{B})}$$

> [!quote] Dimostrazione
> Per la proprietà commutativa dell'intersezione ($\textcolor{teal}{A} \cap \textcolor{blue}{B} = \textcolor{blue}{B} \cap \textcolor{teal}{A}$) e la definizione di probabilità condizionale, possiamo esprimere $P(\textcolor{teal}{A} \cap \textcolor{blue}{B})$ in due modi equivalenti:
> $$P(\textcolor{teal}{A} \cap \textcolor{blue}{B}) = P(\textcolor{teal}{A}|\textcolor{blue}{B})P(\textcolor{blue}{B}) = P(\textcolor{blue}{B}|\textcolor{teal}{A})P(\textcolor{teal}{A})$$
> Dividendo ambo i membri per $P(\textcolor{blue}{B})$ si ottiene la formula cercata. $\square$

---

### Casi Studio ed Esempi Classici

#### Esempio 1: Fumatori e Malattia (Uso Combinato di Probabilità Totali e Bayes)
In una regione il $40\%$ degli abitanti fuma ($\textcolor{teal}{F}$), mentre il $60\%$ non fuma ($\textcolor{teal}{N} = \textcolor{teal}{F}^c$). Il $25\%$ dei fumatori e il $7\%$ dei non fumatori soffrono di una certa malattia ($\textcolor{blue}{M}$).
- **Modellizzazione dei dati:**
  $$P(\textcolor{teal}{F}) = 0.40, \quad P(\textcolor{teal}{N}) = 0.60, \quad P(\textcolor{blue}{M}|\textcolor{teal}{F}) = 0.25, \quad P(\textcolor{blue}{M}|\textcolor{teal}{N}) = 0.07$$
- **1. Probabilità che un abitante scelto a caso sia malato ($P(\textcolor{blue}{M})$):**
  Poiché $\{\textcolor{teal}{F}, \textcolor{teal}{N}\}$ è una partizione di $\Omega$, usiamo la **formula delle probabilità totali**:
  $$P(\textcolor{blue}{M}) = P(\textcolor{blue}{M}|\textcolor{teal}{F})P(\textcolor{teal}{F}) + P(\textcolor{blue}{M}|\textcolor{teal}{N})P(\textcolor{teal}{N}) = 0.25 \cdot 0.40 + 0.07 \cdot 0.60 = 0.142 = 14.2\%$$
- **2. Probabilità che un malato scelto a caso sia un fumatore ($P(\textcolor{teal}{F}|\textcolor{blue}{M})$):**
  Invertiamo il condizionamento mediante la **formula di Bayes**:
  $$P(\textcolor{teal}{F}|\textcolor{blue}{M}) = \frac{P(\textcolor{blue}{M}|\textcolor{teal}{F})P(\textcolor{teal}{F})}{P(\textcolor{blue}{M})} = \frac{0.25 \cdot 0.40}{0.142} = \frac{0.10}{0.142} \approx 0.704 = 70.4\%$$

#### Esempio 2: L'Indovinello dei Tre Comodini (Paradosso dei Cassetti)
Si hanno $3$ comodini, ciascuno con $2$ cassetti:
- **Comodino 1 ($\textcolor{teal}{A_1}$):** contiene $2$ monete d'oro;
- **Comodino 2 ($\textcolor{teal}{A_2}$):** contiene $2$ monete di bronzo (o argento);
- **Comodino 3 ($\textcolor{teal}{A_3}$):** contiene $1$ moneta d'oro e $1$ di bronzo.

Si sceglie un cassetto a caso tra i $6$ e si trova una moneta d'oro (evento $\textcolor{blue}{G}$). *Qual è la probabilità che anche nell'altro cassetto dello stesso comodino ci sia una moneta d'oro?*
- Affinché anche l'altro cassetto contenga oro, dobbiamo necessariamente aver scelto il primo comodino ($\textcolor{teal}{A_1}$). La probabilità cercata è quindi $P(\textcolor{teal}{A_1}|\textcolor{blue}{G})$.
- Sapendo che $P(\textcolor{teal}{A_1}) = \frac{1}{3}$, $P(\textcolor{blue}{G}|\textcolor{teal}{A_1}) = 1$ e che i cassetti con monete d'oro sono $3$ su $6$ totali equiprobabili ($P(\textcolor{blue}{G}) = \frac{3}{6} = \frac{1}{2}$), per la formula di Bayes abbiamo:
  $$P(\textcolor{teal}{A_1}|\textcolor{blue}{G}) = \frac{P(\textcolor{blue}{G}|\textcolor{teal}{A_1})P(\textcolor{teal}{A_1})}{P(\textcolor{blue}{G})} = \frac{1 \cdot \frac{1}{3}}{\frac{1}{2}} = \frac{2}{3}$$
  *(Intuitivamente: delle $3$ monete d'oro esistenti nel nuovo spazio ristretto $\textcolor{blue}{G}$, ben $2$ si trovano nel comodino $\textcolor{teal}{A_1}$ e solo $1$ nel comodino $\textcolor{teal}{A_3}$).*

> [!info] Approfondimento dalle Dispense: Ulteriori Esempi su Bayes
> In [[lezioniNew.pdf]] (p. 54) sono riportati due ulteriori esempi analoghi:
> 1. **Le due carte (Esercizio 5.13 bis):** Un'urna contiene $2$ carte: la carta $\textcolor{teal}{A_1}$ ha entrambi i lati neri, la carta $\textcolor{teal}{A_2}$ ha un lato bianco e uno nero. Si estrae una carta e si poggia sul tavolo mostrando una faccia nera ($\textcolor{blue}{N}$). La probabilità che anche la faccia nascosta sia nera coincide con $P(\textcolor{teal}{A_1}|\textcolor{blue}{N})$:
>    $$P(\textcolor{teal}{A_1}|\textcolor{blue}{N}) = \frac{P(\textcolor{blue}{N}|\textcolor{teal}{A_1})P(\textcolor{teal}{A_1})}{P(\textcolor{blue}{N})} = \frac{1 \cdot \frac{1}{2}}{\frac{3}{4}} = \frac{2}{3}$$
> 2. **Le tre urne (Esempio 5.14):** Si hanno $3$ urne equiprobabili ($P(\textcolor{teal}{A_{\textcolor{purple}{i}}}) = \frac{1}{3}$), dove l'$\textcolor{purple}{i}$-esima urna contiene $1$ pallina rossa e $\textcolor{purple}{i}$ palline bianche. Sapendo di aver estratto una pallina bianca ($\textcolor{blue}{B}$), qual è la probabilità che provenga dalla terza urna ($P(\textcolor{teal}{A_3}|\textcolor{blue}{B})$)?
>    Calcoliamo prima $P(\textcolor{blue}{B})$ con la formula delle probabilità totali:
>    $$P(\textcolor{blue}{B}) = \sum_{\textcolor{purple}{i}=1}^3 P(\textcolor{teal}{A_{\textcolor{purple}{i}}})P(\textcolor{blue}{B}|\textcolor{teal}{A_{\textcolor{purple}{i}}}) = \frac{1}{3}\cdot\frac{1}{2} + \frac{1}{3}\cdot\frac{2}{3} + \frac{1}{3}\cdot\frac{3}{4} = \frac{23}{36}$$
>    Applicando ora la formula di Bayes:
>    $$P(\textcolor{teal}{A_3}|\textcolor{blue}{B}) = \frac{P(\textcolor{teal}{A_3})P(\textcolor{blue}{B}|\textcolor{teal}{A_3})}{P(\textcolor{blue}{B})} = \frac{\frac{1}{3} \cdot \frac{3}{4}}{\frac{23}{36}} = \frac{9}{23}$$

---

> [!warning] ⚠️ Sezione Ricostruita da Dispense (Lezione del 21 Ottobre - Assenza a Lezione)
> La seguente sezione sugli **Eventi Indipendenti** (§4) è stata ricostruita autonomamente dalla bibbia del corso ([[lezioniNew.pdf]], Capitolo 5, §6, pp. 54–55) per coprire la prima parte della lezione di Mercoledì 21 Ottobre 2026 non registrata in aula, integrata con il caso studio sull'aggiornamento delle credenze spiegato dal docente nella lezione del 23 Ottobre ([[MdP20261023.md]]).

## 4. Eventi Indipendenti

Nella modellizzazione probabilistica capita frequentemente che il verificarsi di un evento $\textcolor{teal}{A}$ non alteri in alcun modo la probabilità che si verifichi un altro evento $\textcolor{blue}{B}$ (ad esempio quando si effettuano lanci successivi di un dado o estrazioni **con rimpiazzo** da un'urna).

> [!summary] Definizione: Eventi Indipendenti
> Due eventi $\textcolor{teal}{A}$ e $\textcolor{blue}{B}$ si dicono **indipendenti** se il fatto che uno dei due accada non modifica la probabilità che accada anche l'altro, ovvero (qualora $P(\textcolor{teal}{A}) > 0$ e $P(\textcolor{blue}{B}) > 0$):
> $$P(\textcolor{blue}{B}|\textcolor{teal}{A}) = P(\textcolor{blue}{B}) \qquad \text{e} \qquad P(\textcolor{teal}{A}|\textcolor{blue}{B}) = P(\textcolor{teal}{A})$$
> Ricordando la definizione di probabilità condizionale $P(\textcolor{blue}{B}|\textcolor{teal}{A}) = \frac{P(\textcolor{teal}{A} \cap \textcolor{blue}{B})}{P(\textcolor{teal}{A})}$, entrambe le condizioni equivalgono alla relazione simmetrica (valida anche quando uno degli eventi ha probabilità nulla):
> $$P(\textcolor{teal}{A} \cap \textcolor{blue}{B}) = P(\textcolor{teal}{A}) \cdot P(\textcolor{blue}{B})$$
> In modo analogo si definisce l'indipendenza di $n$ eventi $\textcolor{teal}{A_1}, \dots, \textcolor{teal}{A_n}$ (la probabilità dell'intersezione coincide con il prodotto delle singole probabilità).

### Esempi Fondamentali dalle Dispense ([[lezioniNew.pdf]], pp. 54–55)

1. **Estrazioni con rimpiazzo da un'urna (Esempio 5.16):**
   Un'urna contiene $4$ palline bianche e $3$ rosse ($7$ in totale). Si estraggono $2$ palline **con rimpiazzo** (reintroducendo nell'urna la prima pallina estratta prima della seconda estrazione). *È più probabile che le due palline estratte siano dello stesso colore o di colore diverso?*
   Sia $\textcolor{blue}{B_{\textcolor{purple}{i}}}$ l'evento *"pallina bianca all'estrazione $\textcolor{purple}{i}$"* e $\textcolor{red}{R_{\textcolor{purple}{i}}}$ l'evento *"pallina rossa all'estrazione $\textcolor{purple}{i}$"*. L'evento $\textcolor{teal}{E} = \text{"estrazione di 2 palline dello stesso colore"}$ si decompone nell'unione disgiunta:
   $$\textcolor{teal}{E} = (\textcolor{blue}{B_1} \cap \textcolor{blue}{B_2}) \cup (\textcolor{red}{R_1} \cap \textcolor{red}{R_2})$$
   Poiché le estrazioni avvengono con rimpiazzo, $\textcolor{blue}{B_1}$ e $\textcolor{blue}{B_2}$ sono **indipendenti** (così come $\textcolor{red}{R_1}$ e $\textcolor{red}{R_2}$), pertanto:
   $$P(\textcolor{teal}{E}) = P(\textcolor{blue}{B_1} \cap \textcolor{blue}{B_2}) + P(\textcolor{red}{R_1} \cap \textcolor{red}{R_2}) = P(\textcolor{blue}{B_1})P(\textcolor{blue}{B_2}) + P(\textcolor{red}{R_1})P(\textcolor{red}{R_2}) = \frac{4}{7}\cdot\frac{4}{7} + \frac{3}{7}\cdot\frac{3}{7} = \frac{16 + 9}{49} = \frac{25}{49} > \frac{1}{2}$$
   È quindi leggermente più probabile ottenere $2$ palline dello stesso colore ($\frac{25}{49}$) piuttosto che di colore diverso ($\frac{24}{49}$).

2. **Sequenze di prove indipendenti e invarianza rispetto all'ordine (Esempio 5.17):**
   Lanciando un dado, diciamo di ottenere un **successo** ($1$) se esce un numero $\ge 5$ (probabilità $p = \frac{2}{6} = \frac{1}{3}$) e un **insuccesso** ($0$) se esce un numero $\le 4$ (probabilità $1-p = \frac{2}{3}$).
   Lanciando il dado $8$ volte, qual è la probabilità di ottenere la specifica sequenza `00101001`?
   Poiché i lanci sono prove indipendenti tra loro, la probabilità dell'intersezione è il prodotto delle probabilità dei singoli esiti:
   $$P(\text{00101001}) = \frac{2}{3}\cdot\frac{2}{3}\cdot\frac{1}{3}\cdot\frac{2}{3}\cdot\frac{1}{3}\cdot\frac{2}{3}\cdot\frac{2}{3}\cdot\frac{1}{3} = \left(\frac{1}{3}\right)^3 \left(\frac{2}{3}\right)^5$$
   *(Nota: sul testo della dispensa gli esponenti sono riportati con un refuso invertito $\left(\frac{1}{3}\right)^5 \left(\frac{2}{3}\right)^3$, ma il principio concettuale è fondamentale)*: **la probabilità di una specifica sequenza di prove indipendenti non dipende dall'ordine in cui si susseguono i successi e gli insuccessi, ma esclusivamente dal numero totale di successi e di insuccessi**. Ad esempio, la sequenza `00000111` ha esattamente la stessa probabilità di `00101001`. Questa osservazione è il pilastro su cui si fonda la costruzione delle [[Variabili_Discrete_e_Schemi_Successo_Insuccesso|variabili aleatorie binomiali]].

---

### Caso Studio Sottile: Apparente Indipendenza e "Aggiornamento delle Credenze" (Lezione 23 Ottobre - Es. 6.9)
Si hanno a disposizione due monete: una **truccata** ($\textcolor{teal}{A_1}$, che dà testa con probabilità $0.6$) e una **regolare** ($\textcolor{teal}{A_2}$, che dà testa con probabilità $0.5$). Si sceglie una moneta a caso ($P(\textcolor{teal}{A_1}) = P(\textcolor{teal}{A_2}) = \frac{1}{2}$) e la si lancia più volte.
Consideriamo gli eventi $\textcolor{blue}{E_1} = \text{"testa al 1° lancio"}$ ed $\textcolor{blue}{E_2} = \text{"testa al 2° lancio"}$. **Sono indipendenti?**

- **L'intuizione ingannevole:** Si potrebbe pensare che, poiché si lancia sempre la stessa moneta e i lanci fisici non si influenzano, $\textcolor{blue}{E_1}$ ed $\textcolor{blue}{E_2}$ siano indipendenti.
- **La realtà matematica (sono DIPENDENTI):** I lanci sono condizionatamente indipendenti *solo una volta fissata la moneta* ($P(\textcolor{blue}{E_1} \cap \textcolor{blue}{E_2}|\textcolor{teal}{A_1}) = 0.6^2$ e $P(\textcolor{blue}{E_1} \cap \textcolor{blue}{E_2}|\textcolor{teal}{A_2}) = 0.5^2$), ma a priori **noi non sappiamo quale moneta abbiamo in mano**!
  - Per la formula delle probabilità totali:
    $$P(\textcolor{blue}{E_1}) = P(\textcolor{blue}{E_2}) = \frac{1}{2}(0.6) + \frac{1}{2}(0.5) = 0.55 \implies P(\textcolor{blue}{E_1})P(\textcolor{blue}{E_2}) = 0.55^2 = 0.3025$$
  - Calcolando invece la probabilità dell'intersezione $\textcolor{blue}{E_1} \cap \textcolor{blue}{E_2}$ tramite la formula delle probabilità totali:
    $$P(\textcolor{blue}{E_1} \cap \textcolor{blue}{E_2}) = \frac{1}{2}(0.6)^2 + \frac{1}{2}(0.5)^2 = \frac{0.36 + 0.25}{2} = 0.305 \neq 0.3025$$
- **Spiegazione tramite l'Aggiornamento delle Credenze (*Belief Updating*):**
  Osservare che il primo lancio ha dato testa ($\textcolor{blue}{E_1}$) fornisce un'informazione sulla moneta scelta: per la formula di Bayes, la probabilità che la moneta in mano sia quella truccata sale da $0.50$ a:
  $$P(\textcolor{teal}{A_1}|\textcolor{blue}{E_1}) = \frac{P(\textcolor{blue}{E_1}|\textcolor{teal}{A_1})P(\textcolor{teal}{A_1})}{P(\textcolor{blue}{E_1})} = \frac{0.6 \cdot 0.5}{0.55} = \frac{6}{11} \approx 0.5454$$
  Poiché ora è più probabile avere in mano la moneta truccata, aumenta anche la probabilità di ottenere testa al secondo lancio!
  *(Esempio estremo del docente)*: Se lanciassimo la moneta scelta $1000$ volte ottenendo $603$ teste e $397$ croci, avremmo ormai la certezza quasi assoluta ($99.9999\%$) che la moneta impugnata sia quella truccata, e la probabilità di testa al $1001$-esimo lancio diventerebbe praticamente $0.60$. Questo meccanismo di **aggiornamento delle credenze** alla luce delle evidenze osservate è alla base dell'inferenza bayesiana e dei moderni algoritmi di intelligenza artificiale.

---

## 📝 Domande di Verifica

> [!question]- 25. Qual è la formula delle probabilità totali? Come funziona? A cosa serve? (x2)
> **Risposta:**
> Se $\{\textcolor{teal}{A_1}, \textcolor{teal}{A_2}, \dots, \textcolor{teal}{A_n}\}$ è una [[Partizioni_di_un_Insieme|partizione]] in eventi dello spazio campionario $\Omega$, allora per ogni evento $\textcolor{blue}{B}$ vale la formula:
> $$P(\textcolor{blue}{B}) = \sum_{\textcolor{purple}{i}=1}^n P(\textcolor{blue}{B}|\textcolor{teal}{A_{\textcolor{purple}{i}}})P(\textcolor{teal}{A_{\textcolor{purple}{i}}})$$
> **Come funziona e a cosa serve:** Serve a calcolare la probabilità di un evento $\textcolor{blue}{B}$ quando risulta naturale suddividere il fenomeno aleatorio in "casi" mutuamente esclusivi ed esaustivi (i blocchi $\textcolor{teal}{A_{\textcolor{purple}{i}}}$ della partizione). L'evento $\textcolor{blue}{B}$ può presentarsi in uno qualsiasi dei blocchi $\textcolor{teal}{A_{\textcolor{purple}{i}}}$: si calcola quindi la probabilità condizionale che $\textcolor{blue}{B}$ avvenga in ciascun singolo caso $\textcolor{teal}{A_{\textcolor{purple}{i}}}$, la si pesa per la probabilità $P(\textcolor{teal}{A_{\textcolor{purple}{i}}})$ che quel caso si verifichi, e si sommano tutti i contributi.

> [!question]- 46. Cosa vuol dire probabilità condizionale (condizionata)? Qual è la formula di Bayes? Dimostrazione. (x2)
> **Risposta:**
> Siano $\textcolor{blue}{A}$ e $\textcolor{teal}{B}$ due eventi con $P(\textcolor{teal}{B}) > 0$. La **probabilità condizionale** $P(\textcolor{blue}{A}|\textcolor{teal}{B})$ rappresenta la probabilità che si verifichi l'evento $\textcolor{blue}{A}$ sapendo che l'evento $\textcolor{teal}{B}$ si è già verificato (ovvero restringendo lo spazio dei risultati a $\textcolor{teal}{B}$), ed è definita come:
> $$P(\textcolor{blue}{A}|\textcolor{teal}{B}) = \frac{P(\textcolor{blue}{A} \cap \textcolor{teal}{B})}{P(\textcolor{teal}{B})}$$
> Spesso tale relazione viene usata al contrario per calcolare la probabilità dell'intersezione: $P(\textcolor{blue}{A} \cap \textcolor{teal}{B}) = P(\textcolor{blue}{A}|\textcolor{teal}{B})P(\textcolor{teal}{B})$.
>
> La **formula di Bayes** viene utilizzata per invertire il condizionamento, ossia per calcolare $P(\textcolor{blue}{A}|\textcolor{teal}{B})$ quando è noto o più semplice calcolare $P(\textcolor{teal}{B}|\textcolor{blue}{A})$:
> $$P(\textcolor{blue}{A}|\textcolor{teal}{B}) = \frac{P(\textcolor{teal}{B}|\textcolor{blue}{A})P(\textcolor{blue}{A})}{P(\textcolor{teal}{B})}$$
> **Dimostrazione:** Dalla definizione di probabilità condizionale applicata in entrambi i versi si ha $P(\textcolor{blue}{A} \cap \textcolor{teal}{B}) = P(\textcolor{blue}{A}|\textcolor{teal}{B})P(\textcolor{teal}{B})$ e $P(\textcolor{teal}{B} \cap \textcolor{blue}{A}) = P(\textcolor{teal}{B}|\textcolor{blue}{A})P(\textcolor{teal}{B})$. Poiché $\textcolor{blue}{A} \cap \textcolor{teal}{B} = \textcolor{teal}{B} \cap \textcolor{blue}{A}$, uguagliando i secondi membri si ottiene $P(\textcolor{blue}{A}|\textcolor{teal}{B})P(\textcolor{teal}{B}) = P(\textcolor{teal}{B}|\textcolor{blue}{A})P(\textcolor{blue}{A})$, da cui dividendo per $P(\textcolor{teal}{B})$ segue la tesi.

> [!question]- Quando due eventi $A$ e $B$ si dicono indipendenti?
> **Risposta:**
> Due eventi $\textcolor{teal}{A}$ e $\textcolor{blue}{B}$ si dicono **indipendenti** se il verificarsi di uno non modifica la probabilità che si verifichi l'altro, ossia $P(\textcolor{blue}{B}|\textcolor{teal}{A}) = P(\textcolor{blue}{B})$ (se $P(\textcolor{teal}{A}) > 0$) e $P(\textcolor{teal}{A}|\textcolor{blue}{B}) = P(\textcolor{teal}{A})$ (se $P(\textcolor{blue}{B}) > 0$). Dalla definizione di probabilità condizionale, ciò è equivalente alla condizione simmetrica:
> $$P(\textcolor{teal}{A} \cap \textcolor{blue}{B}) = P(\textcolor{teal}{A}) \cdot P(\textcolor{blue}{B})$$

