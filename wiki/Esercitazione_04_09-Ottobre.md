---
indice: "5.4"
titolo: Esercizi sulle Partizioni
stato: "🔴 Da Iniziare"
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 4.1.** Scrivere una partizione di $\{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$ con un blocco di 3 elementi, una costituita da 3 blocchi, una in cui 3 forma un blocco da solo, una in cui non ci sono blocchi con 3 elementi e una in cui 10 appartiene ad un blocco di 3 elementi.
> [!info]- Soluzione
> $\{\{1, 2, 3\}, \{4, 5, 6, 7, 8, 9, 10\}\}$, $\{\{1, 2\}, \{3\}, \{4, 5, 6, 7, 8, 9, 10\}\}$, $\{\{1, 2, 4, 5, 6, 7, 8, 9, 10\}, \{3\}\}$, $\{\{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}\}$, $\{1, 2, 3, 4, 5, 6, 7\}, \{8, 9, 10\}$.

- [ ] **Es. 4.2.** Quante sono le partizioni dell'insieme $\{1, 2, 3, 4\}$?
> [!info]- Soluzione
> Abbiamo $B_0 = B_1 = 1, B_2 = 2, B_3 = 5$ già calcolati in aula. Per calcolare $B_4$ usiamo la formula ricorsiva
> $B_4 = B_3 + 3B_2 + 3B_1 + B_0 = 5 + 6 + 3 + 1 = 15$.

- [ ] **Es. 4.3.** Quante sono le partizioni dell'insieme $\{1, 2, 3, 4, 5\}$?
> [!info]- Soluzione
> Proseguendo dall'esercizio precedente abbiamo
> $B_5 = B_4 + 4B_3 + 6B_2 + 4B_1 + B_0 = 15 + 20 + 12 + 4 + 1 = 52$.

- [ ] **Es. 4.4.** Calcolare i numeri di Stirling $S_{10,4}$ e $S_{9,3}$.
> [!info]- Soluzione
> Usando il triangolo di Stirling costruito con la formula ricorsiva $S_{n,k} = S_{n-1,k-1} + k S_{n-1,k}$ si ottiene $S_{10,4} = 34105$ e $S_{9,3} = 3025$.

- [ ] **Es. 4.5.** Quante sono le partizioni di $\{1, 2, \dots, 10\}$ in quattro blocchi in cui i blocchi non sono costituiti unicamente da un numero pari?
> [!info]- Soluzione
> Prendiamo come insieme universo $U$ tutte le partizioni di $\{1, 2, \dots, 10\}$ in 4 blocchi per cui $|U| = S_{10,4} = 34105$. Chiamiamo $A_2$ le partizioni in quattro blocchi che hanno un blocco formato dal solo numero 2 e similmente definiamo $A_4, A_6, A_8, A_{10}$.
> L'insieme considerato è il complementare di $A_2 \cup A_4 \cup A_6 \cup A_8 \cup A_{10}$. Abbiamo $|A_2| = S_{9,3} = 3025$ e similmente gli altri (un blocco è formato dal solo 2 e gli altri numeri devono essere partizionati in 3 blocchi).
> Abbiamo $|A_2 \cap A_4| = S_{8,2} = 127$.
> Abbiamo $|A_2 \cap A_4 \cap A_6| = 1$. Usando il principio di inclusione esclusione abbiamo quindi
> $|(A_2 \cup A_4 \cup \dots \cup A_{10})^C| = 34105 - 5 \cdot 3025 + 10 \cdot 127 - 10 \cdot 1 = 20240$.

- [ ] **Es. 4.6.** Mostrare che, per ogni $n \ge 2$, il numero di partizioni di $\{1, 2, \dots, n\}$ in $n - 1$ blocchi è $\binom{n}{2}$.
> [!info]- Soluzione
> L'unico modo per partizionare $n$ elementi in $n-1$ blocchi è quello di fare un blocco da 2 e tutti gli altri da 1. Questo corrisponde quindi a scegliere i due elementi nel blocco da 2 tra gli $n$ disponibili e quindi abbiamo proprio $\binom{n}{2}$.

- [ ] **Es. 4.7.** Mostrare che per ogni $n \ge 2$ il numero di partizioni di $\{1, 2, \dots, n\}$ in 2 blocchi è $2^{n-1} - 1$.
> [!info]- Soluzione
> Per formare due blocchi possiamo procedere come segue: consideriamo il blocco che contiene $n$: oltre ad $n$ può contenere un qualunque sottoinsieme di $\{1, 2, \dots, n-1\}$ tranne tutto l'insieme perché in questo caso l'altro blocco rimarrebbe vuoto e questo non è accettabile. Abbiamo quindi $2^{n-1} - 1$ scelte.

- [ ] **Es. 4.8.** Quante sono le partizioni di $\{1, 2, \dots, 10\}$ in cui ogni blocco contiene almeno un numero pari e un numero dispari?
> [!info]- Soluzione
> Se ho una partizione di questo tipo in $k$ blocchi eliminando i numeri pari ottengo una partizione dei dispari in $k$ blocchi e viceversa. Possiamo quindi ottenere una partizione di questo tipo considerando una partizione dei numeri pari e una dei numeri dispari nello stesso numero di blocchi, per poi combinarle in tutti i modi possibili. Abbiamo quindi
> $S_{5,1}^2 \cdot 1! + S_{5,2}^2 \cdot 2! + S_{5,3}^2 \cdot 3! + S_{5,4}^2 \cdot 4! + S_{5,5}^2 \cdot 5! = 1 + 15^2 \cdot 2 + 25^2 \cdot 6 + 10^2 \cdot 24 + 1^2 \cdot 120 = 6721$.

- [ ] **Es. 4.9.** Quante sono le partizioni di $\{1, 2, \dots, 10\}$ in cui ogni blocco ha solo numeri pari o solo numeri dispari?
> [!info]- Soluzione
> Ogni partizione di questo tipo si ottiene partizionando i pari e separatamente i dispari per cui otteniamo esattamente
> $B_5^2 = 52^2 = 2704$

- [ ] **Es. 4.10.** Quante sono le partizioni di $\{1, 2, \dots, 10\}$ in cui almeno un blocco è costituito da un solo numero pari?
> [!info]- Soluzione
> Questo è simile al precedente esercizio (4.5): qui chiamiamo $A_2$ le partizioni che hanno un blocco formato dal solo numero 2 e similmente definiamo $A_4, A_6, A_8, A_{10}$.
> L'insieme considerato è $A_2 \cup A_4 \cup A_6 \cup A_8 \cup A_{10}$. Abbiamo $|A_2| = B_9 = 21147$ e similmente gli altri (un blocco è formato dal solo 2 e gli altri numeri devono essere partizionati).
> Abbiamo $|A_2 \cap A_4| = B_8 = 4140$.
> Abbiamo $|A_2 \cap A_4 \cap A_6| = B_7 = 877$.
> Abbiamo $|A_2 \cap A_4 \cap A_6 \cap A_8| = B_6 = 203$.
> Abbiamo $|A_2 \cap A_4 \cap A_6 \cap A_8 \cap A_{10}| = B_5 = 52$. Usando il principio di inclusione esclusione abbiamo quindi
> $|(A_2 \cup A_4 \cup \dots \cup A_{10})| = 5 \cdot 21147 - 10 \cdot 4140 + 10 \cdot 877 - 5 \cdot 203 + 1 \cdot 52 = 72142$.

- [ ] **Es. 4.11.** Stabilire in quanti modi 10 persone possono essere suddivise in 3 gruppi (non vuoti).
> [!info]- Soluzione
> Questo è semplicemente $S_{10,3} = 9330$.

- [ ] **Es. 4.12.** (difficile) Sia $R_{n,k}$ il numero di partizioni di $\{1, \dots, n\}$ in $k$ blocchi in cui ogni blocco contiene almeno due elementi. Mostrare che
$$R_{n,k} = (n - 1)R_{n-2,k-1} + k R_{n-1,k}$$
per ogni $n > 1$ dove poniamo per convenzione $R_{0,0} = 1$ e $R_{0,k} = 0$ se $k > 0$.
> [!info]- Soluzione
> In questo esercizio contiamo queste partizioni dividendole in due casi
> 1 caso: $n$ sta in un blocco con esattamente 2 elementi. In questo caso abbiamo $n-1$ modi di scegliere il "compagno" di $n$ e poi gli altri $n-2$ elementi li dobbiamo partizionare in $k-1$ blocchi con la stessa proprietà: abbiamo in questo caso $(n - 1)R_{n-2,k-1}$ possibili scelte.
> 2 caso: $n$ sta in un blocco con almeno 3 elementi. In questo caso possiamo procedere scegliendo prima un partizione di questo tipo su $n - 1$ elementi e poi scegliere uno dei $k$ blocchi per aggiungergli $n$. Totale $k R_{n-1,k}$.
