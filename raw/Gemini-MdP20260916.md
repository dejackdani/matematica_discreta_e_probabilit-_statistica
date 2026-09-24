---
titolo: "Introduzione al corso, Insiemi, Cardinalità e Argomento Diagonale"
data_lezione: "2026-09-16"
---

# Matematica Discreta e Probabilità Statistica - Lezione 1

## Informazioni Generali sul Corso
**Professore:** Benvenuti. La mia passione è la matematica discreta e spero di trasmettere questo interesse anche a voi. Il corso alternerà teoria ed esercizi pratici e la statistica finale vi stupirà.

**Regole d'Esame:** 
- L'esame si compone di due prove: Scritto e Orale.
- **Scritto:** Domande a risposta multipla, vero/falso e a risposta aperta. Niente calcolatrice (i calcoli sono semplificati).
- **Orale:** Si fa se e solo se si passa lo scritto. 
- *Bonus:* Fino a un punto extra per chi contribuisce a scrivere/trascrivere le soluzioni degli appelli pregressi in LaTeX da pubblicare.

## Matematica Discreta: Gli Insiemi
**Professore:** Partiamo con la definizione base di **insieme**. Cos'è? Semplicemente un raggruppamento di elementi. Due insiemi sono uguali se e solo se contengono esattamente gli stessi elementi. 
*(Nota: la ripetizione o l'ordine degli elementi in un insieme scritto tra parentesi graffe non conta, es. `{1, 2, 2} = {1, 2}`).*

- **Cardinalità ($|A|$):** È il numero di elementi contenuti in un insieme.

### Funzioni
Una funzione da un Dominio a un Codominio è una mappa che associa a ogni elemento del Dominio *uno e un solo* elemento del Codominio.
- **Suriettiva:** Copre tutto il codominio.
- **Iniettiva:** A elementi di partenza distinti corrispondono elementi di arrivo distinti.
- **Biiettiva (Corrispondenza biunivoca):** È sia iniettiva che suriettiva. Se riusciamo a instaurare una funzione biunivoca tra due insiemi, significa che essi hanno la stessa cardinalità.

## Insiemi Infiniti e Cardinalità Numerabile
**Professore:** Passiamo agli insiemi infiniti. Come facciamo a sapere se un infinito è "più grande" di un altro?
Un insieme si dice **numerabile** se ha la stessa cardinalità dei numeri naturali $ \mathbb{N} = \{1, 2, 3, \dots\} $.

### Insiemi sorprendentemente numerabili:
1. I numeri pari.
2. I numeri interi relativi $ \mathbb{Z} $.
3. **I numeri razionali positivi $ \mathbb{Q}^+ $:** Anche se tra due frazioni ci sono infinite frazioni, la loro cardinalità è identica a quella dei numeri naturali. Si possono "mettere in fila" senza saltarne nessuno.

### Numeri Reali e l'Argomento Diagonale di Cantor
**Professore:** L'insieme dei numeri reali compresi tra 0 e 1, invece, è numerabile? Riusciamo a metterli in una lista infinita?
La risposta è NO. Non è numerabile, possiede la cardinalità del **Continuo**.

**Dimostrazione per assurdo (Cantor):**
Supponiamo di poter elencare tutti i numeri reali (come stringhe di bit infinite o decimali) in una lista:
$$
r_1 = 0.b_{11} b_{12} b_{13} \dots \\
r_2 = 0.b_{21} b_{22} b_{23} \dots \\
r_3 = 0.b_{31} b_{32} b_{33} \dots
$$
Costruiamo un nuovo numero $ x $ prendendo la diagonale della lista e invertendone le cifre (es. se la cifra è 0 mettiamo 1, se è 1 mettiamo 0).
Il nuovo numero $ x $ differirà da $ r_1 $ per la prima cifra, da $ r_2 $ per la seconda cifra, da $ r_n $ per l'n-esima cifra. 
Quindi $ x $ non appartiene a nessuna riga della nostra lista. Abbiamo trovato un numero "scappato" dalla lista, ma avevamo ipotizzato che la lista li contenesse tutti! Assurdo. I reali non sono numerabili.

## Introduzione alla Probabilità
**Professore:** Per chiudere l'overview, parleremo di Probabilità. 
Risponderemo a domande come: *"Qual è la probabilità che, lanciando 100 volte una moneta non truccata, escano esattamente 55 teste e 45 croci?"*
Faremo anche **Statistica Inferenziale**, in cui, estratto un campione (es. intervisto 1000 persone per elezioni), dovrò inferire le proprietà di tutta la popolazione italiana.
