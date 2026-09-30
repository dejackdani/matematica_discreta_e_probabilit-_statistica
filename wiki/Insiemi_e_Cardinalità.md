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

> [!summary] Definizione: Insieme Finito
> Un insieme che contiene un numero preciso di elementi (es. le vocali dell'alfabeto).

> [!summary] Definizione: Insieme Numerabile
> Un insieme infinito, ma la cui cardinalità è esattamente pari a quella dei Numeri Naturali $\mathbb{N}$. Un insieme numerabile può essere messo "in fila", ovvero possiamo creare un elenco infinito in cui si stabilisce una corrispondenza biunivoca tra ogni elemento e un numero naturale (il 1°, il 2°, ecc.).
> - Esempi di insiemi numerabili: I Numeri Interi $\mathbb{Z}$, i Numeri Razionali Positivi $\mathbb{Q}_{>0}$.

> [!summary] Definizione: Insieme Discreto
> Ai fini di questo corso, un insieme si dice **discreto** se è finito oppure numerabile.

## L'Infinito Non Numerabile e il Continuo
Esistono infiniti che sono più "grandi" di $\mathbb{N}$. Tali insiemi si dicono non numerabili e si definisce la loro cardinalità come **cardinalità del continuo** (pari a quella dei Numeri Reali $\mathbb{R}$). 

Un classico esempio di insieme continuo è l'insieme $\textcolor{purple}{B}$ di tutte le **sequenze binarie infinite**. 

### Dimostrazione: L'Argomento Diagonale

> [!info] Proposizione: L'insieme delle sequenze binarie non è numerabile
> L'insieme $\textcolor{purple}{B}$ di tutte le sequenze binarie infinite non è numerabile e ha la cardinalità del continuo.

> [!quote] Dimostrazione
> Per dimostrare che l'insieme $\textcolor{purple}{B}$ non è numerabile, dimostriamo per assurdo che esso non può essere "messo in fila".
> Supponiamo di avere un elenco infinito di sequenze binarie:
> $$\textcolor{teal}{\mathbf{b}}_1, \textcolor{teal}{\mathbf{b}}_2, \textcolor{teal}{\mathbf{b}}_3, \dots$$
> 
> Costruiamo a questo punto una nuova sequenza binaria $\textcolor{teal}{\mathbf{b}}$ che sfugge all'elenco:
> 1. Scegliamo per il primo bit di $\textcolor{teal}{\mathbf{b}}$ un valore opposto al primo bit di $\textcolor{teal}{\mathbf{b}}_1$.
> 2. Scegliamo per il secondo bit di $\textcolor{teal}{\mathbf{b}}$ un valore opposto al secondo bit di $\textcolor{teal}{\mathbf{b}}_2$.
> 3. In generale, scegliamo per l'$\textcolor{blue}{n}$-esimo bit di $\textcolor{teal}{\mathbf{b}}$ un valore opposto all'$\textcolor{blue}{n}$-esimo bit della sequenza $\textcolor{teal}{\mathbf{b}}_{\textcolor{blue}{n}}$.
> 
> Questa nuova successione binaria $\textcolor{teal}{\mathbf{b}}$ è innegabilmente diversa da ciascuna sequenza nell'elenco, poiché per ogni intero $\textcolor{blue}{n}$, differisce dalla sequenza $\textcolor{teal}{\mathbf{b}}_{\textcolor{blue}{n}}$ nell'$\textcolor{blue}{n}$-esimo bit. Dato che $\textcolor{teal}{\mathbf{b}}$ non si trova nel nostro ipotetico elenco completo, concludiamo che nessuna "messa in fila" potrà mai contenere *tutte* le sequenze binarie. L'insieme non è perciò numerabile.

---

## 📝 Domande di Verifica

> [!question]- Qual è l'esatta definizione di Insieme Discreto per questo corso?
> **Risposta:**
> Un insieme si dice discreto se è finito oppure se è numerabile. Questa distinzione è vitale perché nella teoria delle probabilità determinerà il tipo di modello (discreto vs continuo) da applicare.

> [!question]- L'insieme di tutte le sequenze binarie infinite è numerabile? Spiega perché.
> **Risposta:**
> No, non è numerabile ma ha la cardinalità del **continuo**. Lo si dimostra costruendo una nuova sequenza $\textcolor{teal}{\mathbf{b}}$ in cui l'$\textcolor{blue}{n}$-esimo bit è diverso dall'$\textcolor{blue}{n}$-esimo bit dell'$\textcolor{blue}{n}$-esima sequenza del nostro elenco numerabile, garantendo che $\textcolor{teal}{\mathbf{b}}$ non si trovi in quell'elenco e dimostrando quindi l'impossibilità di elencarli tutti.
