---
indice: "5.2"
titolo: Esercizi di Combinatoria di Base
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 2.1.** Quanti sono i numeri tra 0 e 700 che non sono divisibili né per 2 né per 5, né per 7?
> [!info]- Soluzione
> Siccome 0 non fa parte di questo insieme possiamo considerare i seguenti insiemi:
> $A$ = multipli di 2 tra 1 e 700, $B$ = multipli di 5 tra 1 e 700 e $C$ = multipli di 7 tra 1 e 700 e l'insieme di cui dobbiamo calcolare la cardinalità è il complementare dell'unione tra $A, B$ e $C$ nell'insieme dei numeri tra 1 e 700. Abbiamo quindi
> $|A| = 350$, $|B| = 140$, $|C| = 100$,
> $|A \cap B| = 70$, $|A \cap C| = 50$, $|B \cap C| = 20$, $|A \cap B \cap C| = 10$
> Per il principio di inclusione esclusione abbiamo quindi
> $|(A \cup B \cup C)^C| = 700 - 350 - 140 - 100 + 70 + 50 + 20 - 10 = 240$.

- [ ] **Es. 2.2.** Quante sono le disposizioni di lunghezza 5 in $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$ in cui compaiono almeno due cifre minori di 5?
> [!info]- Soluzione
> Contiamo quelle in cui ci sono zero o una cifra minore di 5. Quelle senza cifre minori di 5 sono le disposizioni di lunghezza 5 in $\{5, 6, 7, 8, 9\}$ e sono quindi
> $(5)_5 = 120$.
> Quelle con esattamente una cifra le contiamo con scelte successive che determinano in modo univoco la disposizione. Scelgo prima l'unica cifra minore di 5 da inserire: 4 scelte. Scelgo la posizione dove inserire questa cifra: 5 scelte. Scelgo la disposizione di lunghezza 4 in $\{5, 6, 7, 8, 9\}$ da inserire nei rimanenti quattro posti: $(5)_4$ scelte. Le disposizioni in cui compare esattamente una cifra minore di 5 sono quindi $4 \cdot 5 \cdot (5)_4 = 2400$. In tutto le disposizioni con almeno due cifre minori di 5 sono quindi
> $(9)_5 - 120 - 2400 = 15120 - 120 - 2400 = 12600$.

- [ ] **Es. 2.3.** Quante sono le disposizioni di lunghezza 6 in $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$ in cui compaiono 3 cifre pari e 3 cifre dispari?
> [!info]- Soluzione
> Procediamo anche in questo caso per scelte successive: scegliamo le tre cifre pari: $\binom{4}{3} = 4$ scelte; scegliamo le cifre dispari: $\binom{5}{3} = 10$ scelte; scelgo come permutare fra di loro i 6 numeri selezionati nei primi due punti; $6!$ scelte. In tutto ho
> $4 \cdot 10 \cdot 6! = 28800$.

- [ ] **Es. 2.4.** Quante sono le sequenze in $\{1, 2, 3, 4, 5, 6\}$ di lunghezza 4? Quelle in cui la somma delle cifre è pari? Quelle in cui la somma delle cifre è multiplo di 3?
> [!info]- Soluzione
> Le sequenze di lunghezza 4 sono $6^4 = 1296$. Possiamo stabilire una corrispondenza biunivoca tra le sequenze con somma pari e quelle con somma dispari. Basta infatti sostituire l'ultimo coefficiente seguendo questa regola: al posto di 1 metto 2 e viceversa, al posto di 3 metto 4 e viceversa, al posto di 6 metto 6 e viceversa. Ne segue che le sequenze lunghe 4 con somma pari sono esattamente la metà, cioè $1296/2 = 648$. In alternativa si può pensare ad un prodotto condizionato: 6 scelte per ciascuno dei primi 3 coefficienti. L'ultimo coefficiente può essere scelto in 3 modi sia se la somma dei precedenti è pari (e in questo caso le scelte possibili sono 2,4,6), sia se la somma dei precedenti è dispari (e in questo caso le scelte possibili sono 1,3,5). Analogamente si può procedere se si vuole che la somma dei coefficienti sia un multiplo di 3: l'ultima coordinata può sempre essere scelta in 2 modi, quali che siano le prime tre coordinate.

- [ ] **Es. 2.5.** Quanti sono i sottoinsiemi di $\{1, 2, 3, 4, 5, 6\}$ che contengono almeno uno tra 5 e 6?
> [!info]- Soluzione
> Un sottoinsieme che contiene almeno uno tra 5 e 6 lo possiamo ottenere in questo modo: scegliamo un qualsiasi sottoinsieme dei numeri da 1 a 4 ($2^4$ possibili scelte) e poi aggiungiamo solo il 5, oppure solo il 6 oppure entrambi: abbiamo quindi in tutto
> $2^4 \cdot 3 = 48$. Oppure utilizzando il principio di inclusione esclusione: sia $A$ l'insieme dei sottoinsiemi che contengono 5 e $B$ l'insieme dei sottoinsiemi che contengono 6. Abbiamo $|A| = |B| = 2^5$ e $|A \cap B| = 2^4$ da cui
> $|A \cup B| = 2^5 + 2^5 - 2^4 = 48$.
> Oppure, basta considerare il numero totale di sottoinsiemi di $\{1, 2, 3, 4, 5, 6\}$ meno il numero di sottoinsiemi di $\{1, 2, 3, 4\}$: abbiamo quindi $2^6 - 2^4 = 48$.

- [ ] **Es. 2.6.** Quanti sono i sottoinsiemi di $\{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$ che se contengono $i$ allora non contengono $11 - i$? (cioè non possono contenere ad esempio sia 1 che 10, non possono contenere sia 2 che 9, ecc.)
> [!info]- Soluzione
> Per ogni coppia $\{1, 10\}, \{2, 9\}, \{3, 8\}, \{4, 7\}, \{5, 6\}$ abbiamo 3 possibilità: scegliamo solo il primo, scegliamo solo il secondo, non scegliamo nessuno dei 2. I sottoinsiemi cercati sono quindi $3^5 = 243$.
> In alternativa possiamo procedere in questo modo: abbiamo cinque coppie di numeri e possiamo selezionare solo un numero per ogni coppia. Procediamo quindi in questo modo: per ogni $k = 0, \dots, 5$ selezioniamo un sottoinsieme di cardinalità $k$ delle 5 coppie: $\binom{5}{k}$ scelte. Per ogni coppia scelta selezioniamo solo uno dei due elementi corrispondenti: ho $2^k$ scelte. Complessivamente abbiamo quindi
> $\sum_{k=0}^5 \binom{5}{k} 2^k = 1 + 5 \cdot 2 + 10 \cdot 2^2 + 10 \cdot 2^3 + 5 \cdot 2^4 + 1 \cdot 2^5 = 1 + 10 + 40 + 80 + 80 + 32 = 243$.

- [ ] **Es. 2.7.** Stabilire la cardinalità del seguente insieme:
$$A = \{(a, b, c) : a, b, c \in \mathbb{Z}, 0 < a < 6, b + a = 4, -3 < c - a < 3\}$$
> [!info]- Soluzione
> Abbiamo un prodotto condizionato di tipo $(5, 1, 5)$ e quindi abbiamo 25 soluzioni. Infatti $a$ è un numero in $\{-2, -1, 0, 1, 2\}$: 5 scelte. Scelto $a$ abbiamo $b = 4 - a$ e quindi abbiamo una sola scelta. Infine, scelti $a$ e $b$ abbiamo $c \in \{a - 2, a - 1, a, a + 1, a + 2\}$.

- [ ] **Es. 2.8.** Stabilire la cardinalità del seguente insieme:
$$B = \{(a, b, c) : a, b, c \in \mathbb{Z}, 0 < a < 6, b + a = 4, -3 < 2c - a < 3\}$$
> [!info]- Soluzione
> In questo caso non abbiamo un prodotto condizionato perché il numero di scelte per $c$ dipende dalle scelte precedenti. Dividiamo quindi il problema in due casi, caso $a$ pari e caso $a$ dispari. Se $a$ è pari abbiamo $a \in \{2, 4\}$ quindi due scelte per $a$, una scelta per $b$ e $c \in \{\frac{a}{2} - 1, \frac{a}{2}, \frac{a}{2} + 1\}$ quindi tre scelte per $c$: abbiamo quindi 6 soluzioni. Se $a$ è dispari abbiamo $a \in \{1, 3, 5\}$ quindi tre scelte per $a$, una scelta per $b$ e $c \in \{\frac{a-1}{2}, \frac{a+1}{2}\}$, quindi due scelte per $c$: in tutto abbiamo quindi 6 soluzioni.
> Complessivamente ci sono 12 soluzioni.

- [ ] **Es. 2.9.** Determinare quante sono le sequenze strettamente crescenti di lunghezza 5 in $\{1, 2, 3, 4, 5, 6, 7, 8\}$. E quante sono quelle debolmente crescenti?
> [!info]- Soluzione
> Le sequenze strettamente crescenti di lunghezza 5 sono in corrispondenza biunivoca con i sottoinsiemi di cardinalità 5: sono quindi $\binom{8}{5} = 56$.
> Per determinare le sequenze debolmente crescenti possiamo procedere nel seguente modo: sia $(a_1, \dots, a_5)$ con $1 \leq a_1 \leq a_2 \leq \dots \leq a_5 \leq 8$. Allora la sequenza $(a_1 + 1, a_2 + 2, a_3 + 3, a_4 + 4, a_5 + 5)$ è una sequenza strettamente crescente di numeri in $\{2, 3, \dots, 13\}$. Questa è una corrispondenza biunivoca e quindi concludiamo che il numero di sequenze debolmente crescenti è $\binom{12}{5} = 792$.
> In alternativa si può procedere nel seguente modo. Per ogni $k = 0, \dots, 4$ scelgo un sottoinsieme di $\{1, 2, 3, 4\}$ dato dai posti $i$ in cui $a_i = a_{i+1}$. Ad esempio se scelgo il sottoinsieme $\{2, 4\}$ vorrò $a_2 = a_3$ e $a_4 = a_5$. Una volta effettuata questa scelta dovrò scegliere i $5 - k$ numeri distinti da inserire in ordine crescente. Abbiamo quindi
> $\sum_{k=0}^4 \binom{4}{k} \binom{8}{5 - k} = 792$.

- [ ] **Es. 2.10.** Determinare quanti sono gli anagrammi della parola CAPPALLACCA. Stabilire in quanti di questi anagrammi le lettere A non compaiono mai in posti vicini.
> [!info]- Soluzione
> Nel primo caso abbiamo gli anagrammi di tipo $(4, 3, 2, 2)$ che sono
> $\binom{11}{4, 3, 2, 2} = 69300$.
> Per la seconda parte dobbiamo prima scegliere i posti dove inserire le 4 A: questi li possiamo scegliere in $\binom{11-(4-1)}{4} = 70$ modi: come visto a lezione questo è il numero di sequenze binarie lunghe 11, con quattro 1 in cui non ci sono due 1 consecutivi. Le altre 7 lettere le possiamo anagrammare in $\binom{7}{3, 2, 2} = 210$ modi per cui in tutto abbiamo 14700 anagrammi.
