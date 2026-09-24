---
tipo: [concetto]
tags: [matematica_discreta]
data_creazione: 2026-09-24
fonti_usate: ["[[MdP20260916.md]]", "[[lezioniNew.pdf]]"]
stato_studio: 🔴 Da Iniziare
difficolta: Media
ultimo_ripasso: 
tempo_stimato: 10 min
---

# Insiemi e Cardinalità

Nella teoria degli insiemi, la cardinalità rappresenta il "numero di elementi" di un insieme. La natura degli insiemi gioca un ruolo centrale nei futuri argomenti di calcolo combinatorio e di probabilità, costringendoci ad utilizzare due approcci matematici diversi in base al caso che trattiamo.

## Definizioni Fondamentali

- **Insieme Finito:** Un insieme che contiene un numero preciso di elementi (es. le vocali dell'alfabeto).
- **Insieme Numerabile:** Un insieme infinito, ma la cui cardinalità è esattamente pari a quella dei Numeri Naturali $\mathbb{N}$. Un insieme numerabile può essere messo "in fila", ovvero possiamo creare un elenco infinito in cui si stabilisce una corrispondenza biunivoca tra ogni elemento e un numero naturale (il 1°, il 2°, ecc.).
  - Esempi di insiemi numerabili: I Numeri Interi $\mathbb{Z}$, i Numeri Razionali Positivi $\mathbb{Q}_{>0}$.
- **Insieme Discreto:** Ai fini di questo corso, un insieme si dice **discreto** se è finito oppure numerabile.

## L'Infinito Non Numerabile e il Continuo
Esistono infiniti che sono più "grandi" di $\mathbb{N}$. Tali insiemi si dicono non numerabili e si definisce la loro cardinalità come **cardinalità del continuo** (pari a quella dei Numeri Reali $\mathbb{R}$). 

Un classico esempio di insieme continuo è l'insieme $B$ di tutte le **sequenze binarie infinite**. 

### Dimostrazione: L'Argomento Diagonale
Per dimostrare che l'insieme $B$ non è numerabile, dimostriamo per assurdo che esso non può essere "messo in fila".
Supponiamo di avere un elenco infinito di sequenze binarie:
$$\mathbf{b_1}, \mathbf{b_2}, \mathbf{b_3}, \dots$$

Costruiamo a questo punto una nuova sequenza binaria $\mathbf{b}$ che sfugge all'elenco:
1. Scegliamo per il primo bit di $\mathbf{b}$ un valore opposto al primo bit di $\mathbf{b_1}$.
2. Scegliamo per il secondo bit di $\mathbf{b}$ un valore opposto al secondo bit di $\mathbf{b_2}$.
3. In generale, scegliamo per l'$n$-esimo bit di $\mathbf{b}$ un valore opposto all'$n$-esimo bit della sequenza $\mathbf{b_n}$.

Questa nuova successione binaria $\mathbf{b}$ è innegabilmente diversa da ciascuna sequenza nell'elenco, poiché per ogni intero $n$, differisce dalla sequenza $\mathbf{b_n}$ nell'$n$-esimo bit. Dato che $\mathbf{b}$ non si trova nel nostro ipotetico elenco completo, concludiamo che nessuna "messa in fila" potrà mai contenere *tutte* le sequenze binarie. L'insieme non è perciò numerabile.

---

## 📝 Domande di Verifica

> [!question]- Qual è l'esatta definizione di Insieme Discreto per questo corso?
> **Risposta:**
> Un insieme si dice discreto se è finito oppure se è numerabile. Questa distinzione è vitale perché nella teoria delle probabilità determinerà il tipo di modello (discreto vs continuo) da applicare.

> [!question]- L'insieme di tutte le sequenze binarie infinite è numerabile? Spiega perché.
> **Risposta:**
> No, non è numerabile ma ha la cardinalità del **continuo**. Lo si dimostra costruendo una nuova sequenza $\mathbf{b}$ in cui l'$n$-esimo bit è diverso dall'$n$-esimo bit dell'$n$-esima sequenza del nostro elenco numerabile, garantendo che $\mathbf{b}$ non si trovi in quell'elenco e dimostrando quindi l'impossibilità di elencarli tutti.
