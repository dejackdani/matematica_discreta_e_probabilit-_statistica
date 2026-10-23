---
indice: "5.1"
titolo: Esercizi di Combinatoria Intuitiva
file_sorgente: "[[EserciziMDPnew.pdf]]"
---

- [x] **Es. 1.1.** Devo regalare due biglietti per uno spettacolo a due tra dieci miei amici. In quanti modi posso fare questa scelta?
> [!info]- Soluzione
> In questo esercizio l'ordine con cui scelgo i miei due amici non è importante. Se li regalo a Luca e Aldo oppure a Aldo e Luca è chiaramente la stessa cosa. Possiamo rispondere in questo modo: chiamiamo 1,2,3,...,10 i miei amici. Conto quante sono le scelte in cui 1 riceve il biglietto: sono 9. Conto ora quelle in cui 1 non riceve il biglietto e procedo similmente a prima: inizio contando quelle in cui 2 riceve il biglietto (e 1 no): sono 8 e poi conto quelle in cui né 1, né 2 ricevono il biglietto. Proseguendo in questo modo le possibili scelte sono: $9+8+7+6+5+4+3+2=45$.

- [x] **Es. 1.2.** Quante sono le possibili classifiche finali in un torneo a tre squadre (considerando anche possibili parimerito)?
> [!info]- Soluzione
> Chiamiamo A,B,C le tre squadre. Abbiamo una possibile classifica in cui le 3 squadre finiscono a parimerito. Contiamo le classifiche in cui due squadre finiscono a parimerito e la terza no. Abbiamo 3 possibili scelte per le due squadre a parimerito: AB, AC, BC. Contiamo quelle in cui AB sono a parimerito. Abbiamo AB prime e C terza, oppure C prima e AB seconde, quindi due possibilità. In tutto abbiamo quindi 6 classifiche con due squadre a parimerito. Infine le classifiche in cui non ci sono parimerito sono 6. In tutto abbiamo quindi 13 classifiche.

- [x] **Es. 1.3.** Quanti sono i possibili lanci di tre dadi in cui il risultato più grande è almeno 5, il secondo è almeno 4, il terzo almeno 3?
> [!info]- Soluzione
> Bisogna contare con ordine tutte le possibilità. Se i dadi danno risultati distinti i valori possibili sono 345, 346, 356, 456. Se ho due valori uguali questi devono essere almeno 4: abbiamo quindi 445, 446, 553, 554, 556, 663, 664, 665. Se ho tre valori uguali ho solo 555 e 666. In tutto 14 possibilità. Si osservi come in questo caso l'ordine non sia importante.

- [x] **Es. 1.4.** Mostrare che i sottoinsiemi di cardinalità pari di un insieme con 11 elementi sono tanti quanti quelli di cardinalità dispari.
> [!info]- Soluzione
> La funzione che associa ad ogni sottoinsieme il suo complementare è una corrispondenza biunivoca tra i sottoinsiemi di cardinalità pari e quelli di cardinalità dispari.

- [ ] **Es. 1.5.** Quattro coppie moglie-marito di scambisti decidono di scambiarsi i propri partner per una serata. In quanti modi possono effettuare questa scelta (in modo che ogni uomo passi la serata con la moglie di un altro)?
> [!info]- Soluzione
> Ogni scelta la possiamo pensare come una permutazione dei numeri da 1 a 4 in cui non ci sono numeri che rimangono al loro posto: ad esempio 2341 sta ad indicare che i mariti 1,2,3,4 si accompagnano alle mogli 2,3,4,1. Per simmetria possiamo supporre che il marito 1 vada con la moglie 2 e poi moltiplicheremo il risultato per tre per considerare le altre possibili scelte (moglie 3 e moglie 4). Abbiamo 2341, 2143, 2413 e quindi in tutti 9 possibili scelte.

- [ ] **Es. 1.6.** Sia $A=\{1,2,3,4\}$. Quante sono le sequenze in $A$ di lunghezza 6 in cui ogni elemento di $A$ compare un numero pari di volte? E quante quelle in cui ogni elemento di $A$ compare un numero dispari di volte?
> [!info]- Soluzione
> Ogni elemento può comparire 0, 2, 4, 6 volte e abbiamo quindi diversi casi da affrontare.
> (1) C'è un numero che compare 6 volte e tutti gli altri 0: queste sono 4, le possibili scelte del numero;
> (2) C'è un numero che compare 4 volte e uno che compare 2 volte: scegliamo il numero che compare 4 volte (4 possibilità), scegliamo il numero che compare 2 volte (3 possibilità), infine scegliamo i 4 posti dove inserire il primo numero scelto ($\binom{6}{4} = 15$ possibilità): in tutto abbiamo quindi $4 \cdot 3 \cdot 15 = 180$ scelte.
> (3) Ci sono 3 numeri, ciascuno dei quali compare 2 volte: scegliamo i 3 numeri ($\binom{4}{3} = 4$ scelte) e poi scegliamo la combinazione di tipo $(2, 2, 2)$ per posizionarli ($\binom{6}{2, 2, 2} = 90$ scelte): abbiamo quindi 360 possibilità.
> Complessivamente abbiamo $4 + 180 + 360 = 544$ scelte.
> Se tutti i numeri devono comparire un numero dispari di volte l'unica possibilità è che uno compaia 3 volte e gli altri tre una volta. Il numero da inserire 3 volte lo possiamo scegliere in 4 modi. Poi abbiamo $\binom{6}{3, 1, 1, 1} = 120$ modi di posizionare i numeri. In tutti abbiamo quindi 480 modi.
