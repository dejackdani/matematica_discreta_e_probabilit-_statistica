---
tipo: concetto
tags: [matematica_discreta, combinatoria, partizioni]
data_creazione: 2026-10-02
fonti_usate: ["[[MdP20261002.md]]", "[[lezioniNew.pdf]]"]
stato_studio: 🔴 Da Iniziare
difficolta: Bassa
ultimo_ripasso: 
tempo_stimato: 15 min
---

# Partizioni di un Insieme

Una **partizione** di un insieme $A$ è una suddivisione dell'insieme in sottoinsiemi (chiamati **blocchi**) che sono a due a due disgiunti e la cui unione restituisce l'insieme $A$ originario.

## Dettagli Teorici

Dal punto di vista formale, una partizione dell'insieme $A$ è una collezione di sottoinsiemi $A_1, A_2, \dots$ (che può essere sia finita che infinita) tali che:

1. **Disgiunti a due a due**: Non devono esserci elementi in comune tra due blocchi distinti. Formalmente: l'intersezione $A_i \cap A_j = \emptyset$ per ogni $i \neq j$.
2. **Copertura totale**: L'unione di tutti questi sottoinsiemi deve restituire esattamente l'intero insieme di partenza $A$. Formalmente: $\bigcup_{i} A_i = A$.
3. **Non vuoti**: I sottoinsiemi non possono essere vuoti. Formalmente: $A_i \neq \emptyset$.

### Nomenclatura Importante
- I sottoinsiemi $A_i$ prendono il nome di **blocchi**. 
- È un errore grave in sede d'esame confondere i "blocchi" chiamandoli "partizioni". La *partizione* è l'intera collezione (la suddivisione nel suo complesso), mentre i *blocchi* ne sono semplicemente gli elementi costituenti.
- L'ordine con cui si elencano i blocchi è irrilevante.

### Esempi Pratici

**Insiemi finiti:**
Dato l'insieme $A = \{1, 2, 3\}$, le partizioni possibili sono 5. Esiste sempre la partizione con un unico blocco e la partizione con singoli elementi:
- $\{1, 2, 3\}$ (un unico blocco)
- $\{1\}, \{2\}, \{3\}$ (ogni elemento forma un blocco)

In aggiunta a queste, troviamo le partizioni non banali:
- $\{1, 2\}, \{3\}$
- $\{1, 3\}, \{2\}$
- $\{2, 3\}, \{1\}$

**Insiemi infiniti:**
Dato l'insieme dei numeri interi $\mathbb{Z}$, ci sono svariati modi per partizionarlo:
- **Partizione in due blocchi (finiti ma di dimensione infinita):** Numeri Pari e Numeri Dispari.
- **Partizione in infiniti blocchi (ciascuno finito):** segmenti di $100$ numeri contigui (es. $\dots, [-99, 0], [1, 100], [101, 200], \dots$).
- **Partizione in infiniti blocchi (ciascuno infinito):** raggruppamento in base alle potenze di un singolo numero primo. Ad esempio un blocco per le potenze di $2$, uno per le potenze di $3$, e un blocco residuale per i numeri che non sono potenze di alcun numero primo.

---

## 📝 Domande di Verifica

> [!question]- Cos'è una partizione? (Domanda d'esame frequente)
> **Risposta:**
> Una partizione di un insieme $A$ è una collezione di suoi sottoinsiemi, chiamati **blocchi**, che soddisfano tre proprietà fondamentali:
> 1. Sono a due a due disgiunti ($A_i \cap A_j = \emptyset$ per $i \neq j$).
> 2. La loro unione ricopre tutto l'insieme di partenza ($\bigcup A_i = A$).
> 3. Nessun blocco è vuoto ($A_i \neq \emptyset$).

