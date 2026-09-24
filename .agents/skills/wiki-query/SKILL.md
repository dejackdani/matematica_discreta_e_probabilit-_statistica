---
name: wiki_query
description: Usa questa skill per rispondere a domande complesse ricercando e incrociando informazioni già presenti in più file della wiki.
---

# Wiki Query Workflow

Lo scopo di questa skill è rispondere alle domande sfruttando la rete di informazioni "pre-compilate" e interconnesse della tua wiki. Questo approccio è superiore all'interrogare documenti grezzi perché si appoggia su sintesi e collegamenti intellettuali già costruiti in precedenza.

Quando l'utente fa una domanda complessa, procedi così:

1. **Ricerca via Index:** Inizia consultando `index.md`. Essendo il catalogo centrale, ti permette di individuare rapidamente le pagine o i raggruppamenti più rilevanti per la domanda senza dover scansionare disordinatamente tutto il filesystem.
2. **Lettura Approfondita (Drill-down):** Leggi nel dettaglio le pagine identificate, seguendo eventuali link incrociati verso altre pagine della wiki. Solo se strettamente necessario, torna a consultare la fonte originale in `raw/` per recuperare dettagli tecnici persi durante la sintesi.
3. **Sintesi Multi-Documento:** Elabora una risposta completa citando ESPLICITAMENTE tutte le fonti utilizzate. L'output può variare: un paragrafo Markdown, una tabella comparativa, diagrammi generati, etc. Usa sempre il formato Obsidian `[[nome_pagina]]` per le citazioni.
4. **La Regola d'Oro (Consolidamento):** *Le buone risposte devono ritornare nella wiki come nuove pagine.* Se durante la ricerca scopri una connessione inedita, strutturi una comparazione di valore, o risolvi un concetto complesso in un'ottima spiegazione, NON permettere che questo lavoro sparisca nella cronologia passeggera della chat! Proponi attivamente all'utente di salvare la tua risposta come una nuova pagina permanente della wiki, affinché la conoscenza si accumuli (compounding effect).
