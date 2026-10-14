---
tags:
---

*La combinatoria ci insegna a contare*
## Definizioni varie

### #definizione Cardinalità
un insieme con $n$ elementi distinti ha cardinalità $n$ 
$$ 
\begin{array}{l}
	A =\{1, 2, 3, 4\} & \Longrightarrow & |A| = 4 \\
	B = \{1, 2, 4, 4\} \equiv \{1,2,4\} & \Longrightarrow & |B| = 3
\end{array}
$$



![[Corrispondenza Biunivoca tra insiemi]]

![[appunti_dani/Insieme Numerabile]]

![[appunti_dani/Insieme Discreto]]

## Basi del calcolo Combinatorio

### #definizione Prodotto Cartesiano  

Dati $A$ e $B$ due insiemi, il loro prodotto caresiano è l'insieme di tutte le possibili **coppie ordinate** dei due insiemi
$$
	A\times B=\{(a,b) : a\in A \land b\in B \}
$$
> [!example] Esempi
> - $A = \{1,2\}, B=\{a,b,c\} \Rightarrow A\times B = \{(1,a),(1,b),(1,c),(2,a),(2,b),(2,c)\}$
> - $\mathbb{R}\times\mathbb{R} = \mathbb{R}^2$

Ovviamente la definizione può essere estesa a più insiemi
$$
 A^n = A\times A\times A\times\dots\times A \quad\text{n-volte}
$$

### #definizione Sequenze

Gli elementi di un generico insieme $A^n$ si dicono **sequenze di lunghezza di lunghezza==🟡 n ==in A**

> [!example] Esempio
> $$A=\{1,2\} \Rightarrow A^3 = A\times A\times A \left\{\begin{matrix}(1,1,1),&(1,1,2),\\(1,2,1),&(1,2,2),\\(2,1,1),&(2,1,2),\\(2,2,1),&(2,2,2)\end{matrix}\right\}$$

### #definizione Successioni

le [[#definizione Sequenze|Sequenze]] di lunghezza infinita si dicono **Successioni**

### #definizione Insieme delle Parti (o dei sotto insiemi)

Dato l'insieme $A$, l'insieme delle parti di $A$ è 

$$
\mathbb{P}(A) = \{B:B\subseteq A\}
$$
ossia l'insieme dei sotto insiemi di $A$

$$
	A = \{1,2,3\} \Longrightarrow \mathbb{P}(A) = \left\{
	\begin{matrix}
			\emptyset, \\
			\set{1}, \set{2}, \set{3},\\ \set{1,2}, \set{2,3}, \set{1,3},\\ \set{1,2,3}
	\end{matrix}
	\right\}
	\begin{array}{l}
	\leftarrow \text{insieme vuoto}\\
	\leftarrow \text{insiemi con 1 solo elemento}\\
	\leftarrow \text{insiemi con 2 elementi}\\
	\leftarrow \text{insieme con tutti gli elementi}\\
	\end{array}
$$

### #teorema Corrispondenza biunivoca tra Parti e sequenze binarie

$A=\set{1,2,\dots, n} \Rightarrow$ esiste una corrispondenza biunivoca tra l'insieme delle parti $\mathbb{P}(A)$ e le sequenze binarie di $\set{0,1}^n$

==Dimostrazione==

illustriamo la corrispondenza per $n=3 \Rightarrow A=\set{1,2,3}, |A| = 3$ di conseguenza avremo come prima che 
$$\mathbb{P}(A) = \left\{
	\begin{matrix}
			\emptyset, 
			\set{1}, \set{2}, \set{3}, \set{1,2}, \set{2,3}, \set{1,3}, \set{1,2,3}
	\end{matrix}\right
\}$$
dove $|\mathbb{P}(A)| =|\set{0,1}|^n = 2^3 = 8$

$$
	\begin{array}{c}
	\text{sotto-insieme } B & \text{Sequenza binaria corrispondente}\\
	\hline
	\emptyset & 000\\
	\set{1} & 001\\
	\set{2} & 010\\
	\set{1,2} & 011\\
	\set{3} & 100\\
	\set{1,3} & 101\\
	\set{2,3} & 110\\
	\set{1,2,3} & 111\\
	\end{array}
$$

Cosi facendo è possibile realizzare ogni insieme $B\subseteq A$ attingendo alla relativa sequenza binaria che ci dice con esattezza quali elementi devono apparire al suo interno (1) e quali no (0).

### Principi di base

#### Principio di uguaglianza

$A$ e $B$ sono in corrispondenza biunivoca $\iff |A| =|B|$
#### Principio di somma

se noi abbiamo $A = B\cup C$ con $B\cap C = \emptyset\Rightarrow |A| = |B| + |C|$
#### Principio del prodotto
$$
|A^n|  = |A|^n
$$
- Se $|A|=n\Longrightarrow\mathbb{P}(A) =  |\set{1,2}^n|\qquad\leftarrow$ **Questa la sappiamo grazie al [[#teorema Corrispondenza biunivoca tra Parti e sequenze binarie|teorema]] appena svolto**
- avremo invece che  $|\set{1,2}^n| = 2^n \quad\leftarrow$  **Questa è verificata grazie al principio stesso**

### Prodotti condizionati

Abbiamo un prodotto cartesiano $A\times B$, ed alcuni suoi sotto-insiemi $S_i$
$$
 A= B = \set{1,2,3} \quad S_i\subseteq A\times B 
$$
consideriamo i seguenti:
$$
	\begin{array}{l}
 S_1 = \set{(a,b)\in A\times B : a \ne b} & = \set{(1,2),(1,3),(2,1),(2,3),(3,1),(3,2)}\\
 S_2 = \set{(a,b)\in A\times B : b=a+1} &  = \set{(1,2), (2,3)} \\
 S_3 = \set{(a,b)\in A\times B : a \ne b \land a\ne3 \land(a,b)\ne(2,1)} & = \set{(1,2),(1,3),(2,3))} 
 \end{array}
$$
in $S_1$ ed $S_2$ , fissata la 1° coordinata, il numero di scelte per la 2° non cambia. è sempre uguale

- $S_1\rightarrow$  1° scelta: 3 possibilità; 2° scelta: 2 possibilità
- $S_2\rightarrow$  1° scelta: 2 possibilità ; 2° scelta: 1 possibilità

**Questo però non accade in $S_3$** in quanto 

- $S_2\rightarrow$  1° scelta: 2 possibilità ; 2° scelta:
	-  2 possibilità se la 1° scelta ricadeva sul 1
	- 1 possibilità se la 1° scelta ricadeva sul 2
#### #definizione Prodotto Condizionato

Sia $S\subseteq A\times B$, diciamo che $S$ è un **prodotto condizionato di tipo $(n_1,n_2)$** se:

1. le prime coordinate sui cui è possibile scegliere sono $n_1$
2. fissata la 1° coordinata abbiamo $n_2$ scelte per la 2°
   *Indipendentemente da quale coordinata fosse stata scelta per prima*

> [!hint] nell'esempio precedente...
> ripensando ai 3 sotto insiemi di prima possiamo dire:
> - $S_1$ è un prodotto condizionato di tipo $(3,2)$e:
> - $S_2$ è un prodotto condizionato di tipo $(2,1)$

 > [!example] I seguenti Sotto insiemi sono Prodotti condizionati?
>  $$ S = \set{(a,b):a,b\in\set{0,1,\dots 9} \land |a-b| = 1} $$
>  **No** perché:
>  Ci ritroviamo con due tipologie diverse di prodotti condizionati
>  - se $a \in\set{1, \dots 8} \Rightarrow$ abbiamo un prodotto condizionato di tipo $(8, 2)$
>  - se $a \in\set{0,9} \Rightarrow$ abbiamo un prodotto condizionato di tipo $(10, 1)$
>---
>  $$ S = \set{(a,b):a,b\in\set{0,1,\dots 9} \land  |a-b| \in\set{1, 9}} $$
>  **Si**, perché:
>  a differenza di prima, ora si considera la possibilità di ammettere una distanza tra i numeri che sia 1 oppure 9, il che ci permette di ottenere un prodotto condizionato di tipo $(10,2)$

#### #osservazione Cardinalità di un prodotto condizionato

Dato $C$, un generico prodotto condizionato di tipo $(n_1, n_2)\Rightarrow |C| = n_1 * n_2$

#### #definizione Prodotto condizionato $(n_1, n_2, \dots, n_k)$

Sia $S \subset A_1 \times A_2 \times \dots \times A_k$ esso è un **prodotto condizionato di tipo** $(n_1, n_2, \dots, n_k)$ se è vero che:

1. ci sono $n_1$ possibilità per la 1° coordinata
2. fissata la 1° coordinata, ci sono $n_2$ possibilità per la 2° coordinata
3. $\dots$
4. fissata la ($k-1$)° coordinata, ci sono $n_k$ possibilità per la k-esima° coordinata

secondo l'[[#osservazione Cardinalità di un prodotto condizionato|osservazione]] precedente, avremo che la sua cardinalità avrà valore
$$
|S| = n_1 \cdot n_2 \cdot _{\dots} \cdot n_k
$$

> [!example] Questi sono prodotti condizionati?
> $S = \set{(a,b,c,d,e) \in \set{0,1,2,\dots,9}^5\quad|\quad a \ne b \ne c \ne d \ne e}$
> 
> Preso $a\in S$, avremo $a = (a_1, a_2, a_3, a_4, a_5)$
> 
> Qui siamo in presenza di un prodotto condizionato di tipo $(10, 9, 8, 7, 6)$ e quindi
> 
> $$ |S| = 10 \cdot 9 \cdot 8 \cdot 7 \cdot 6 $$
> 
> ---
> 
> $$
>  S = \set{(a,b,c)\in\mathbb{N}^3 | a \leq 10 \quad\land\quad 0 \leq b-a \leq 10 \quad\land\quad 0 \leq c-a-b \leq 10}
> $$
> 
> Manipolando un momento le condizioni ci accorgiamo che abbiamo 3 casi:
> 
> 1. una semplice condizione "$a \leq 10$"
> 2. "$0 \leq b-a \leq 10$" può sembrare complessa, ma se la separiamo otteniamo
> 	1. $0 \leq b-a \longrightarrow \color{red} a \leq b$
> 	2. $b-a \leq 10 \longrightarrow \color{red} a \leq 10 + b$
> 3. discorso simile al precedente ma con qualche variabile in più da considerare:
> 	1. $0 \leq c-a-b  \longrightarrow \color{blue} a + b \leq c$
> 	2. $c-a-b \leq 10 \longrightarrow \color{blue} c \leq 10 + a + b$
> 	   
> a questo punto ci accorgiamo che:
> - $a\in\set{0,1,2,_{\dots}, 10}\rightarrow$ 11 scelte possibili
> - $b$ puo' assumere un valore compreso tra $a$ e $a + 10\rightarrow$ 11 scelte possibili
> - $c$ puo' assumere un valore compreso tra $a+b$ e $a+b+10\rightarrow$ 11 scelte possibili
> 
> e quindi possiamo affermare che $S$ **identifica un prodotto condizionato di tipo** **(11, 11, 11)**

> [[EsercitazioneNumero01|Prima Esercitazione]]
 