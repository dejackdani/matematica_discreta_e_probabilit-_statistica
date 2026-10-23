---
indice: "5.3"
tipo: concetto
tags:
  - probabilita
  - variabili_aleatorie
  - variabili_discrete
  - densita_discreta
  - bernoulli
  - binomiale
  - ipergeometrica
data_creazione: 2026-10-23
fonti_usate:
  - "[[MdP20261023.md]]"
  - "[[lezioniNew.pdf]]"
  - "[[MDP Domande orale.pdf]]"
---

# Variabili Aleatorie Discrete e Schemi Successo-Insuccesso

Spesso nello studio di un [[Spazi_di_Probabilita|fenomeno aleatorio]] non interessa tanto il singolo esito elementare $\omega \in \Omega$ nella sua interezza, quanto piuttosto una **quantità numerica** che dipende dal risultato stesso (ad esempio: la vincita complessiva dopo tre puntate alla roulette, il numero di volte in cui esce $6$ lanciando un dado, o il numero di palline bianche estratte da un'urna). Queste quantità prendono il nome di **variabili aleatorie**.

---

> [!warning] ⚠️ Sezione Ricostruita da Dispense (Lezione del 21 Ottobre - Assenza a Lezione)
> I paragrafi **§1, §2, §3 e §4** corrispondono al materiale spiegato mercoledì **21 Ottobre 2026** (lezione a cui non è stato possibile presenziare) e sono stati ricostruiti fedelmente dalla bibbia del corso ([[lezioniNew.pdf]], Capitolo 6, §§1–4, pp. 57–61), integrando al contempo il ripasso iniziale e le notazioni svolte a voce dal docente all'inizio della lezione del **23 Ottobre 2026** ([[MdP20261023.md]]).

## 1. Definizione Formale di Variabile Aleatoria e Funzione di Ripartizione

A differenza della tradizione dell'Analisi o della Geometria (in cui $x$ indica la variabile indipendente e $f$ la funzione), in Calcolo delle Probabilità si indica con la lettera maiuscola $\textcolor{blue}{X}$ la **funzione** che associa a ogni esito dello [[Spazi_di_Probabilita|spazio campionario]] $\Omega$ un numero reale.
Affinché si possano calcolare le probabilità delle affermazioni riguardanti $\textcolor{blue}{X}$, occorre imporre che i sottoinsiemi di $\Omega$ individuati da $\textcolor{blue}{X}$ appartengano alla [[Spazi_di_Probabilita#2. Definizione Formale di Spazio di Probabilità|famiglia coerente degli eventi]] $\mathcal{A}$.

> [!summary] Definizione: Variabile Aleatoria
> Sia $(\Omega, \mathcal{A}, P)$ uno [[Spazi_di_Probabilita|spazio di probabilità]]. Una funzione $\textcolor{blue}{X} : \Omega \to \mathbb{R}$ si dice **variabile aleatoria** se, per ogni $\textcolor{teal}{a} \in \mathbb{R}$, il sottoinsieme di $\Omega$:
> $$\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \le \textcolor{teal}{a}\} \in \mathcal{A}$$
> è un **evento**.

> [!info] Approfondimento dalle Dispense: Esempio di Funzione che NON è una Variabile Aleatoria
> Da [[lezioniNew.pdf]] (Esempio 6.3, p. 57): si consideri $\Omega = \mathbb{N}_{>0}$ con la famiglia di eventi $\mathcal{A} = \{\mathbb{N}_{>0}, \emptyset, 2\mathbb{N}, 2\mathbb{N}+1\}$ (numeri pari e numeri dispari).
> - La funzione identità $\textcolor{blue}{X}(n) = n$ **non è** una variabile aleatoria su $(\Omega, \mathcal{A}, P)$: scegliendo infatti $\textcolor{teal}{a} = 2$, l'insieme $\{n \in \mathbb{N}_{>0} : \textcolor{blue}{X}(n) \le 2\} = \{1, 2\}$ non appartiene ad $\mathcal{A}$.
> - La funzione $\textcolor{blue}{Y}(n) = (-1)^n$ **è invece** una variabile aleatoria: al variare di $\textcolor{teal}{a} \in \mathbb{R}$, l'insieme $\{n \in \mathbb{N}_{>0} : \textcolor{blue}{Y}(n) \le \textcolor{teal}{a}\}$ vale $\emptyset$ (se $\textcolor{teal}{a} < -1$), $2\mathbb{N}+1$ (se $-1 \le \textcolor{teal}{a} < 1$) oppure $\mathbb{N}_{>0}$ (se $\textcolor{teal}{a} \ge 1$), che sono tutti elementi di $\mathcal{A}$.

La scelta della disuguaglianza $\le$ nella definizione è puramente convenzionale, poiché le proprietà di chiusura della $\sigma$-algebra $\mathcal{A}$ garantiscono che qualsiasi altra condizione di confronto definisca comunque un evento:

> [!info] Proposizione 6.4: Eventi Generati da una Variabile Aleatoria
> Sia $\textcolor{blue}{X} : \Omega \to \mathbb{R}$ una variabile aleatoria sullo spazio di probabilità $(\Omega, \mathcal{A}, P)$. Allora, per ogni $\textcolor{teal}{a} \in \mathbb{R}$, sono tutti eventi in $\mathcal{A}$ i seguenti sottoinsiemi:
> - **a)** $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) > \textcolor{teal}{a}\}$
> - **b)** $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) < \textcolor{teal}{a}\}$
> - **c)** $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \ge \textcolor{teal}{a}\}$
> - **d)** $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) = \textcolor{teal}{a}\}$
> - **e)** $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \neq \textcolor{teal}{a}\}$

> [!quote] Dimostrazione
> Sfruttiamo il fatto che la famiglia degli eventi $\mathcal{A}$ è chiusa per passaggio al complementare e per unioni e intersezioni numerabili:
> - **a)** L'insieme $\{\textcolor{blue}{X} > \textcolor{teal}{a}\}$ è il complementare di $\{\textcolor{blue}{X} \le \textcolor{teal}{a}\}$, dunque è un evento.
> - **b)** L'insieme $\{\textcolor{blue}{X} < \textcolor{teal}{a}\}$ si può scrivere come unione numerabile di eventi della forma (4):
>   $$\{\omega \in \Omega : \textcolor{blue}{X}(\omega) < \textcolor{teal}{a}\} = \bigcup_{\textcolor{purple}{n}=1}^\infty \left\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \le \textcolor{teal}{a} - \frac{1}{\textcolor{purple}{n}}\right\}$$
> - **c)** L'insieme $\{\textcolor{blue}{X} \ge \textcolor{teal}{a}\}$ è il complementare dell'insieme in **b)**.
> - **d)** L'insieme $\{\textcolor{blue}{X} = \textcolor{teal}{a}\}$ è l'intersezione tra $\{\textcolor{blue}{X} \le \textcolor{teal}{a}\}$ e $\{\textcolor{blue}{X} \ge \textcolor{teal}{a}\}$.
> - **e)** L'insieme $\{\textcolor{blue}{X} \neq \textcolor{teal}{a}\}$ è il complementare dell'insieme in **d)**. $\square$

*(Notazione compatta)*: Per alleggerire la scrittura, si indica semplicemente con $\{\textcolor{blue}{X} \le \textcolor{teal}{t}\}$ l'evento $\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \le \textcolor{teal}{t}\}$ e con $P(\textcolor{blue}{X} \le \textcolor{teal}{t})$ la relativa probabilità (e analogamente per $<, >, \ge, =, \neq$).

> [!summary] Definizione: Funzione di Ripartizione
> Data una variabile aleatoria $\textcolor{blue}{X}$, la funzione $F_{\textcolor{blue}{X}} : \mathbb{R} \to [0, 1]$ definita da:
> $$F_{\textcolor{blue}{X}}(\textcolor{teal}{t}) = P(\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \le \textcolor{teal}{t}\}) = P(\textcolor{blue}{X} \le \textcolor{teal}{t})$$
> prende il nome di **funzione di ripartizione** di $\textcolor{blue}{X}$.

---

## 2. Variabili Aleatorie Discrete e Densità Discreta

> [!summary] Definizione: Variabile Aleatoria Discreta
> Una variabile aleatoria $\textcolor{blue}{X}$ si dice **discreta** se l'insieme dei valori che può assumere è [[Insiemi_e_Cardinalità|finito oppure numerabile]] (ossia discreto).

Nel caso discreto (in cui tipicamente $\mathcal{A} = \mathcal{P}(\Omega)$), la condizione formale di misurabilità $\{\textcolor{blue}{X} \le \textcolor{teal}{a}\} \in \mathcal{A}$ è quasi sempre soddisfatta automaticamente, e lo studio di $\textcolor{blue}{X}$ viene interamente ricondotto alla sua **densità discreta**.

> [!info] Approfondimento dalle Dispense: Esempio di Variabili Discrete vs Continue
> Da [[lezioniNew.pdf]] (Esempio 6.5, p. 58): consideriamo l'utilizzo di uno smartphone fino alla rottura:
> - $T = \text{"tempo trascorso fino alla rottura"}$ può assumere qualsiasi valore reale positivo, quindi **non è** una variabile discreta (è una variabile continua);
> - $\textcolor{blue}{X} = \text{"numero totale di telefonate effettuate"}$ assume valori interi non negativi ($\mathbb{N}$), quindi è una variabile **discreta** (numerabile);
> - $\textcolor{blue}{Y} = 1$ se si effettuano più di $5$ telefonate al giorno in media e $0$ altrimenti: assume solo due valori, quindi è una variabile **finita** (e dunque discreta).

> [!summary] Definizione: Densità Discreta (Concreta e Astratta)
> Data una variabile aleatoria discreta $\textcolor{blue}{X}$, si definisce **densità discreta (concreta)** di $\textcolor{blue}{X}$ la funzione $d_{\textcolor{blue}{X}} : \mathbb{R} \to \mathbb{R}$ (indicata nelle dispense anche con $p_{\textcolor{blue}{X}}$) che associa ad ogni $\textcolor{teal}{h} \in \mathbb{R}$ la probabilità che $\textcolor{blue}{X}$ assuma il valore $\textcolor{teal}{h}$:
> $$d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = P(\textcolor{blue}{X} = \textcolor{teal}{h})$$
> *(Nota: per i valori $\textcolor{teal}{h}$ che $\textcolor{blue}{X}$ non può assumere, si ha $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = 0$).*
>
> La funzione $d_{\textcolor{blue}{X}}$ soddisfa sempre le seguenti **tre proprietà caratterizzanti**:
> 1. **Supporto discreto:** $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) \neq 0$ per una quantità discreta (finita o al più numerabile) di valori $\textcolor{teal}{h} \in \mathbb{R}$;
> 2. **Non-negatività:** $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) \ge 0$ per ogni $\textcolor{teal}{h} \in \mathbb{R}$;
> 3. **Condizione di normalizzazione:** la somma (o serie numerica) di tutte le densità è pari a $1$:
>    $$\sum_{\textcolor{teal}{h} \in \mathbb{R}} d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = 1$$
>
> Viceversa, una qualsiasi funzione $p : \mathbb{R} \to \mathbb{R}$ che verifichi le proprietà **(1)**, **(2)** e **(3)** a prescindere da uno spazio di probabilità sottostante si dice **densità discreta astratta**.

---

## 3. Variabili Aleatorie Uniformi

Il caso più semplice in assoluto di variabile discreta è quello in cui tutti i valori possibili vengono assunti con la medesima probabilità.

> [!summary] Definizione: Variabile Aleatoria Uniforme Discreta
> Sia $A = \{a_1, a_2, \dots, a_{\textcolor{blue}{n}}\}$ un insieme finito di $\textcolor{blue}{n}$ valori reali distinti. Una variabile aleatoria $\textcolor{blue}{X}$ che assume ciascuno dei valori di $A$ con la stessa probabilità $\frac{1}{\textcolor{blue}{n}}$ si dice **variabile uniforme** su $A$, e si scrive:
> $$\textcolor{blue}{X} \sim U(a_1, \dots, a_{\textcolor{blue}{n}}) \qquad \text{oppure} \qquad \textcolor{blue}{X} \sim U(A)$$
> La sua densità discreta è data da:
> $$d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = \begin{cases} \dfrac{1}{\textcolor{blue}{n}} & \text{se } \textcolor{teal}{h} \in \{a_1, a_2, \dots, a_{\textcolor{blue}{n}}\} \\ 0 & \text{altrimenti} \end{cases}$$

**Esempio (Lancio del dado e trasformazioni):**
Nel lancio di un dado equilibrato con $\Omega = \{1, 2, 3, 4, 5, 6\}$, la variabile $\textcolor{blue}{X}(n) = n$ è uniforme: $\textcolor{blue}{X} \sim U(1, 2, 3, 4, 5, 6)$ con $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = \frac{1}{6}$ per $\textcolor{teal}{h} \in \{1, \dots, 6\}$.
> [!info] Approfondimento dalle Dispense: Trasformazioni Trigonometriche sul Dado (Esempio 6.7)
> Sempre sul lancio di un dado ([[lezioniNew.pdf]], p. 60):
> - La variabile $Y(n) = \cos(n\pi)$ assume il valore $-1$ per $n \in \{1, 3, 5\}$ e $+1$ per $n \in \{2, 4, 6\}$, ciascuno con probabilità $\frac{3}{6} = \frac{1}{2}$: pertanto anche $Y$ è uniforme, $Y \sim U(-1, 1)$.
> - La variabile $Z(n) = \cos\left(\frac{n\pi}{2}\right)$ assume invece valore $0$ per $n \in \{1, 3, 5\}$ (probabilità $\frac{3}{6} = \frac{1}{2}$), valore $-1$ per $n \in \{2, 6\}$ (probabilità $\frac{2}{6} = \frac{1}{3}$) e valore $+1$ per $n = 4$ (probabilità $\frac{1}{6}$): dunque $Z$ **non** è uniforme. *(Nota: sulla dispensa a p. 60 i valori $1/6$ e $1/3$ per $h=-1$ e $h=1$ sono scambiati per una svista di calcolo di $\cos(3\pi)= -1$).*

---

## 4. Variabili di Bernoulli e Funzione Indicatrice

Se le variabili uniformi sono semplici perché hanno densità costante, le **variabili di Bernoulli** sono altrettanto elementari perché possono assumere **soltanto due valori: $0$ e $1$**.

> [!summary] Definizione: Variabile Aleatoria di Bernoulli
> Una variabile aleatoria $\textcolor{blue}{X}$ che assume esclusivamente i valori $0$ e $1$ si dice **variabile di Bernoulli**.
> Indicando con $\textcolor{darkgreen}{p} = P(\textcolor{blue}{X} = 1)$ la probabilità che $\textcolor{blue}{X}$ assuma il valore $1$ (e quindi con $1 - \textcolor{darkgreen}{p} = P(\textcolor{blue}{X} = 0)$ la probabilità che assuma il valore $0$), si scrive:
> $$\textcolor{blue}{X} \sim B(1, \textcolor{darkgreen}{p})$$
> La sua densità discreta è definita da:
> $$d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = \begin{cases} \textcolor{darkgreen}{p} & \text{se } \textcolor{teal}{h} = 1 \\ 1 - \textcolor{darkgreen}{p} & \text{se } \textcolor{teal}{h} = 0 \\ 0 & \text{altrimenti} \end{cases}$$

### La Funzione Indicatrice (o Caratteristica) di un Evento
Le variabili di Bernoulli vengono impiegate per modellizzare l'accadere o il non accadere di un qualsiasi evento $\textcolor{teal}{A} \in \mathcal{A}$ (ad esempio $\textcolor{teal}{A} = \text{"superare un esame"}$).

> [!summary] Definizione: Funzione Indicatrice (o Caratteristica) di un Evento
> Dato un evento $\textcolor{teal}{A} \in \mathcal{A}$, si chiama **funzione indicatrice** (o **funzione caratteristica**) di $\textcolor{teal}{A}$ la variabile aleatoria $\chi_{\textcolor{teal}{A}} : \Omega \to \{0, 1\}$ definita da:
> $$\chi_{\textcolor{teal}{A}}(\omega) = \begin{cases} 1 & \text{se } \omega \in \textcolor{teal}{A} \quad (\text{cioè se } \textcolor{teal}{A} \text{ accade}) \\ 0 & \text{se } \omega \notin \textcolor{teal}{A} \quad (\text{cioè se } \textcolor{teal}{A} \text{ non accade}) \end{cases}$$

Poiché l'evento $\{\chi_{\textcolor{teal}{A}} = 1\}$ coincide per definizione con l'evento $\textcolor{teal}{A}$ stesso, la probabilità che $\chi_{\textcolor{teal}{A}}$ assuma valore $1$ è esattamente $\textcolor{darkgreen}{p} = P(\chi_{\textcolor{teal}{A}} = 1) = P(\textcolor{teal}{A})$. Pertanto, per ogni evento $\textcolor{teal}{A} \in \mathcal{A}$:
$$\chi_{\textcolor{teal}{A}} \sim B\big(1, P(\textcolor{teal}{A})\big)$$

> [!info] Approfondimento dalle Dispense: Verifica che $\chi_A$ è una Variabile Aleatoria
> Da [[lezioniNew.pdf]] (p. 60): verifichiamo formalmente che per ogni $\textcolor{teal}{a} \in \mathbb{R}$ il sottoinsieme $\{\omega \in \Omega : \chi_{\textcolor{teal}{A}}(\omega) \le \textcolor{teal}{a}\}$ è un evento:
> $$\{\chi_{\textcolor{teal}{A}} \le \textcolor{teal}{a}\} = \begin{cases} \emptyset & \text{se } \textcolor{teal}{a} < 0 \\ \textcolor{teal}{A}^c & \text{se } 0 \le \textcolor{teal}{a} < 1 \\ \Omega & \text{se } \textcolor{teal}{a} \ge 1 \end{cases}$$
> Poiché $\emptyset, \textcolor{teal}{A}^c, \Omega \in \mathcal{A}$, la definizione di variabile aleatoria è pienamente soddisfatta.

---

## 5. Schemi Successo-Insuccesso ed Esempi Guida (Lezione del 23 Ottobre)

Vogliamo ora generalizzare le variabili di Bernoulli considerando non una singola prova, ma una sequenza di prove ripetute.

> [!summary] Definizione: Schema Successo-Insuccesso
> Uno **schema successo-insuccesso** (S.I.) è una sequenza di $\textcolor{blue}{n}$ prove (o tentativi), ciascuna delle quali può avere esito positivo (**successo**, quando un certo evento prefissato si verifica) oppure negativo (**insuccesso**, quando l'evento non si verifica).
> In uno schema successo-insuccesso siamo interessati a studiare la variabile aleatoria discreta:
> $$\textcolor{blue}{X} = \text{numero di successi ottenuti negli } \textcolor{blue}{n} \text{ tentativi}$$

Il concetto di "successo" è del tutto generale. Prima di distinguere le due grandi famiglie teoriche (**Binomiale** e **Ipergeometrica**), analizziamo i **tre esempi guida** svolti a lezione ([[MdP20261023.md]]):

### Esempio Guida 1: Lancio ripetuto di un dado (Prove Indipendenti)
Lanciamo un dado equilibrato $\textcolor{blue}{n} = 5$ volte e definiamo $\text{successo} = \text{"esce } 6\text{"}$. Sia $\textcolor{blue}{X}$ il numero di volte in cui esce $6$ nei $5$ lanci.
- **Valori possibili:** $\textcolor{blue}{X}$ assume valori in $\{0, 1, 2, 3, 4, 5\}$.
- **Calcolo della densità $d_{\textcolor{blue}{X}}(\textcolor{purple}{k}) = P(\textcolor{blue}{X} = \textcolor{purple}{k})$:**
  Poiché i $5$ lanci sono **indipendenti** e ad ogni lancio la probabilità di ottenere $6$ è $\textcolor{darkgreen}{p} = \frac{1}{6}$ (mentre quella di non ottenere $6$ è $1 - \textcolor{darkgreen}{p} = \frac{5}{6}$):
  - **$P(\textcolor{blue}{X} = 0)$:** non esce mai $6$ in nessuno dei $5$ tentativi indipendenti:
    $$P(\textcolor{blue}{X} = 0) = \left(\frac{5}{6}\right)^5$$
  - **$P(\textcolor{blue}{X} = 1)$:** scegliamo in $\binom{5}{1} = 5$ modi quale dei $5$ lanci dà $6$; fissato tale lancio, vogliamo un $6$ (probabilità $\frac{1}{6}$) e quattro non-$6$ (probabilità $\left(\frac{5}{6}\right)^4$):
    $$P(\textcolor{blue}{X} = 1) = 5 \cdot \frac{1}{6} \cdot \left(\frac{5}{6}\right)^4$$
  - **$P(\textcolor{blue}{X} = 2)$:** scegliamo in $\binom{5}{2} = 10$ modi i $2$ lanci che danno $6$; su quei due lanci abbiamo $\left(\frac{1}{6}\right)^2$ e sugli altri tre $\left(\frac{5}{6}\right)^3$:
    $$P(\textcolor{blue}{X} = 2) = \binom{5}{2} \left(\frac{1}{6}\right)^2 \left(\frac{5}{6}\right)^3$$
  - **$P(\textcolor{blue}{X} = 3)$:** analogamente, scegliamo i $3$ tentativi favorevoli in $\binom{5}{3}$ modi:
    $$P(\textcolor{blue}{X} = 3) = \binom{5}{3} \left(\frac{1}{6}\right)^3 \left(\frac{5}{6}\right)^2$$
  e così via per $\textcolor{purple}{k} = 4, 5$.

---

### Esempio Guida 2: Estrazioni senza rimpiazzo da un'urna
Un'urna contiene $\textcolor{teal}{b} = 3$ palline bianche e $\textcolor{red}{r} = 4$ palline rosse ($7$ palline totali). Effettuiamo $\textcolor{blue}{n} = 3$ estrazioni **senza rimpiazzo** fissando $\text{successo} = \text{"pallina bianca"}$. Sia $\textcolor{blue}{X}$ il numero di palline bianche estratte.
- **Spazio uniforme:** tutte le combinazioni di $3$ palline scelte tra le $7$ disponibili:
  $$|\Omega| = \binom{7}{3} = 35$$
- **Valori possibili e densità di $\textcolor{blue}{X}$** ($\textcolor{blue}{X} \in \{0, 1, 2, 3\}$):
  - **$\textcolor{blue}{X} = 0$ (0 bianche, 3 rosse):** scegliamo $3$ rosse tra le $4$ disponibili in $\binom{4}{3} = 4$ modi:
    $$P(\textcolor{blue}{X} = 0) = \frac{\binom{4}{3}}{\binom{7}{3}} = \frac{4}{35}$$
  - **$\textcolor{blue}{X} = 1$ (1 bianca, 2 rosse):** scegliamo $1$ bianca tra le $3$ in $\binom{3}{1}$ modi e $2$ rosse tra le $4$ in $\binom{4}{2}$ modi:
    $$P(\textcolor{blue}{X} = 1) = \frac{\binom{3}{1}\binom{4}{2}}{\binom{7}{3}} = \frac{3 \cdot 6}{35} = \frac{18}{35}$$
  - **$\textcolor{blue}{X} = 2$ (2 bianche, 1 rossa):** scegliamo $2$ bianche tra le $3$ in $\binom{3}{2}$ modi e $1$ rossa tra le $4$ in $\binom{4}{1}$ modi:
    $$P(\textcolor{blue}{X} = 2) = \frac{\binom{3}{2}\binom{4}{1}}{\binom{7}{3}} = \frac{3 \cdot 4}{35} = \frac{12}{35}$$
  - **$\textcolor{blue}{X} = 3$ (3 bianche, 0 rosse):** c'è un unico modo ($\binom{3}{3}\binom{4}{0} = 1$) di pescare tutte e $3$ le bianche:
    $$P(\textcolor{blue}{X} = 3) = \frac{\binom{3}{3}\binom{4}{0}}{\binom{7}{3}} = \frac{1}{35}$$
  *(Verifica di normalizzazione: $\frac{4 + 18 + 12 + 1}{35} = \frac{35}{35} = 1$).*

---

### Esempio Guida 3: Cambio del concetto di successo ("Stesso colore della precedente")
Nella medesima urna dell'Esempio 2 ($3$ bianche e $4$ rosse, $3$ estrazioni senza rimpiazzo), definiamo ora:
$$\text{successo} = \text{"la pallina estratta ha lo stesso colore della precedente"}$$
Poiché la prima estrazione non ha una precedente con cui confrontarsi, su $3$ estrazioni abbiamo **$\textcolor{blue}{n} = 2$ tentativi** (la 2ª e la 3ª estrazione). La variabile $\textcolor{blue}{X}$ (numero di successi) assume quindi valori in $\{0, 1, 2\}$.

1. **Caso $\textcolor{blue}{X} = 2$:** Sia la 2ª sia la 3ª pallina hanno lo stesso colore della precedente, cioè le $3$ palline sono **tutte dello stesso colore** ($3$ bianche oppure $3$ rosse). Sfruttando i calcoli dell'Esempio 2:
   $$P(\textcolor{blue}{X} = 2) = P(\text{3 bianche}) + P(\text{3 rosse}) = \frac{1}{\binom{7}{3}} + \frac{\binom{4}{3}}{\binom{7}{3}} = \frac{1 + 4}{35} = \frac{5}{35} = \frac{1}{7}$$
2. **Caso $\textcolor{blue}{X} = 1$:** Qui l'ordine di estrazione conta! Passando allo spazio delle sequenze ordinate (disposizioni di lunghezza $3$) e usando la [[Probabilita_Condizionale_e_Bayes|probabilità condizionale]], le sequenze che danno esattamente $1$ successo sono quattro: $BBR, RRB, RBB, BRR$.
   - $P(BBR) = \frac{3}{7} \cdot \frac{2}{6} \cdot \frac{4}{5} = \frac{4}{35}$
   - $P(RRB) = \frac{4}{7} \cdot \frac{3}{6} \cdot \frac{3}{5} = \frac{6}{35}$
   Per simmetria delle disposizioni, $P(RBB) = P(BBR) = \frac{4}{35}$ e $P(BRR) = P(RRB) = \frac{6}{35}$. Sommando i quattro eventi disgiunti:
   $$P(\textcolor{blue}{X} = 1) = \frac{4 + 4 + 6 + 6}{35} = \frac{20}{35} = \frac{4}{7}$$
3. **Caso $\textcolor{blue}{X} = 0$:** Per complementarità si ricava immediatamente $P(\textcolor{blue}{X} = 0) = 1 - \frac{1}{7} - \frac{4}{7} = \frac{2}{7}$.
   *Verifica diretta:* avere $0$ successi significa alternare sempre i colori ($RBR$ oppure $BRB$):
   $$P(\textcolor{blue}{X} = 0) = P(RBR) + P(BRB) = \frac{4}{7}\cdot\frac{3}{6}\cdot\frac{3}{5} + \frac{3}{7}\cdot\frac{4}{6}\cdot\frac{2}{5} = \frac{6}{35} + \frac{4}{35} = \frac{10}{35} = \frac{2}{7}$$

---

## 6. Le Variabili Aleatorie Binomiali

Generalizziamo ora il primo esempio guida nella famiglia delle **variabili binomiali**, che modellizzano gli schemi successo-insuccesso **con ripetizione** (o **a prove indipendenti**, come i lanci ripetuti di un dado/moneta o le estrazioni **con rimpiazzo** da un'urna).

> [!summary] Definizione: Schema Successo-Insuccesso a Prove Indipendenti e Variabile Binomiale
> Uno schema successo-insuccesso di $\textcolor{blue}{n}$ tentativi si dice **a prove indipendenti** (o *con ripetizione*) se soddisfa due condizioni:
> 1. **Indipendenza delle prove:** la probabilità di ottenere successo in un tentativo non è influenzata dall'esito degli altri tentativi;
> 2. **Costanza della probabilità:** la probabilità di ottenere successo è la stessa ad ogni tentativo, pari a $\textcolor{darkgreen}{p} \in [0, 1]$ (e di conseguenza la probabilità di insuccesso è $1 - \textcolor{darkgreen}{p}$).
>
> La variabile aleatoria $\textcolor{blue}{X}$ che conta il **numero di successi in $\textcolor{blue}{n}$ prove indipendenti** di parametro $\textcolor{darkgreen}{p}$ si dice **variabile aleatoria binomiale**, si indica con:
> $$\textcolor{blue}{X} \sim B(\textcolor{blue}{n}, \textcolor{darkgreen}{p})$$
> e ha **densità binomiale** data da:
> $$d_{\textcolor{blue}{X}}(\textcolor{purple}{k}) = P(\textcolor{blue}{X} = \textcolor{purple}{k}) = \begin{cases} \displaystyle\binom{\textcolor{blue}{n}}{\textcolor{purple}{k}} \textcolor{darkgreen}{p}^{\textcolor{purple}{k}} (1 - \textcolor{darkgreen}{p})^{\textcolor{blue}{n} - \textcolor{purple}{k}} & \text{se } \textcolor{purple}{k} = 0, 1, \dots, \textcolor{blue}{n} \\ 0 & \text{altrimenti} \end{cases}$$

**Giustificazione della Formula della Densità Binomiale:**
Fissato $\textcolor{purple}{k} \in \{0, 1, \dots, \textcolor{blue}{n}\}$, l'evento $\{\textcolor{blue}{X} = \textcolor{purple}{k}\}$ si realizza scegliendo:
- in $\binom{\textcolor{blue}{n}}{\textcolor{purple}{k}}$ modi **quali** sono i $\textcolor{purple}{k}$ tentativi (su $\textcolor{blue}{n}$ totali) che danno successo;
- per ciascuna sequenza fissata di $\textcolor{purple}{k}$ successi e $\textcolor{blue}{n} - \textcolor{purple}{k}$ insuccessi, grazie all'indipendenza delle prove, la probabilità è il prodotto di $\textcolor{purple}{k}$ fattori uguali a $\textcolor{darkgreen}{p}$ e di $\textcolor{blue}{n} - \textcolor{purple}{k}$ fattori uguali a $1 - \textcolor{darkgreen}{p}$, ossia $\textcolor{darkgreen}{p}^{\textcolor{purple}{k}} (1 - \textcolor{darkgreen}{p})^{\textcolor{blue}{n} - \textcolor{purple}{k}}$.

**Osservazioni Fondamentali:**
1. **Coerenza con Bernoulli per $\textcolor{blue}{n} = 1$:** Se effettuiamo un solo tentativo ($\textcolor{blue}{n} = 1$), $\textcolor{blue}{X}$ assume solo i valori $0$ e $1$ con $P(\textcolor{blue}{X} = 1) = \textcolor{darkgreen}{p}$, e la distribuzione $B(1, \textcolor{darkgreen}{p})$ coincide esattamente con la variabile di Bernoulli.
2. **Verifica algebrica della normalizzazione tramite il Binomio di Newton:**
   La somma su tutti i $\textcolor{purple}{k} = 0, \dots, \textcolor{blue}{n}$ vale $1$ anche per lo sviluppo della potenza $\textcolor{blue}{n}$-esima del binomio:
   $$\sum_{\textcolor{purple}{k}=0}^{\textcolor{blue}{n}} \binom{\textcolor{blue}{n}}{\textcolor{purple}{k}} \textcolor{darkgreen}{p}^{\textcolor{purple}{k}} (1 - \textcolor{darkgreen}{p})^{\textcolor{blue}{n} - \textcolor{purple}{k}} = \big((1 - \textcolor{darkgreen}{p}) + \textcolor{darkgreen}{p}\big)^{\textcolor{blue}{n}} = 1^{\textcolor{blue}{n}} = 1$$

> [!info] Approfondimento dalle Dispense: Ulteriori Esempi su Variabili Binomiali
> Da [[lezioniNew.pdf]] (pp. 61–62):
> - **Roulette al Casinò (Esempio 6.9):** Si va al casinò con $15$ Euro e si effettuano $3$ puntate da $5$ Euro sul rosso (probabilità di successo $\textcolor{darkgreen}{p} = \frac{18}{37}$ ad ogni puntata). La variabile $\textcolor{blue}{X} = \text{"soldi in tasca alla fine delle 3 puntate"}$ assume i valori $30, 20, 10, 0$ a seconda che escano $3, 2, 1, 0$ rossi (che seguono una $B(3, \frac{18}{37})$):
>   $$P(\textcolor{blue}{X}=30) = \left(\frac{18}{37}\right)^3 \approx 0.115, \quad P(\textcolor{blue}{X}=20) = 3\left(\frac{18}{37}\right)^2\frac{19}{37} \approx 0.365, \quad P(\textcolor{blue}{X}=10) = 3\frac{18}{37}\left(\frac{19}{37}\right)^2 \approx 0.385, \quad P(\textcolor{blue}{X}=0) = \left(\frac{19}{37}\right)^3 \approx 0.135$$
> - **Tiri liberi nel Basket (Esempio 6.10):** Un giocatore realizza mediamente l'$85\%$ dei tiri liberi ($\textcolor{darkgreen}{p} = 0.85$). Supponendo i tiri indipendenti, il numero di canestri su $\textcolor{blue}{n} = 100$ tiri è $\textcolor{blue}{X} \sim B(100, 0.85)$, e la probabilità di realizzarne esattamente $85$ è:
>   $$P(\textcolor{blue}{X} = 85) = \binom{100}{85} (0.85)^{85} (0.15)^{15} \approx 0.111$$
> - **Confezioni di Bulloni (Esercizio 6.11):** Una fabbrica produce bulloni difettosi con probabilità $\textcolor{darkgreen}{p} = 0.20$, venduti in confezioni da $\textcolor{blue}{n} = 3$. Il numero di bulloni difettosi in una scatola è $\textcolor{blue}{X} \sim B(3, 0.2)$, quindi la probabilità che ce ne sia al più uno difettoso è:
>   $$P(\textcolor{blue}{X} \le 1) = P(\textcolor{blue}{X}=0) + P(\textcolor{blue}{X}=1) = (0.8)^3 + 3(0.2)(0.8)^2 = 0.512 + 0.384 = 0.896$$

---

## 7. Le Variabili Aleatorie Ipergeometriche

Generalizziamo ora il secondo esempio guida nella famiglia delle **variabili ipergeometriche**, che modellizzano gli schemi successo-insuccesso **senza rimpiazzo** (o *senza ripetizione*). In questo schema la probabilità a priori di successo alla singola estrazione è ancora costante (pari a $\frac{\textcolor{teal}{b}}{\textcolor{teal}{b}+\textcolor{red}{r}}$, come dimostrato in [[Probabilita_Condizionale_e_Bayes#Applicazione Classica: Estrazioni Senza Rimpiazzo da un'Urna|Estrazioni Senza Rimpiazzo]]), ma **le prove non sono indipendenti** perché ogni estrazione modifica la composizione dell'urna per le successive.

> [!summary] Definizione: Variabile Aleatoria Ipergeometrica
> Si consideri un'urna contenente $\textcolor{teal}{b}$ palline bianche (successi) e $\textcolor{red}{r}$ palline rosse (insuccessi), per un totale di $\textcolor{teal}{b} + \textcolor{red}{r}$ palline. Si effettuano $\textcolor{blue}{n}$ estrazioni **senza rimpiazzo** (con $\textcolor{blue}{n} \le \textcolor{teal}{b} + \textcolor{red}{r}$).
> La variabile aleatoria $\textcolor{blue}{X}$ data dal **numero di palline bianche estratte** nelle $\textcolor{blue}{n}$ estrazioni si dice **variabile aleatoria ipergeometrica** di parametri $\textcolor{blue}{n}, \textcolor{teal}{b}, \textcolor{red}{r}$ e si indica con:
> $$\textcolor{blue}{X} \sim H(\textcolor{blue}{n}; \textcolor{teal}{b}, \textcolor{red}{r}) \qquad \text{oppure} \qquad \textcolor{blue}{X} \sim H(\textcolor{blue}{n}, \textcolor{teal}{b}, \textcolor{red}{r})$$
> La sua **densità ipergeometrica** è data da:
> $$d_{\textcolor{blue}{X}}(\textcolor{purple}{k}) = P(\textcolor{blue}{X} = \textcolor{purple}{k}) = \begin{cases} \dfrac{\displaystyle\binom{\textcolor{teal}{b}}{\textcolor{purple}{k}}\binom{\textcolor{red}{r}}{\textcolor{blue}{n} - \textcolor{purple}{k}}}{\displaystyle\binom{\textcolor{teal}{b} + \textcolor{red}{r}}{\textcolor{blue}{n}}} & \text{se } \max(0, \textcolor{blue}{n} - \textcolor{red}{r}) \le \textcolor{purple}{k} \le \min(\textcolor{blue}{n}, \textcolor{teal}{b}) \\ 0 & \text{altrimenti} \end{cases}$$

**Analisi del Dominio e Giustificazione Combinatoria:**
1. **Perché $\max(0, \textcolor{blue}{n} - \textcolor{red}{r}) \le \textcolor{purple}{k} \le \min(\textcolor{blue}{n}, \textcolor{teal}{b})$?**
   - **Limite superiore $\min(\textcolor{blue}{n}, \textcolor{teal}{b})$:** il numero $\textcolor{purple}{k}$ di palline bianche estratte non può superare né il numero di estrazioni effettuate ($\textcolor{blue}{n}$) né il numero totale di palline bianche presenti nell'urna ($\textcolor{teal}{b}$).
   - **Limite inferiore $\max(0, \textcolor{blue}{n} - \textcolor{red}{r})$:** se il numero di estrazioni supera il numero di palline rosse ($\textcolor{blue}{n} > \textcolor{red}{r}$), anche nel caso più sfortunato in cui si peschino tutte le $\textcolor{red}{r}$ rosse disponibili, si è obbligati a pescare almeno $\textcolor{blue}{n} - \textcolor{red}{r}$ palline bianche.
   - *(Convenzione estesa $0 \le \textcolor{purple}{k} \le \textcolor{blue}{n}$)*: Ricordando che per definizione il [[Disposizioni_e_Combinazioni|coefficiente binomiale]] $\binom{m}{j}$ vale $0$ quando $j > m$ oppure $j < 0$, si può scrivere semplicemente $\textcolor{purple}{k} = 0, 1, \dots, \textcolor{blue}{n}$ senza commettere errori, poiché fuori dall'intervallo $[\max(0, \textcolor{blue}{n} - \textcolor{red}{r}), \min(\textcolor{blue}{n}, \textcolor{teal}{b})]$ il numeratore si annulla automaticamente.
2. **Conteggio sul modello uniforme:**
   Nello spazio uniforme $\Omega$ di tutti i sottoinsiemi di $\textcolor{blue}{n}$ palline scelte tra le $\textcolor{teal}{b} + \textcolor{red}{r}$ disponibili ($|\Omega| = \binom{\textcolor{teal}{b}+\textcolor{red}{r}}{\textcolor{blue}{n}}$), i sottoinsiemi favorevoli all'evento $\{\textcolor{blue}{X} = \textcolor{purple}{k}\}$ si ottengono scegliendo $\textcolor{purple}{k}$ bianche tra le $\textcolor{teal}{b}$ in $\binom{\textcolor{teal}{b}}{\textcolor{purple}{k}}$ modi e le restanti $\textcolor{blue}{n} - \textcolor{purple}{k}$ rosse tra le $\textcolor{red}{r}$ in $\binom{\textcolor{red}{r}}{\textcolor{blue}{n} - \textcolor{purple}{k}}$ modi.

> [!info] Approfondimento dalle Dispense: Confronto Parallelo Binomiale vs Ipergeometrica (Esercizio 6.12)
> In [[lezioniNew.pdf]] (p. 63), in parallelo all'Esercizio 6.11 sui bulloni ($20\%$ difettosi, $B(3, 0.2)$), viene proposto un problema con la stessa proporzione iniziale ($2$ bianche su $10$) ma **senza rimpiazzo**:
> *Un'urna contiene $\textcolor{red}{r} = 8$ palline rosse e $\textcolor{teal}{b} = 2$ bianche. Ne estraiamo $\textcolor{blue}{n} = 3$ senza rimpiazzo. Qual è la probabilità di estrarne al più una bianca?*
> Qui $\textcolor{blue}{X} \sim H(3; 2, 8)$, perciò:
> $$P(\textcolor{blue}{X} \le 1) = P(\textcolor{blue}{X} = 0) + P(\textcolor{blue}{X} = 1) = \frac{\binom{2}{0}\binom{8}{3}}{\binom{10}{3}} + \frac{\binom{2}{1}\binom{8}{2}}{\binom{10}{3}} = \frac{56 + 56}{120} = \frac{112}{120} = \frac{14}{15} \approx 0.933$$
> *(che risulta più alta del $0.896$ ottenuto nel caso con rimpiazzo/indipendente).*

---

## 📝 Domande di Verifica

> [!question]- 26. Cos'è una variabile aleatoria? E cosa sono la funzione di ripartizione e la densità discreta? (x5)
> **Risposta:**
> Intuitivamente, una **variabile aleatoria** è una quantità numerica che dipende dal risultato di un fenomeno aleatorio (ad esempio, nel lancio di due dadi in cui $\Omega$ è l'insieme delle coppie da $1$ a $6$, $\textcolor{blue}{X}$ può essere la somma dei due valori usciti).
> **Definizione formale:** Dato uno [[Spazi_di_Probabilita|spazio di probabilità]] $(\Omega, \mathcal{A}, P)$, una funzione $\textcolor{blue}{X} : \Omega \to \mathbb{R}$ si dice variabile aleatoria se, per ogni $\textcolor{teal}{t} \in \mathbb{R}$, il sottoinsieme:
> $$\{\omega \in \Omega : \textcolor{blue}{X}(\omega) \le \textcolor{teal}{t}\} \in \mathcal{A}$$
> è un **evento**.
> - La **funzione di ripartizione** di $\textcolor{blue}{X}$ è la funzione $F_{\textcolor{blue}{X}} : \mathbb{R} \to [0, 1]$ definita da $F_{\textcolor{blue}{X}}(\textcolor{teal}{t}) = P(\textcolor{blue}{X} \le \textcolor{teal}{t})$.
> - Una variabile aleatoria $\textcolor{blue}{X}$ si dice **discreta** se assume una quantità finita o numerabile di valori. In tal caso, la sua **densità discreta** è la funzione $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = P(\textcolor{blue}{X} = \textcolor{teal}{h})$, caratterizzata da tre proprietà:
>   1. $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) \neq 0$ per una quantità al più numerabile di valori $\textcolor{teal}{h}$;
>   2. $d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) \ge 0$ per ogni $\textcolor{teal}{h} \in \mathbb{R}$;
>   3. $\sum_{\textcolor{teal}{h} \in \mathbb{R}} d_{\textcolor{blue}{X}}(\textcolor{teal}{h}) = 1$.

> [!question]- Cos'è una variabile aleatoria di Bernoulli e cos'è la funzione indicatrice di un evento?
> **Risposta:**
> Una variabile aleatoria $\textcolor{blue}{X}$ si dice **di Bernoulli** di parametro $\textcolor{darkgreen}{p}$, e si scrive $\textcolor{blue}{X} \sim B(1, \textcolor{darkgreen}{p})$, se assume esclusivamente i valori $0$ e $1$ con probabilità $P(\textcolor{blue}{X} = 1) = \textcolor{darkgreen}{p}$ e $P(\textcolor{blue}{X} = 0) = 1 - \textcolor{darkgreen}{p}$ (e densità $0$ altrove).
> Dato un evento $\textcolor{teal}{A} \in \mathcal{A}$, la sua **funzione indicatrice (o caratteristica)** $\chi_{\textcolor{teal}{A}}$ è la variabile aleatoria che vale $1$ se $\textcolor{teal}{A}$ si verifica ($\omega \in \textcolor{teal}{A}$) e $0$ se $\textcolor{teal}{A}$ non si verifica ($\omega \notin \textcolor{teal}{A}$). Poiché $P(\chi_{\textcolor{teal}{A}} = 1) = P(\textcolor{teal}{A})$, si ha $\chi_{\textcolor{teal}{A}} \sim B(1, P(\textcolor{teal}{A}))$.

> [!question]- 28. Cosa intendiamo per schema successo-insuccesso?
> **Risposta:**
> Uno **schema successo-insuccesso** è una sequenza di $\textcolor{blue}{n}$ prove (o tentativi) relative a un fenomeno aleatorio, ciascuna delle quali può dare esito positivo (*successo*, quando un certo evento accade) oppure negativo (*insuccesso*). In tale schema si studia tipicamente la variabile aleatoria $\textcolor{blue}{X}$ che conta il numero complessivo di successi ottenuti nelle $\textcolor{blue}{n}$ prove (ad esempio: nella ripetizione di prove indipendenti si ottiene una variabile binomiale, mentre nelle estrazioni senza rimpiazzo da un'urna con palline di due colori si ottiene una variabile ipergeometrica).

> [!question]- 31. Cos'è una variabile aleatoria binomiale e qual è la sua densità? (x3)
> **Risposta:**
> In uno **schema successo-insuccesso a prove indipendenti** (in cui i $\textcolor{blue}{n}$ tentativi sono indipendenti tra loro e ciascuno ha la medesima probabilità $\textcolor{darkgreen}{p}$ di dare successo), la variabile aleatoria $\textcolor{blue}{X}$ che conta il numero di successi su $\textcolor{blue}{n}$ tentativi si dice **variabile binomiale** e si indica con $\textcolor{blue}{X} \sim B(\textcolor{blue}{n}, \textcolor{darkgreen}{p})$.
> La sua densità discreta è:
> $$d_{\textcolor{blue}{X}}(\textcolor{purple}{k}) = P(\textcolor{blue}{X} = \textcolor{purple}{k}) = \begin{cases} \displaystyle\binom{\textcolor{blue}{n}}{\textcolor{purple}{k}} \textcolor{darkgreen}{p}^{\textcolor{purple}{k}} (1 - \textcolor{darkgreen}{p})^{\textcolor{blue}{n} - \textcolor{purple}{k}} & \text{se } \textcolor{purple}{k} = 0, 1, \dots, \textcolor{blue}{n} \\ 0 & \text{altrimenti} \end{cases}$$
> dove $\binom{\textcolor{blue}{n}}{\textcolor{purple}{k}}$ conta i modi di scegliere i $\textcolor{purple}{k}$ tentativi che danno successo, $\textcolor{darkgreen}{p}^{\textcolor{purple}{k}}$ è la probabilità di avere successo nei $\textcolor{purple}{k}$ tentativi scelti e $(1-\textcolor{darkgreen}{p})^{\textcolor{blue}{n}-\textcolor{purple}{k}}$ è la probabilità di avere insuccesso nei restanti $\textcolor{blue}{n}-\textcolor{purple}{k}$ tentativi. *(Per $\textcolor{blue}{n}=1$ si ritrova la variabile di Bernoulli $B(1, \textcolor{darkgreen}{p})$).*

> [!question]- 32. Cos'è una variabile aleatoria ipergeometrica e qual è la sua densità? (x4)
> **Risposta:**
> La variabile **ipergeometrica** modellizza uno **schema successo-insuccesso senza ripetizione (senza rimpiazzo)**: da un'urna contenente $\textcolor{teal}{b}$ palline bianche (successi) e $\textcolor{red}{r}$ palline rosse (insuccessi) si estraggono $\textcolor{blue}{n}$ palline senza rimpiazzo. La variabile $\textcolor{blue}{X} = \text{"numero di palline bianche estratte"}$ si indica con $\textcolor{blue}{X} \sim H(\textcolor{blue}{n}; \textcolor{teal}{b}, \textcolor{red}{r})$.
> Nello spazio uniforme di tutti i $\binom{\textcolor{teal}{b}+\textcolor{red}{r}}{\textcolor{blue}{n}}$ sottoinsiemi di $\textcolor{blue}{n}$ palline, i casi favorevoli a $\{\textcolor{blue}{X} = \textcolor{purple}{k}\}$ si ottengono scegliendo $\textcolor{purple}{k}$ bianche tra le $\textcolor{teal}{b}$ in $\binom{\textcolor{teal}{b}}{\textcolor{purple}{k}}$ modi e $\textcolor{blue}{n} - \textcolor{purple}{k}$ rosse tra le $\textcolor{red}{r}$ in $\binom{\textcolor{red}{r}}{\textcolor{blue}{n} - \textcolor{purple}{k}}$ modi. La densità è quindi:
> $$d_{\textcolor{blue}{X}}(\textcolor{purple}{k}) = P(\textcolor{blue}{X} = \textcolor{purple}{k}) = \begin{cases} \dfrac{\displaystyle\binom{\textcolor{teal}{b}}{\textcolor{purple}{k}}\binom{\textcolor{red}{r}}{\textcolor{blue}{n} - \textcolor{purple}{k}}}{\displaystyle\binom{\textcolor{teal}{b} + \textcolor{red}{r}}{\textcolor{blue}{n}}} & \text{se } \max(0, \textcolor{blue}{n} - \textcolor{red}{r}) \le \textcolor{purple}{k} \le \min(\textcolor{blue}{n}, \textcolor{teal}{b}) \\ 0 & \text{altrimenti} \end{cases}$$
