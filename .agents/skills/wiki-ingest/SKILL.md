---
name: wiki_ingest
description: Usa questa skill per estrarre informazioni da una nuova fonte grezza (PDF, appunti) e inserirle organicamente nella wiki.
---

# Wiki Ingest Workflow

L'obiettivo di questa skill non è solo l'estrazione meccanica di dati, ma la costruzione incrementale e intelligente di un "Memex" o knowledge base personale. Al contrario di un semplice sistema RAG che recupera frammenti ri-scoprendoli ogni volta, l'ingestione serve a compilare la conoscenza una volta sola e mantenerla interconnessa.

Quando l'utente ti chiede di processare o inserire una nuova fonte (generalmente residente in `raw/`), esegui sequenzialmente queste operazioni:

1. **Lettura Attenta:** Leggi la fonte. Ricorda che i file raw sono immutabili e rappresentano la "source of truth".
2. **Discussione e Sintesi:** Se necessario, discuti i punti chiave con l'utente. Crea una nuova pagina di riassunto in `wiki/`.
3. **Aggiornamento Globale:** Non limitarti a creare una nuova pagina isolata! Aggiorna le entity pages e i concetti esistenti. Annota dove i nuovi dati contraddicono quelli vecchi, e rafforza o sfida la sintesi generale in evoluzione. Una singola fonte importante potrebbe richiedere di aggiornare anche 10-15 file.
4. **Frontmatter:** Inserisci il blocco YAML corretto con tag, data e `fonti_usate`. Usa le proprietà avanzate per Dataview, se il workspace le prevede (es. `stato_studio`). Ricorda la regola dello **Strict Sourcing**.
5. **Cross-Reference Massiva:** La forza della wiki sono i collegamenti. Inserisci ovunque pertinente link interni `[[nome_pagina]]` verso concetti esistenti affinché la graph view di Obsidian possa mostrare un ecosistema denso.
6. **Catalogo (Index):** Aggiorna `index.md`, che è orientato ai contenuti. Inserisci il link alla nuova pagina, un riassunto di una riga ed eventuali metadati, inserendolo nella categoria esatta.
7. **Logging Cronologico:** Aggiungi una voce in `log.md`. Il log è una timeline "append-only". Segui le regole semantiche (`### Added` o `### Changed`) per tracciare con precisione l'evoluzione cronologica del sistema.

## Template e Formattazione Obbligatoria (Active Recall)
Ogni nuova pagina concettuale generata DEVE includere, alla fine del documento, una sezione dedicata al ripasso veloce per l'esame:

*   **Intestazione:** Crea una sezione `## 📝 Domande di Verifica`.
*   **Contenuto:** Estrapola o formula le 2 o 3 domande più frequenti, importanti o "a trabocchetto" relative all'argomento trattato.
*   **Formato Callout:** Usa SEMPRE i callout a scomparsa di Obsidian (`> [!question]-`) per permettere allo studente di nascondere la risposta e testarsi (Active Recall).
*   **Template di Riferimento:** Prima di creare una nuova pagina, consulta SEMPRE il file `examples/template_pagina_wiki.md` contenuto nella directory di questa skill per replicarne l'esatta impalcatura e i metadati.
