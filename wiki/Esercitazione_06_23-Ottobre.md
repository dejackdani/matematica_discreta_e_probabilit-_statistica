---
title: Esercizi Probabilità base
stato_esercitazione: 🔴 Da Svolgere
file_sorgente: "[[EserciziMDPnew.pdf]]"
---
# Esercizi: Probabilità di base e uniforme

- [ ] **Es. 6.1.** Costruire uno spazio di probabilità (non uniforme) sull'insieme $\Omega = \{1, 2, a, b\}$.

> [!info]- Soluzione
> Basta considerare come insieme di eventi $\emptyset, \Omega, \{1, 2\}, \{a, b\}$ e probabilità data da $P(\{1, 2\}) = 1/2$ e $P(\{a, b\}) = 1/2$. Questo non è uno spazio di probabilità uniforme perché non tutti i risultati sono eventi. Questo spazio di probabilità potrebbe modellizzare il seguente fenomeno aleatorio. Abbiamo due urne, una contenente palline numerate 1 o 2 , ma non sappiamo quante di ciascun tipo, e una con palline etichettate a o b, ma non sappiamo quante di caiscun tipo ed estraiamo una pallina a caso da un'urna scelta a caso. Non possiamo dire che il risultato 1 sia un evento perché non possiamo calcolarne la probabilità.

- [ ] **Es. 6.2.** Sia $\Omega = \{1, 2, 3\}$. Quante sono le famiglie di eventi su $\Omega$ (cioé famiglie di sottoinsiemi chiuse rispetto a unione, intersezione e complementare che contengono $\Omega$ e $\emptyset$)?

> [!info]- Soluzione
> In questo caso abbiamo 5 possibili famiglie di eventi: esse sono
> - $\Omega, \emptyset$
> - $\Omega, \emptyset, \{1\}, \{2, 3\}$
> - $\Omega, \emptyset, \{2\}, \{1, 3\}$
> - $\Omega, \emptyset, \{3\}, \{1, 2\}$
> - $\Omega, \emptyset, \{1\}, \{2\}, \{3\}, \{1, 2\}, \{1, 3\}, \{2, 3\}$

- [ ] **Es. 6.3.** Un'urna contiene 6 palline rosse, 6 gialle, 6 blu, 6 verdi e 6 arancioni. Determinare la probabilità che pescando 8 palline a caso queste siano di esattamente 3 colori differenti.

> [!info]- Soluzione
> Consideriamo in questo esempio lo spazio $\Omega$ dato da tutte le combinazioni (sottoinsiemi) di lunghezza 8 in un insieme di cardinalità 30 con probabilità uniforme.
> Abbiamo $|\Omega| = \binom{30}{8} = 5852925$. La cardinalità dell'evento $A$ costituito da tutte le combinazioni di 8 palline in cui compaiono esattamente 3 colori diversi era stata calcolata nell'Esercizio 3.3 $|A| = 422730$. Abbiamo quindi
> $P(A) = \frac{422730}{5852925} = 0.0722$
> La probabilità richiesta è quindi del $7.22\%$.

- [ ] **Es. 6.4.** Determinare la probabilità che scegliendo un anagramma a caso della parola LALLANLA si ottenga una parola con le tre A in posizioni consecutive

> [!info]- Soluzione
> In questo caso consideriamo come $\Omega$ l'insieme di tutti i possibili anagrammi della parola LALLANLA. Come abbiamo visto nell'esercizio 3.6
> $|\Omega| = \binom{8}{4,3,1} = 280$
> Dobbiamo ora determinare la cardinalità dell'evento $E = \{$ anagrammi con le 3 A in posizioni consecutive $\}$. Per calcolare la cardinalità di $E$ procediamo per scelte successive: determiniamo prima le posizioni in cui inserire le 3 A: abbiamo 6 scelte. Dopodiché dobbiamo decidere dove scrivere la N: 5 scelte. Abbiamo quindi $|E| = 30$ e di conseguenza abbiamo
> $P(E) = \frac{30}{280} = \frac{3}{28} = 10.7\%$,

- [ ] **Es. 6.5.** Un insegnante interroga casualmente ogni giorno uno dei suoi sei studenti. Determinare la probabilità che dopo 10 giorni abbia interrogato almeno una volta tutti i sei studenti.

> [!info]- Soluzione
> L'insieme $\Omega$ in questo caso è dato da tutte le sequenze di lunghezza 10 con coefficienti in $\{1, 2, 3, 4, 5, 6\}$ e quindi $|\Omega| = 6^{10} = 60466176$. Dobbiamo calcolare la probabilità dell'evento $E$ costituito da tutte le sequenze in $\Omega$ che contengono tutti i numeri da 1 a 6. La cardinalità di $E$ può essere calcolata con la formula per le funzioni suriettive
> $|E| = \sum_{k=0}^5 (-1)^k \binom{6}{k} (6-k)^{10}$
> $= 6^{10} - 6 \cdot 5^{10} + 15 \cdot 4^{10} - 20 \cdot 3^{10} + 15 \cdot 2^{10} - 6$
> $= 16435440$
> e quindi
> $P(E) = \frac{|E|}{|\Omega|} = 0.272$

- [ ] **Es. 6.6.** Una classe di 10 bambini viene divisa in tre gruppi in modo casuale. Determinare la probabilità che il bambino Andrea finisca nello stesso gruppo della bambina Margherita.

> [!info]- Soluzione
> Qui $\Omega$ è dato da tutte le partizioni di un insieme di 10 elementi in 3 blocchi e quindi
> $|\Omega| = S_{10,3} = 9330$
> (che si può ottenere dal triangolo di Stirling). I risultati favorevoli si possono pensare come la partizioni di un insieme di 9 elementi in 3 blocchi: basta infatti pensare a Margherita e ad Andrea come se fossero un elemento solo. Abbiamo quindi $|E| = S_{9,3} = 3025$ e quindi
> $P(E) = \frac{3025}{9330} = 0.324$

- [ ] **Es. 6.7.** Abbiamo tre urne contenenti una pallina bianca e rispettivamente 1,3 e 5 palline rosse. Estraendo una pallina a caso da un'urna, qual è la probabilità che sia bianca?

> [!info]- Soluzione
> Usiamo in questo esercizio la formula delle probabilità totali. Chiamiamo $U_i$ l'evento "pallina estratta dall'urna $i$" e $B$ l'evento "estrazione di una pallina bianca".
> Abbiamo
> $P(B) = P(U_1)P(B|U_1) + P(U_2)P(B|U_2) + P(U_3)P(B|U_3)$
> $= \frac{1}{3} \cdot \frac{1}{2} + \frac{1}{3} \cdot \frac{1}{4} + \frac{1}{3} \cdot \frac{1}{6} = \frac{6+3+1}{36} = \frac{5}{18}$.

- [ ] **Es. 6.8.** Una moneta (truccata) dà testa con probabilità 0.6. Qual è la probabilità che lanciandola 5 volte otteniamo più teste che croci?

> [!info]- Soluzione
> Abbiamo 10 combinazioni di tre teste e due croci ognuna con probabilità $0.6^3 \cdot 0.4^2 = 0.03456$.
> Abbiamo 5 combinazioni di quattro teste e una croce ognuna con probabilità $0.6^4 \cdot 0.4 = 0.05184$.
> Infine abbiamo una sola combinazioni di cinque teste con probabilità $0.6^5 = 0.07776$.
> la probabilità di aver più teste che croci è quindi
> $10 \cdot 0.03456 + 5 \cdot 0.05184 + 0.07776 = 0.6826$
> cioè il $68.26\%$.

- [ ] **Es. 6.9.** Avendo a disposizione la moneta dell'esercizio precedente e una regolare, ne scegliamo una a caso e la lanciamo tre volte.
  (1) Qual è la probabilità di ottenere 3 teste?
  (2) Sapendo che il primo lancio ha dato come risultato testa, qual è la probabilità che la moneta sia truccata?
  (3) Stabilire se gli eventi $E_1$ ="testa al primo lancio" ed $E_2$ ="testa al secondo lancio" sono dipendenti o indipendenti.

> [!info]- Soluzione
> (a) Utilizziamo la formula delle probabilità totali con $A_1$ ="moneta truccata", $A_2$ ="moneta regolare" ed $E$ ="escono 3 teste". Abbiamo
> $P(E) = P(A_1)P(E|A_1) + P(A_2)P(E|A_2) = \frac{1}{2}0.6^3 + \frac{1}{2}0.5^3 = 0.1705$.
> (b) La probabilità di ottenere testa al primo lancio è
> $P(E_1) = P(A_1)P(E_1|A_1) + P(A_2)P(E_1|A_2) = \frac{1}{2}0.6 + \frac{1}{2}0.5 = 0.55$.
> Abbiamo quindi che la probabilità che la moneta sia truccata sapendo che il primo lancio ha dato testa è
> $P(A_2|E_1) = \frac{P(E_1|A_2)P(A_2)}{P(E_1)} = \frac{0.6 \cdot 0.5}{0.55} = 0.5454$
> (c) Abbiamo, similmente al punto (a)
> $P(E_1 \cap E_2) = P(A_1)P(E_1 \cap E_2|A_1) + P(A_2)P(E_1 \cap E_2|A_2) = \frac{1}{2}0.6^2 + \frac{1}{2}0.5^2 = 0.305$
> che è diverso da $P(E_1)P(E_2) = 0.55^2 = 0.3025$ per cui gli eventi sono dipendenti. Ciò poteva anche essere intuito dal punto (b): infatti sapere che il primo lancio ha dato testa fa diventare $0.5454$ la probabilità che la moneta sia truccata e quindi aumenta la probabilità che il secondo lancio sia come risultato testa.
