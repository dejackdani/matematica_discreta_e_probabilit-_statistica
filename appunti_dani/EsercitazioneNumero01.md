## Esercizio 1.1
**Devo regalare due biglietti per uno spettacolo a due tra dieci miei amici. In quanti modi posso fare questa scelta?** [[EserciziMDPnew.pdf#page=2&selection=10,0,17,38|EserciziMDPnew, pagina 2]]

è un prodotto condizionato di tipo (10, 9) in quanto scelto il primo amico su 10, ne restano nove! per cui, secondo il criterio di [[01_Calcolo Combinatorio#osservazione Cardinalità di un prodotto condizionato|Cardinalità di un prodotto condizionato]], le scelte possibili sono 
$$
10 \cdot 9 = 90
$$
**C'è un però:** Siccome però, potremmo scegliere due volte la stessa coppia di persona ma con posti invertiti $(2,1) \equiv (1,2)$, una volta in prima posizione ed una seconda volta in seconda posizione, dobbiamo dividere per due il risultato finale in modo da scongiurare questa possibilità ottenendo $90/2=45$ possibilità

> Soluzione = $\set{(a,b)\in\set{1,\dots, 10}^2: a < b}$

---
## Esercizio 1.2
**Quante sono le possibili classifiche finali in un torneo a tre squadre (considerando anche possibili parimerito)?** [[EserciziMDPnew.pdf#page=2&selection=19,0,22,29|EserciziMDPnew, pagina 2]]

abbiamo diversi casi che possiamo considerare casi diversi

1. in caso di nessun pari merito abbiamo un prodotto condizionato di tipo (3,2,1), ossia una delle 3 squadre arriva prima, poi c'è una seconda ed infine la terza. e di casi ce ne saranno $$3\cdot 2 \cdot 1 = 6$$
2. avremo il caso in cui tutte e 3 arrivano prime e qui ci sarà un unico caso
3. poi avremo il caso in cui due squadre arrivano pari merito (ed una sola in seconda posizione) in prima posizione e possono essere 6
4. ed infine avremo il caso in cui due squadre arrivano in seconda posizione ed una in prima, anche qui possiamo avere 6 casistiche diverse.

il conto finale viene svolto sommando tutte le casistiche sopra elencate $$ 6 + 1 + 6 + 6 = 19$$

| indice | 1° posizione | 2° posizione | 3° posizione |
| ------ | ------------ | ------------ | ------------ |
| 1      | 1, 2, 3      |              |              |
| 2      | 1, 2         | 3            |              |
| 3      | 1, 3         | 2            |              |
| 4      | 2, 1         | 3            |              |
| 5      | 2, 3         | 1            |              |
| 6      | 3, 1         | 2            |              |
| 7      | 3, 2         | 1            |              |
| 8      | 3            | 1,2          |              |
| 9      | 2            | 1,3          |              |
| 10     | 3            | 2,1          |              |
| 11     | 1            | 2,3          |              |
| 12     | 2            | 3,1          |              |
| 13     | 1            | 3,2          |              |
| 14     | 1            | 2            | 3            |
| 15     | 1            | 3            | 2            |
| 16     | 2            | 1            | 3            |
| 17     | 2            | 3            | 1            |
| 18     | 3            | 1            | 2            |
| 19     | 3            | 2            | 1            |

--- 
## Esercizio 1.3
**Quanti sono i possibili lanci di tre dadi in cui il risultato più grande è almeno 5, il secondo è almeno 4, il terzo almeno 3?** [[EserciziMDPnew.pdf#page=2&selection=24,0,30,31|EserciziMDPnew, pagina 2]]

è importante fare alcune assunzioni iniziali:
-  i dadi sono a 6 facce
- l'ordine in cui escono i valori non è uguale per tutti

proviamo a pensarla cosi:
- $S_1=\{$"il risultato più grande è almeno 5" $\}=\{5, 6\}\Rightarrow |S_1| = 2$
- $S_2=\{$"il secondo risultato è almeno 4"$\} = \set{4,5,6}\Rightarrow |S_2| = 3$
- $S_3=\{$"il terzo risultato è almeno 3"$\} = \set{3,4,5,6}\Rightarrow |S_3| = 4$

l'insieme $S_1$ può avvenire anche durante il secondo o il terzo risultato, i quali invece sono vincolati alla sequenza del tiro e quindi mi viene da pensare 3 casi:

- **CASO-1:** $S_1$ avviene nel primo caso, se così fosse potremmo avere una cardinalità del tipo:
	- |$S_1$| = 2 possibilità per il primo
	- |$S_2$| = 3 possibilità per il secondo
	- |$S_3$| = 4 possibilità per terzo

- **CASO-2:** $S_1$ avviene nel secondo caso
	- 6 possibilità per il primo
	- |$S_1$| = 2 possibilità per il secondo, implicitamente si avvera anche la 2° condizione
	- |$S_3$| = 4 possibilità per il terzo
	  
- **CASO-3:** $S_1$ avviene nel terzo caso
	- 6 possibilità per il primo
	- |$S_2$| = 3 possibilità per il secondo
	- |$S_1$| = 2 possibilità per il terzo, implicitamente si avvera anche la 3° condizione

**La domanda è come identifico le sovrapposizioni?**

se moltiplichiamo tra loro gli insiemi in base alle cardinalità degli $S_i$...? allora:
- **CASO-1**:  $2\cdot 3\cdot 4= 24$
- **CASO-2:**  $6\cdot 2 \cdot 4 = 48$
- **CASO-3:**  $6\cdot 3 \cdot 2 = 36$


---
## Esercizio 1.4
**Mostrare che i sottoinsiemi di cardinalità pari di un insieme con 11 elementi sono tanti quanti quelli di cardinalità dispari. [[EserciziMDPnew.pdf#page=2&selection=32,0,37,10|EserciziMDPnew, pagina 2]]**

partiamo dal fatto di avere un insieme
$$
	S = \set{1,2,3,4,5,6,7,8,9,10,11}
$$
tutti i possibili insiemi sono identificati dal [[01_Calcolo Combinatorio#definizione Insieme delle Parti (o dei sotto insiemi)|insieme delle Parti]]
$$
	|S| = 11 \rightarrow \mathbb{P}(S) = 2^{|S|} = 2^{11} = 2048 
$$
direi un po troppe da poter verificare, considererei dunque un insieme più piccolo. Magari un insieme $K\subset S, K=\set{1,2,3}, |K| = 3\longrightarrow \mathbb{P}(A) = 2^3 = 8$. estendendo questo ragionamento voglio osservare nella pratica se il numero di insiemi pari = al numero di insiemi dispari
$$
	\begin{array}{c}
	i & \text{sotto-insieme } B_i\subseteq K & \text{Sequenza binaria corrispondente}\\
	\hline
	1 & \emptyset & 000\\
	2 & \set{1} & 001\\
	3 & \set{2} & 010\\
	4 & \set{1,2} & 011\\
	5 & \set{3} & 100\\
	6 & \set{1,3} & 101\\
	7 & \set{2,3} & 110\\
	8 & \set{1,2,3} & 111\\
	\end{array}
$$
Osservando la sequenza binaria, notiamo che
- il numero di insiemi con 1 elemento (dispari) sono: 3
- il numero di insiemi con 2 elementi (pari) sono: 3
- il numero di insiemi con tutti gli elementi (dispari) sono: 1
- il numero di insiemi con nessun elemento (pari) sono: 1

per sicurezza potremmo verificare anche con $|K| = 2$ ma il conto ritorna sempre e quindi possiamo concludere che: **Si**! 
$$
	|\set{K_i | K_i \in \mathbb{P}(S) \land |K_i|/2 = 0}| = |\set{K_i | K_i \in \mathbb{P}(S) \land |K_i|/2 \ne 0}| 
$$

## Esercizio 1.5
Es. 1.5. Quattro coppie moglie-marito di scambisti decidono di scambiarsi i propri partner per una serata. In quanti modi possono effettuare questa scelta (in modo che ogni uomo passi la serata con la moglie di un altro)?  [[EserciziMDPnew.pdf#page=2&selection=39,0,43,43|EserciziMDPnew, pagina 2]]

- U1-D1
- U2-D2
- U3-D3
- U4-D4

se consideriamo che le donne rimangono nella loro posizione, ma a scambiarsi sono solo gli uomini, mi viene da dire che le possibili scelte per ognuno di essi è un prodotto condizionato di tipo (3,2,1), il quale porta ad una conclusione che é $3\cdot2\cdot1=6$. ma non credo vada bene...

> [!hint] riproviamo

proviamo a considerare tutte le possibili permutazioni degli uomini considerando le donne come posizione di indice i nell'ordine degli uomini. $$4! = (4)_4 = 4\cdot3\cdot2\cdot1 = 24$$
a questi 24, proviamo a rimuovere tutte le permutazioni in cui l'uomo 1 rimane al suo posto, l'uomo 2 rimane al suo posto, e così via... e sono: 

Considerando che il primo uomo avrà una scelta sola, il secondo ne avrà 3, il terzo ne avrà 2 e l'ultimo 1, avremo un prodotto condizionato di questo tipo:
$$
	\left.\begin{array}{l}
		\text{U1: } & (1,3,2,1) & \Rightarrow & 3! = 3\cdot2\cdot1 = 6\\
		\text{U2: } & (3,1,2,1) & \Rightarrow & 3! = 3\cdot2\cdot1 = 6\\
		\text{U3: } & (3,2,1,1) & \Rightarrow & 3! = 3\cdot2\cdot1 = 6\\
		\text{U4: } & (3,2,1,1) & \Rightarrow & 3! = 3\cdot2\cdot1 = 6
	\end{array}\right\}\text{tot: } 6 + 6 + 6 + 6 = 24
$$
ma così facendo abbiamo un problema, le intersezioni che si possono creare... alcune di loro vengono contate 2 volte in più altre 3 volte in più ed altre 4 volte in più. intanto rimuoviamo dal conto le intersezioni a 2
$$
	\left.
	\begin{array}{l}
		U1\cap U2 & \Rightarrow & 2! = 2\cdot1 = 2\\
		U1\cap U3 & \Rightarrow & 2! = 2\cdot1 = 2\\
		U1\cap U4 & \Rightarrow & 2! = 2\cdot1 = 2\\
		U2\cap U3 & \Rightarrow & 2! = 2\cdot1 = 2\\
		U2\cap U4 & \Rightarrow & 2! = 2\cdot1 = 2\\
		U3\cap U4 & \Rightarrow & 2! = 2\cdot1 = 2\\
	\end{array}
	\right\} \text{tot: } 2\cdot 6 = 12
$$
a questo punto dobbiamo calcolare come aggiungere nuovamente tutte coppie in cui i tre uomini restano al loro posto e sono

$$
	\left.
	\begin{array}{l}
		U1\cap U2 \cap U3 & \Rightarrow & 1! = 1\\
		U4\cap U2 \cap U3 & \Rightarrow & 1! = 1\\
		U1\cap U4 \cap U3 & \Rightarrow & 1! = 1\\
		U1\cap U2 \cap U2 & \Rightarrow & 1! = 1\\
	\end{array}
	\right\} \text{tot: } 1\cdot 4 = 4
$$
più tutti quelli che vengono che rimangono nella stessa posizione che risultano essere soltanto uno 
$$
	U1\cap U2 \cap U3 \cap U4 \quad \Longrightarrow \quad 1
$$
a questo punto, facendo un calcolo di: *tutte le possibili permutazioni* - *tutte le permutazioni in cui almeno 1 rimane al suo posto* + *tutte le permutazioni in cui 2 rimangono al loro posto* - *tutte le permutazioni in cui 3 rimangono al loro posto* + *l'unica permutazione in cui tutti rimangono al loro posto* così facendo dovremmo ottenere il risultato che dovrebbe essere $$ 24 - 24 + 12 - 4 +1 = 9$$

**RISOLTO**

## Esercizio 1.6
Sia $A=\set{1,2,3,4}$.  Quante sono le [[01_Calcolo Combinatorio#definizione Sequenze|Sequenze]] in A di lunghezza 6 in cui ogni elemento di A compare un numero pari di volte? E quante quelle in cui ogni elemento di A compare un numero dispari di volte?  [[EserciziMDPnew.pdf#page=2&selection=45,0,49,27|EserciziMDPnew, pagina 2]]

Facendo un rapido calcolo ci accorgiamo che tutte le possibili sequenze di lunghezza 6 dell'insieme $A$ sono $4^6 = 4096$. di queste 4096 bisogna identificare quelle sequenze in cui 1, 2, 3 o 4 appaiano in numero pari nelle sequenze.

mi chiedo: quante sono le vote in cui un elemento compare 2 volte in una qualsiasi sequenza di lunghezza 6? 
$$
	\begin{matrix}
		(x, x, *, *, *, *)\\
		(x, *, x, *, *, *)\\
		(x, *, *, x, *, *)\\
		(x, *, *, *, x, *)\\
		(x, *, *, *, *, x)\\
		(*, x, x, *, *, *)\\
		(*, x, *, x, *, *)\\
		(*, x, *, *, x, *)\\
		(*, x, *, *, *, x)\\
		(*, *, x, x, *, *)\\
		(*, *, x, *, x, *)\\
		(*, *, x, *, *, x)\\
		(*, *, *, x, x, *)\\
		(*, *, *, x, *, x)\\
		(*, *, *, *, x, x)
	\end{matrix}
$$
15 volte. di queste 15 dobbiamo però considerare che potrei avere una seconda coppia  di elementi di $A$ che identifico con $y\in A | y \ne x$ che potrebbe apparire così in un singolo caso dell'insieme precedente: $$

	\begin{matrix}
		(x, x, y, y, *, *)\\
		(x, x, y, *, y, *)\\
		(x, x, y, *, *, y)\\
		(x, x, *, y, y, *)\\
		(x, x, *, y, *, y)\\
		(x, x, *, *, y, y)\\
	\end{matrix}
$$
analogamente, se considerassimo una terza coppia $z\in A  | z \ne y \ne x$
Otterrei per ogni singolo caso una cosa di questa tipo  $$

	\begin{matrix}
		(x, x, y, y, z, z)\\
		(x, x, y, z, y, z)\\
		(x, x, y, z, z, y)\\
		(x, x, z, y, z, y)\\
		(x, x, z, y, z, y)\\
		(x, x, z, z, y, y)\\
	\end{matrix}
$$

quante volte se devono apparire 4 volte?
$$
	\begin{matrix}
		(x, x, x, x, *, *)\\
		(x, x, x, *, x, *)\\
		(x, x, x, *, *, x)\\
		(x, x, *, x, *, x)\\
		(x, x, *, *, x, x)\\
		(x, *, x, *, x, x)\\
		(x, *, *, x, x, x)\\
		(*, x, x, x, x, *)\\
		(*, x, x, x, *, x)\\
		(*, x, x, *, x, x)\\
		(*, x, *, x, x, x)\\
		(*, *, x, x, x, x)\\
	\end{matrix}
$$
12 volte. come per prima, qui dobbiamo considerare la possibilità in cui insieme ad $x$ potrebbe essere $y\in A | y\ne x$ che appare in una quantità pari nelle sequenze. e cio' avverrebbe in lo stesso numero di volte in cui appare $x$ e quindi ci basta fare questo caso $\times 2$


il caso più semplice è che se devono comparire gli stessi numeri allora sono 4 possibilità in quanto ci sono 4 casi semplici

$$
	\begin{matrix}
		(1,1,1,1,1,1)\\
		(2,2,2,2,2,2)\\
		(3,3,3,3,3,3)\\
		(4,4,4,4,4,4)\\
	\end{matrix}
$$
Ricapitolando abbiamo
- **4 sequenze:** tutti i numeri sono uguali
- **60 sequenze:** 15 sequenze ( in cui un numero appare 2 volte all'interno della sequenza) $\times 4$ numeri disponibili
- **1440 sequenze**: 60 sequenze (per scegliere 2 numeri) $\times (6$ possibilità di porre altri 2 numeri in una singola di quelle sequenze $\times 4$ numeri disponibili)
- **5760 sequenze** : 1440 sequenze (per scegliere 2 coppie di numeri)  $\times 4$ (le sequenze sono quelle, basta selezionare un seme da dare all'ultima coppia)




