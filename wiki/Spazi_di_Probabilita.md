---
indice: "5.1"
tipo: riassunto_fonte
tags:
  - probabilita
  - assiomi_kolmogorov
  - spazio_uniforme
data_creazione: 2026-10-15
fonti_usate:
  - "[[Lezione di 2026 ottobre 14 - 2° ora.md]]"
  - "[[lezioniNew.pdf]]"
  - "[[MDP Domande orale.pdf]]"
---

# Spazi di Probabilità e Probabilità Uniforme

In questo capitolo si introducono le fondamenta teoriche della teoria della probabilità, passando dai fenomeni deterministici a quelli aleatori e formalizzando il concetto matematico di spazio di probabilità e di misura di probabilità uniforme (che poggia direttamente sugli strumenti di [[Insiemi_e_Cardinalità]], [[Basi_del_Calcolo_Combinatorio]] e [[Disposizioni_e_Combinazioni]]; per gli esercizi applicativi si veda [[Esercitazione_06_23-Ottobre]] e il mazzo [[04-Spazi_di_Probabilita]]).

---

> [!warning] ⚠️ Sezione Ricostruita da Dispense (Lezione del 14 Ottobre - 1ª Ora Mancante)
> Questa prima sezione teorica (§1 e §2) è stata integrata autonomamente dalla bibbia del corso ([[lezioniNew.pdf]], Capitolo 5, §1 e §2, pp. 45-47) a causa dell'assenza di registrazione/audio per la prima ora della lezione del 14 Ottobre 2026. 
> **Nota per lo studente:** Qualora riuscissi a recuperare appunti o registrazioni della prima ora, questa sezione andrà revisionata per verificare eventuali esempi o sfumature particolari discusse a voce dal docente.

## 1. Fenomeni Deterministici e Aleatori, Risultati ed Eventi

Un **fenomeno** è un qualsiasi accadimento che genera un determinato esito appartenente a un insieme prefissato:
- **Deterministico:** il risultato può essere previsto con certezza assoluta prima dell'effettuazione (es. caduta di un grave nel vuoto, traiettoria balistica).
- **Casuale (o Aleatorio):** il risultato non è prevedibile con certezza (es. esito del lancio di un dado, tempo fino al guasto di un dispositivo, punteggio di una partita).

### Spazio Campionario $\Omega$ ed Eventi

> [!summary] Definizione: Spazio Campionario ed Eventi
> - **Spazio Campionario ($\Omega$):** l'insieme di tutti i possibili esiti elementari del fenomeno aleatorio.
> - **Evento ($E$):** formalmente, è un sottoinsieme di $\Omega$ ($E \subseteq \Omega$) di cui ha senso valutare e calcolare la probabilità.

Sui sottoinsiemi/eventi si applicano le consuete operazioni insiemistiche:
- **Unione ($A \cup B$):** si verifica l'evento $A$ oppure l'evento $B$.
- **Intersezione ($A \cap B$):** si verificano simultaneamente sia $A$ sia $B$.
- **Complementare ($A^c = \Omega \setminus A$):** l'evento $A$ non si verifica.
- **Eventi disgiunti (incompatibili):** $A \cap B = \emptyset$.

---

## 2. Definizione Formale di Spazio di Probabilità

Per evitare paradossi su insiemi infiniti o continui, non è sempre possibile considerare qualsiasi sottoinsieme di $\Omega$ come evento. Si definisce quindi una classe ristretta ma coerente di eventi:

> [!summary] Definizione: Famiglia Coerente di Eventi ($\sigma$-algebra)
> Una collezione $\mathcal{A}$ di sottoinsiemi di $\Omega$ è detta **famiglia coerente di eventi** (o $\sigma$-algebra) se:
> 1. $\emptyset \in \mathcal{A}$ e $\Omega \in \mathcal{A}$;
> 2. Se $E \in \mathcal{A}$, allora il suo complementare $E^c \in \mathcal{A}$;
> 3. Se $E_1, E_2, \dots$ è una successione numerabile di eventi in $\mathcal{A}$, allora anche la loro unione numerabile $\bigcup_{\textcolor{darkgreen}{i}=1}^\infty E_{\textcolor{darkgreen}{i}}$ e la loro intersezione numerabile $\bigcap_{\textcolor{darkgreen}{i}=1}^\infty E_{\textcolor{darkgreen}{i}}$ appartengono ad $\mathcal{A}$.

Se $\Omega$ è un [[Insiemi_e_Cardinalità|insieme discreto]] (finito o numerabile, es. $\Omega = \mathbb{N}$), si assume solitamente come $\mathcal{A}$ l'intero [[Basi_del_Calcolo_Combinatorio|insieme delle parti]]: $\mathcal{A} = \mathcal{P}(\Omega)$.

> [!summary] Definizione: Misura di Probabilità (Assiomi di Kolmogorov)
> Data una famiglia coerente di eventi $\mathcal{A}$, una **valutazione di probabilità** su $\mathcal{A}$ è una funzione:
> $$P: \mathcal{A} \to \mathbb{R}_{\ge 0}$$
> che soddisfa i seguenti assiomi:
> 1. **Normalizzazione:** $P(\Omega) = 1$.
> 2. **$\sigma$-additività (o additività numerabile):** per ogni successione di eventi a due a due disgiunti $A_1, A_2, \dots$ ($A_{\textcolor{darkgreen}{i}} \cap A_j = \emptyset$ per $\textcolor{darkgreen}{i} \ne j$), si ha:
>    $$P\left(\bigcup_{\textcolor{darkgreen}{i}=1}^\infty A_{\textcolor{darkgreen}{i}}\right) = \sum_{\textcolor{darkgreen}{i}=1}^\infty P(A_{\textcolor{darkgreen}{i}})$$

> [!summary] Definizione: Spazio di Probabilità
> Uno **spazio di probabilità** è la terna:
> $$(\Omega, \mathcal{A}, P)$$

### Prime Proprietà Derivate

> [!info] Proposizione: Proprietà Derivate della Probabilità
> Dagli assiomi di Kolmogorov discendono immediatamente le seguenti proprietà:
> - **Evento impossibile:** $P(\emptyset) = 0$.
> - **Probabilità del complementare:** per ogni evento $A \in \mathcal{A}$, si ha $P(A^c) = 1 - P(A)$.
> - **Monotonia:** se $A \subseteq B$, allora $P(A) \le P(B)$.
> - **Decomposizione su partizione:** se $A$ e $B$ sono due eventi qualsiasi, allora:
>   $$P(B) = P(B \cap A) + P(B \cap A^c)$$
>   e più in generale, se $\{A_1, A_2, \dots\}$ è una [[Partizioni_di_un_Insieme|partizione]] in eventi di $\Omega$, per ogni evento $B$ si ha:
>   $$P(B) = \sum_{\textcolor{darkgreen}{i}=1}^\infty P(B \cap A_{\textcolor{darkgreen}{i}})$$
>   *(Questa proprietà costituisce la base per la [[Probabilita_Condizionale_e_Bayes|Formula delle Probabilità Totali]]).*
> - **Unione di due eventi qualsiasi (analoga al [[Principio_di_Inclusione_Esclusione]]):**
>   $$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$

---

> [!note] 📌 Sezione dagli Appunti della Lezione (14 Ottobre - 2ª Ora)
> Questa sezione deriva direttamente dagli appunti trascritti e dagli screenshot catturati durante la seconda ora della lezione del 14 Ottobre 2026 (cfr. [[Lezione di 2026 ottobre 14 - 2° ora.md]]).

## 3. Lo Spazio di Probabilità Uniforme Discreto

Quando lo spazio campionario $\Omega$ è un insieme **finito** di cardinalità $|\Omega| = \textcolor{blue}{n}$ e, per ragioni di simmetria, tutti i suoi risultati elementari sono equiprobabili, si pone $\mathcal{A} = \mathcal{P}(\Omega)$ (ogni sottoinsieme è un evento).

> [!info] Proposizione: Probabilità Uniforme su uno Spazio Finito
> Se $(\Omega, \mathcal{A}, P)$ è uno spazio di probabilità uniforme finito, per ogni evento $E \subseteq \Omega$ di cardinalità $|E| = \textcolor{purple}{k}$ si ha:
> $$P(E) = \frac{|E|}{|\Omega|} = \frac{\textcolor{purple}{k}}{\textcolor{blue}{n}} = \frac{\text{casi favorevoli}}{\text{casi possibili}}$$

> [!quote] Dimostrazione
> Se $\Omega = \{\omega_1, \dots, \omega_{\textcolor{blue}{n}}\}$ con esiti equiprobabili $P(\{\omega_{\textcolor{darkgreen}{i}}\}) = p$, per l'additività su eventi disgiunti:
> $$1 = P(\Omega) = \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} P(\{\omega_{\textcolor{darkgreen}{i}}\}) = \textcolor{blue}{n} \cdot p \implies p = \frac{1}{\textcolor{blue}{n}} = \frac{1}{|\Omega|}$$
> Di conseguenza, se $E$ è formato da $\textcolor{purple}{k}$ esiti distinti, $P(E) = \textcolor{purple}{k} \cdot p = \frac{\textcolor{purple}{k}}{\textcolor{blue}{n}} = \frac{|E|}{|\Omega|}$.

---

### Esempi Pratici e Casi Studio

#### Esempio 1: Lancio di un Dado
Lancio di un dado equo a 6 facce:
$$\Omega = \{1, 2, 3, 4, 5, 6\}, \qquad |\Omega| = 6$$
Evento $E$: "esce un numero pari" $\implies E = \{2, 4, 6\}$, $|E| = 3$.
$$P(E) = \frac{|E|}{|\Omega|} = \frac{3}{6} = \frac{1}{2} = 50\%$$

---

#### Esempio 2: Il Gioco del Lotto (Estrazione di 5 numeri tra 1 e 90)
Il fenomeno consiste nell'estrazione di $5$ numeri distinti dall'urna $\{1, 2, \dots, 90\}$ (un classico schema senza rimpiazzo che ritroveremo anche nelle [[Variabili_Discrete_e_Schemi_Successo_Insuccesso|variabili ipergeometriche]]).

Poiché l'ordine di estrazione non influisce sulle vincite, lo spazio campionario ottimale è l'insieme delle [[Disposizioni_e_Combinazioni|combinazioni semplici]] di $5$ numeri:
$$\Omega = \left\{ S \subseteq \{1, \dots, 90\} : |S| = 5 \right\} \implies |\Omega| = \binom{90}{5} = \frac{90 \cdot 89 \cdot 88 \cdot 87 \cdot 86}{5!} = 43.949.268$$
Lo spazio è uniforme.

![Estrazione terno al lotto](../raw/assets/Pasted%20image%2020261014143005.png)

##### 1. Probabilità di fare Terno
Supponiamo di aver puntato su 3 numeri prefissati (es. $\{1, 2, 3\}$).
L'evento $E = \text{"fare terno"}$ comprende tutte le cinquine che contengono i 3 numeri scelti più altri 2 numeri presi dai restanti $90 - 3 = 87$ disponibili:
$$|E| = \binom{87}{2} = \frac{87 \cdot 86}{2} = 3.741$$
La probabilità cercata è:
$$P(E) = \frac{|E|}{|\Omega|} = \frac{\binom{87}{2}}{\binom{90}{5}} = \frac{3.741}{43.949.268} = \frac{1}{11.748}$$

![Calcolo combinatorio del terno](../raw/assets/Pasted%20image%2020261014143618.png)

##### 2. Probabilità che esca un singolo numero puntato (es. il 23)
Possiamo calcolare la probabilità in due modi equivalenti:

* **Metodo A (tramite combinazioni):**
  Fissato il numero 23, le cinquine vincenti si ottengono scegliendo i restanti 4 numeri tra gli 89 disponibili:
  $$|E| = \binom{89}{4} = \frac{89 \cdot 88 \cdot 87 \cdot 86}{4!}$$
  $$P(E) = \frac{\binom{89}{4}}{\binom{90}{5}} = \frac{\frac{89 \cdot 88 \cdot 87 \cdot 86}{24}}{\frac{90 \cdot 89 \cdot 88 \cdot 87 \cdot 86}{120}} = \frac{5}{90} = \frac{1}{18}$$

  ![Calcolo combinazioni numero 23](../raw/assets/Pasted%20image%2020261014144814.png)

* **Metodo B (decomposizione in eventi disgiunti):**
  Definiamo $E_{\textcolor{darkgreen}{i}} = \text{"il 23 esce all'estrazione } \textcolor{darkgreen}{i}\text{-esima"}$ per $\textcolor{darkgreen}{i} = 1, \dots, 5$.
  Gli eventi $E_{\textcolor{darkgreen}{i}}$ sono incompatibili (il 23 non può uscire due volte nella stessa estrazione) e per simmetria equiprobabili: $P(E_{\textcolor{darkgreen}{i}}) = \frac{1}{90}$.
  $$P(E) = P\left(\bigcup_{\textcolor{darkgreen}{i}=1}^5 E_{\textcolor{darkgreen}{i}}\right) = \sum_{\textcolor{darkgreen}{i}=1}^5 P(E_{\textcolor{darkgreen}{i}}) = 5 \cdot \frac{1}{90} = \frac{1}{18}$$

  ![Estrazione numero singolo](../raw/assets/Pasted%20image%2020261014143721.png)

---

#### Esempio 3: Impossibilità della Probabilità Uniforme su Spazi Infiniti Numerabili
Consideriamo il fenomeno "estrazione di un numero intero positivo a caso" ($\Omega = \mathbb{N} = \{1, 2, 3, \dots\}$).
Qual è la probabilità di estrarre un numero prefissato (es. il 23)?

![Uniforme infinito](../raw/assets/Pasted%20image%2020261014145129.png)

> [!info] Teorema: Impossibilità della Probabilità Uniforme su Insiemi Infiniti Numerabili
> Non esiste alcuno spazio di probabilità uniforme su un insieme infinito numerabile $\Omega$ in cui ogni singolo elemento sia un evento equiprobabile.

> [!quote] Dimostrazione
> Se lo spazio $\Omega = \mathbb{N}$ fosse uniforme, per ogni $\textcolor{blue}{n} \in \mathbb{N}$ la probabilità dell'esito elementare dovrebbe valere una costante $p$:
> $$P(\{\textcolor{blue}{n}\}) = p \quad \forall \textcolor{blue}{n} \in \mathbb{N}$$
> Scrivendo $\Omega = \bigcup_{\textcolor{blue}{n}=1}^\infty \{\textcolor{blue}{n}\}$ come unione disgiunta di singoletti, per la $\sigma$-additività si avrebbe:
> $$P(\Omega) = \sum_{\textcolor{blue}{n}=1}^\infty P(\{\textcolor{blue}{n}\}) = \sum_{\textcolor{blue}{n}=1}^\infty p$$
> - Se $p = 0 \implies P(\Omega) = 0 \ne 1$ (contraddice il primo assioma di normalizzazione).
> - Se $p > 0 \implies P(\Omega) = +\infty \ne 1$ (contraddice il primo assioma di normalizzazione).

![Contraddizione uniforme infinito](../raw/assets/Pasted%20image%2020261014145300.png)

---

#### Esempio 4: Probabilità dell'Unione e del Complementare (Lancio di 2 Dadi)
Lanciando due dadi equi, qual è la probabilità che **esca almeno un 6**?

![Unione di eventi](../raw/assets/Pasted%20image%2020261014145628.png)

Sia $A = \text{"il 1° dado dà 6"}$ e $B = \text{"il 2° dado dà 6"}$.
Abbiamo $|\Omega| = 6 \times 6 = 36$.
I due eventi non sono disgiunti poiché possono verificarsi entrambi contemporaneamente ($A \cap B = \{(6,6)\}$, con $P(A \cap B) = \frac{1}{36}$).

* **Calcolo Diretto con la formula dell'unione:**
  $$P(A \cup B) = P(A) + P(B) - P(A \cap B) = \frac{6}{36} + \frac{6}{36} - \frac{1}{36} = \frac{11}{36}$$

* **Calcolo tramite il Complementare:**
  L'evento complementare è $C = (A \cup B)^c = \text{"non esce nessun 6"}$.
  I casi in cui nessun dado dà 6 sono $5 \times 5 = 25$:
  $$P(C) = \frac{25}{36} \implies P(A \cup B) = 1 - P(C) = 1 - \frac{25}{36} = \frac{11}{36}$$

![Due dadi almeno un 6](../raw/assets/Pasted%20image%2020261014150156.png)

---

## 📝 Domande di Verifica

> [!question]- 24. Cos'è uno spazio di probabilità?
> **Risposta:**
> Uno spazio di probabilità è una terna $(\Omega, \mathcal{A}, P)$ costituita da:
> 1. $\Omega$: insieme campionario dei possibili risultati di un fenomeno aleatorio.
> 2. $\mathcal{A}$: famiglia coerente di eventi ($\sigma$-algebra), ovvero una collezione di sottoinsiemi di $\Omega$ contenente $\emptyset$ e $\Omega$, chiusa rispetto al complementare e rispetto a unioni e intersezioni numerabili.
> 3. $P$: funzione di misura di probabilità $P: \mathcal{A} \to \mathbb{R}_{\ge 0}$ che soddisfa gli assiomi di Kolmogorov:
>    - $P(\Omega) = 1$;
>    - $\sigma$-additività: per ogni successione $A_1, A_2, \dots$ di eventi disgiunti a due a due, $P\left(\bigcup_{\textcolor{darkgreen}{i}=1}^\infty A_{\textcolor{darkgreen}{i}}\right) = \sum_{\textcolor{darkgreen}{i}=1}^\infty P(A_{\textcolor{darkgreen}{i}})$.

> [!question]- Cos'è uno spazio di probabilità uniforme finito e come si ricava la formula $P(E) = \frac{|E|}{|\Omega|}$?
> **Risposta:**
> È uno spazio di probabilità $(\Omega, \mathcal{P}(\Omega), P)$ in cui $\Omega = \{\omega_1, \dots, \omega_{\textcolor{blue}{n}}\}$ è un insieme finito e tutti gli esiti elementari hanno la stessa probabilità $P(\{\omega_{\textcolor{darkgreen}{i}}\}) = p$.
> Poiché $1 = P(\Omega) = \sum_{\textcolor{darkgreen}{i}=1}^{\textcolor{blue}{n}} P(\{\omega_{\textcolor{darkgreen}{i}}\}) = \textcolor{blue}{n}p$, si ottiene $p = \frac{1}{\textcolor{blue}{n}} = \frac{1}{|\Omega|}$. Per additività, un evento $E$ composto da $\textcolor{purple}{k} = |E|$ esiti ha probabilità $P(E) = \frac{\textcolor{purple}{k}}{\textcolor{blue}{n}} = \frac{|E|}{|\Omega|}$.

> [!question]- È possibile definire una misura di probabilità uniforme su un insieme infinito numerabile come $\mathbb{N}$? Dimostralo.
> **Risposta:**
> No. Se per assurdo ogni singoletto $\{\textcolor{blue}{n}\} \subset \mathbb{N}$ avesse la stessa probabilità $P(\{\textcolor{blue}{n}\}) = p$, allora per la $\sigma$-additività su eventi disgiunti si avrebbe $P(\mathbb{N}) = \sum_{\textcolor{blue}{n}=1}^\infty p$, che vale $0$ se $p=0$ oppure $+\infty$ se $p>0$, violando in entrambi i casi l'assioma di normalizzazione $P(\Omega) = 1$.
