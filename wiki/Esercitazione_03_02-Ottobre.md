---
indice: "5.3"
titolo: Esercizi di Combinatoria Avanzata
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [ ] **Es. 3.1.** Consideriamo un mazzo di carte da poker contenente le carte numerate 7, 8, 9, 10, J, Q, K, A e contenente quindi 32 carte. Quante sono le mani in cui si ha un punteggio pari o superiore alla scala (cioè o scala, o colore, o full, o poker o scala reale)?
> [!info]- Soluzione
> Chiamiamo $A, B, C, D, E$ le seguenti mani $A$: cinque valori distinti ordinati, $B$: 5 carte dello stesso seme, $C$ una coppia e un tris, $D$ un poker e $E$ 5 carte ordinate dello stesso seme. Dobbiamo calcolare $|A \cup B \cup C \cup D \cup E|$. Osservando che $E = A \cap B$ abbiamo
> $|A \cup B \cup C \cup D \cup E| = |A \cup B \cup C \cup D| = |A| + |B| + |C| + |D| - |E|$
> per il principio di inclusione-esclusione. Abbiamo quindi
> $A$: scegliamo il valore più piccolo in 4 modi (7,8,9,10) e una volta effettuata questa scelta abbiamo $4^5$ modi di scegliere i semi delle cinque carte: $|A| = 4^6 = 4096$.
> $B$: abbiamo $|B| = 4 \cdot \binom{8}{5} = 224$.
> $C$: scelgo il valore del tris (8 modi), poi scelgo il valore della coppia (7 modi), poi i semi delle 3 carte del tris (4 modi) e infine i semi delle due carte della coppia (6 modi). In tutto ho $|C| = 8 \cdot 7 \cdot 4 \cdot 6 = 1344$.
> $D$: scelgo il valore del poker (8 scelte) e poi scelgo la carte rimanente (28 scelte): $|D| = 224$.
> $E$: scelgo il valore minimo (4 scelte), scelgo il seme delle carte: (4 scelte): $|E| = 16$.
> Abbiamo quindi in tutto:
> $|A| + |B| + |C| + |D| - |E| = 4096 + 56 + 1344 + 224 - 16 = 6004$
> mani con un punteggio pari o superiore alla scala.

- [ ] **Es. 3.2.** Un'urna contiene 20 palline numerate da 1 a 20. In quanti modi è possibile colorarle di blu o di rosso in modo che ce ne siano esattamente 8 rosse con un numero pari e 3 rosse con un numero dispari?
> [!info]- Soluzione
> In questo esercizio dobbiamo semplicemente scegliere 8 palline pari ($\binom{10}{8} = 45$ scelte) e 3 palline dispari ($\binom{10}{3} = 120$ scelte). In tutto ho $45 \cdot 120 = 5400$ scelte.

- [ ] **Es. 3.3.** Un'urna contiene 6 palline rosse, 6 gialle, 6 blu, 6 verdi e 6 arancioni. Determinare in quanti modi si possono pescare 8 palline in modo che queste palline siano esattamente di 3 colori differenti. Risolvere questo esercizio sia supponendo che le palline siano indistinguibili, sia supponendo che siano distinguibili, ad esempio supponendo che siano numerate da 1 a 30.
> [!info]- Soluzione
> Caso indistinguibili.
> Possiamo avere le seguenti possibilità
> (a) 6 di un colore, 1 di un altro, 1 di un altro;
> (b) 5, 2, 1;
> (c) 4, 2, 2;
> (d) 4, 3, 1;
> (e) 3, 3, 2.
> Nei casi (a), (c), (e) possiamo scegliere i colori in 30 modi. Nei casi (b) e (d) possiamo scegliere i colori in 60 modi. Abbiamo in tutto quindi 210 modi.
> Caso distinguibili.
> Contiamo prima in quanti modi possiamo scegliere 8 palline in modo che siano di colore rosso, giallo e blu, almeno una di ciascun colore. Poniamo $A$ = "tutti i sottoinsiemi di 8 palline di colore rosso o giallo";
> Poniamo $B$ = "tutti i sottoinsiemi di 8 palline di colore rosso o blu";
> Poniamo $C$ = "tutti i sottoinsiemi di 8 palline di colore blu o giallo";
> E poniamo $U$ = "tutti i sottoinsiemi di 8 palline di colore rosso, blu o giallo";
> Dobbiamo calcolare $|U| - |A \cup B \cup C|$. Osserviamo che $|U| = \binom{18}{8} = 43758$. Per calcolare $|A \cup B \cup C|$ osserviamo che questi tre insiemi sono disgiunti e che abbiamo
> $|A| = |B| = |C| = \binom{12}{8} = 495$. Abbiamo quindi
> $|U| - |A \cup B \cup C| = 43758 - 3 \cdot 495 = 42273$.
> Le scelte possibili dei tre colori sono $\binom{5}{3} = 10$ per cui in tutto ho 422730 possibilità.

- [ ] **Es. 3.4.** Fare lo stesso esercizio supponendo che le palline siano 9 anziché 6 per ciascun colore.
> [!info]- Soluzione
> Es. 3.4 (soluzione non fornita nelle dispense)

- [ ] **Es. 3.5.** Stabilire quante sono le permutazioni di $\{1, 2, 3, 4, 5\}$ in cui almeno tre numeri rimangono al loro posto.
> [!info]- Soluzione
> Contiamo quante sono le permutazioni in cui esattamente tre numeri rimangono al loro posto: scelti questi tre i due rimanenti devono necessariamente essere scambiati tra di loro: abbiamo quindi $\binom{5}{3} = 10$ permutazioni di questo tipo. Permutazioni in cui abbiamo esattamente quattro numeri che rimangono al loro posto non esistono. E abbiamo una sola permutazione in cui tutti i numeri rimangono al loro posto. In tutto tali permutazioni sono quindi 11.

- [ ] **Es. 3.6.** Stabilire quanti sono gli anagrammi della parola LALLANLA in cui almeno 4 lettere non hanno cambiato posto.
> [!info]- Soluzione
> Il numero di lettere fuori posto può essere 0, 2, 3, 4. Se le lettere fuori posto sono 0, ho chiaramente una sola parola. Se le lettere fuori posto sono 2 queste devono essere necessariamente distinte: sono quindi $4 \cdot 3 + 4 + 3 = 19$.
> Se le lettere fuori posto sono 3 queste devono essere necessariamente distinte: sono quindi $4 \cdot 3 = 12$: queste tre lettere possono essere scombussolate in 2 modi diversi e quindi ho 24 anagrammi.
> Se le lettere fuori posto sono 4 devono essere due L, una A e una N, oppure due A, una L e una N, oppure due A e due L. Nei primi due casi abbiamo quindi $6 \cdot 3 + 3 \cdot 4 = 30$ scelte, ed effettuata questa scelta abbiamo due modi di scombussolare le 4 lettere e quindi abbiamo 60 anagrammi di questo tipo. Nell'ultimo caso abbiamo ulteriori 18 anagrammi e quindi complessivamente 78 anagrammi con 4 lettere fuori posto.
> In tutto abbiamo $1 + 19 + 24 + 78 = 122$ anagrammi di LALLANLA in cui almeno 4 lettere rimangono al loro posto.

- [ ] **Es. 3.7.** Consideriamo un insieme $A$ di 16 palline, di cui 8 rosse numerate da 1 a 8, e le altre 8 blu, sempre numerate da 1 a 8. Determinare quanti sono i sottoinsiemi di $A$ costituiti da 10 palline in cui c'è almeno una pallina per ogni valore.
Determinare quanti sono i sottoinsiemi in cui compaiono tutti i valori da 1 a 8 tranne al più un valore.
> [!info]- Soluzione
> Un insieme di 10 palline in cui compaiono tutti i valori da 1 a 8 è composto da due valori che compaiono sia in rosso che in blu e tutti gli altri valori che compaiono una volta sola. Procediamo quindi scegliendo i due valori sia in rosso che in blu ($\binom{8}{2} = 28$ scelte) e poi il colore per ogni altro valore $2^6 = 64$ scelte. Abbiamo in tutto quindi $28 \cdot 64 = 1792$ possibilità.
> I sottoinsiemi in cui compaiono tutti i valori li possiamo costruire così: per ogni valore scegliamo se prendere la carta rossa, la blu, o tutte e due: abbiamo in tutto $3^8$ possibili scelte. Se vogliamo tutti i valori tranne uno scegliamo questo valore in 8 modi e poi per ciascuno degli altri abbiamo 3 scelte come sopra e quindi $8 \cdot 3^7$ possibilità.
> In tutto abbiamo $3^8 + 8 \cdot 3^7 = 11 \cdot 3^7 = 24057$.

- [ ] **Es. 3.8.** Lanciamo un dado per 12 volte.
(1) Determinare quante sono le possibili sequenze di risultati in cui tutti i numeri da 1 a 6 compaiono almeno una volta.
(2) Determinare quante sono quelle in cui ogni risultato compare esattamente due volte.
(3) Determinare quante sono quelle in cui 1,2,3,4 compaiono almeno due volte e 5,6 almeno una volta.
> [!info]- Soluzione
> (1) Questo è dato dal numero di funzioni suriettive da $\{1, 2, \dots, 12\}$ a $\{1, 2, \dots, 6\}$ (o equivalentemente le sequenze 6-piene di lunghezza 12). Sono quindi
> $\sum_{k=0}^6 (-1)^k \binom{6}{k} (6 - k)^{12} = 6^{12} - 6 \cdot 5^{12} + 15 \cdot 4^{12} - 20 \cdot 3^{12} + 15 \cdot 2^{12} - 6$
> (2) Queste sono proprio le combinazioni di tipo $(2, 2, 2, 2, 2, 2)$, e sono quindi
> $\binom{12}{2, 2, 2, 2, 2, 2} = \frac{479001600}{2^6} = 7484400$.
> (3) In questo caso abbiamo
> $4 \cdot \binom{12}{4, 2, 2, 2, 1, 1} + 2 \cdot \binom{12}{2, 2, 2, 2, 3, 1} + \binom{4}{2} \binom{12}{3, 3, 2, 2, 1, 1} + \binom{12}{2, 2, 2, 2, 2, 2} + 4 \cdot 2 \cdot \binom{12}{3, 2, 2, 2, 2, 1}$
