# Flashcard: 04 - Spazi di Probabilità e Probabilità Uniforme
*Fonte: [[Spazi_di_Probabilita]]*

#Q
Qual è la differenza fondamentale tra un **Fenomeno Deterministico** e un **Fenomeno Aleatorio**?
?
- **Deterministico:** il risultato può essere previsto con certezza prima dell'effettuazione (es. moto dei gravi).
- **Aleatorio (casuale):** il risultato non è prevedibile con certezza assoluta (es. lancio di un dado, tempo di vita di un dispositivo).

#Q
Che cos'è lo **Spazio Campionario** $\Omega$ e che cos'è un **Evento**?
?
- **Spazio Campionario ($\Omega$):** l'insieme di tutti i possibili esiti elementari di un fenomeno aleatorio.
- **Evento ($E$):** formalmente un sottoinsieme di $\Omega$ ($E \subseteq \Omega$) al quale è possibile assegnare una probabilità.

#Q
Quali sono le tre proprietà che definiscono una **Famiglia Coerente di Eventi ($\sigma$-algebra)** $\mathcal{A}$?
?
1. $\emptyset \in \mathcal{A}$ e $\Omega \in \mathcal{A}$;
2. Se $E \in \mathcal{A} \implies E^c \in \mathcal{A}$ (chiusura rispetto al complementare);
3. Se $E_1, E_2, \dots \in \mathcal{A} \implies \bigcup_{i=1}^\infty E_i \in \mathcal{A}$ e $\bigcap_{i=1}^\infty E_i \in \mathcal{A}$ (chiusura rispetto a unioni e intersezioni numerabili).

#Q
Quali sono gli **Assiomi di Kolmogorov** per una valutazione di probabilità $P: \mathcal{A} \to \mathbb{R}_{\ge 0}$?
?
1. **Normalizzazione:**
   $$P(\Omega) = 1$$
2. **$\sigma$-additività:** per ogni successione di eventi disgiunti a due a due ($A_i \cap A_j = \emptyset$ per $i \ne j$):
   $$P\left(\bigcup_{i=1}^\infty A_i\right) = \sum_{i=1}^\infty P(A_i)$$

#Q
Come si calcola la probabilità del complementare e dell'unione di due eventi qualsiasi?
?
- **Complementare:** $P(A^c) = 1 - P(A)$ (con $P(\emptyset) = 0$).
- **Unione generale:** $P(A \cup B) = P(A) + P(B) - P(A \cap B)$.

#Q
Come si definisce uno **Spazio di Probabilità Uniforme Finito** e qual è la formula per il calcolo della probabilità?
?
È uno spazio in cui $\Omega$ è finito e tutti gli esiti elementari hanno la stessa probabilità.
Per ogni evento $E \subseteq \Omega$:
$$P(E) = \frac{|E|}{|\Omega|} = \frac{\text{casi favorevoli}}{\text{casi possibili}}$$

#Q
Perché **non può esistere** uno spazio di probabilità uniforme discreto su un insieme infinito numerabile (come $\Omega = \mathbb{N}$)?
?
Se per ogni esito valesse $P(\{n\}) = p$, per la $\sigma$-additività avremmo:
$$P(\Omega) = \sum_{n=1}^\infty p$$
- Se $p = 0 \implies P(\Omega) = 0 \ne 1$;
- Se $p > 0 \implies P(\Omega) = +\infty \ne 1$.
In entrambi i casi si contraddice l'assioma $P(\Omega) = 1$.

#Q
Nel gioco del lotto (estrazione di 5 numeri da 1 a 90), qual è la cardinalità dello spazio campionario $\Omega$ e come si calcola la **probabilità di fare Terno** su 3 numeri giocati?
?
- Cardinalità dello spazio: $|\Omega| = \binom{90}{5} = 43.949.268$.
- Casi favorevoli: si fissano i 3 numeri e si scelgono i restanti 2 tra gli 87 rimasti $\implies |E| = \binom{87}{2} = 3.741$.
- Probabilità:
$$P(E) = \frac{\binom{87}{2}}{\binom{90}{5}} = \frac{3.741}{43.949.268} = \frac{1}{11.748}$$

#Q
Nel lotto, qual è la **probabilità di estrarre un singolo numero prefissato** (es. il 23) e come si può calcolare rapidamente?
?
Si può calcolare decomponendo l'evento nell'unione di 5 eventi disgiunti ed equiprobabili $E_i = \text{"il numero esce all'estrazione } i\text{-esima"}$:
$$P(E) = \sum_{i=1}^5 P(E_i) = 5 \cdot \frac{1}{90} = \frac{1}{18}$$
Oppure tramite combinazioni:
$$P(E) = \frac{\binom{89}{4}}{\binom{90}{5}} = \frac{1}{18}$$
