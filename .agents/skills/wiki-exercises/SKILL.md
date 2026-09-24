---
name: wiki_exercises
description: Usa questa skill quando l'utente ti chiede di generare, inventare o preparare una scheda di esercizi, problemi o quiz pratici basati sugli argomenti del corso.
---

# Wiki Exercises Workflow

L'obiettivo di questa skill è generare materiale pratico (esercizi, problemi) e integrarlo organicamente all'interno della knowledge base.
**ATTENZIONE:** La generazione degli esercizi avviene ESCLUSIVAMENTE su esplicita richiesta dell'utente. Non attivare mai questa skill di tua autonoma iniziativa.

Ogni volta che l'utente ti chiede in modo esplicito di preparare degli esercizi, esegui sequenzialmente:

1. **Generazione Esercizi e Soluzioni:** Crea gli esercizi richiesti basandoti ESCLUSIVAMENTE sui file teorici e sulle regole del corso. Includi sempre una sezione dedicata alle soluzioni passo-passo.
2. **Salvataggio nella Wiki:** Il nuovo file generato DEVE essere salvato all'interno della directory `wiki/` (o una sua sottocartella se pertinente) e MAI nella root del progetto.
3. **Frontmatter e Schema (Obbligatorio):** Inserisci sempre in cima al file il blocco YAML corretto (es. `tipo: [esercizi]`, `tags`, `data_creazione`, `fonti_usate`), seguendo scrupolosamente le direttive strutturali e di linkaggio previste dal file `SCHEMA.md`.
4. **Cross-Reference:** Usa i collegamenti interni `[[nome_pagina]]` per linkare i concetti e le formule utilizzati nelle soluzioni.
5. **Catalogo (Index):** Aggiorna proattivamente `index.md`. 
   - **Per esercizi specifici:** Inserisci il link alla scheda come checkbox indentato (es.   - [ ] [[nome_scheda]]) collocandolo esattamente sotto all'argomento teorico "genitore" a cui si riferisce.
   - **Per schede di ripasso generale (cumulativo):** NON indentarle sotto un singolo argomento. Inseriscile alla fine della macro-sezione completata, formattandole come un "Checkpoint" visivamente distinto per mantenere l'ordine incrementale. Usa questa formattazione esatta: 
     `- [ ] **🔄 Checkpoint di Ripasso:** [[Nome_Scheda]]`
6. **Logging Cronologico:** Aggiungi una voce in `log.md` (es. `### Added`) per tracciare la creazione del nuovo materiale.
7. **Layout per Risoluzioni Grafiche (Assi Cartesiani):** Se l'argomento dell'esercizio (es. Simplesso 2D, Geometria dei Poliedri) prevede tipicamente il disegno di vincoli o vertici, DEVI predisporre subito dopo il testo dell'esercizio una "Griglia Cartesiana" vuota in formato testo (o markdown) e adeguato spazio bianco, per facilitare il tracciamento a mano dopo la stampa.
8. **Impaginazione per la Stampa (Page-Break):** Avvolgi SEMPRE la traccia e la soluzione di ogni singolo esercizio (sia nel blocco delle tracce che in quello delle soluzioni) all'interno del tag HTML `<div style="page-break-inside: avoid;"> ... </div>`. Questo garantisce che in fase di esportazione/stampa su PDF il singolo esercizio non venga mai spezzato a cavallo di due fogli. Inoltre, usa `<div style="page-break-before: always;"></div>` prima di iniziare la sezione delle Soluzioni.
9. **Aderenza Assoluta alle Convenzioni Didattiche (Strict Sourcing Esteso):** Quando generi esercizi, schede o problemi, non limitarti a produrre istanze matematicamente o teoricamente corrette. Devi ricalcare in modo millimetrico le convenzioni strutturali, la nomenclatura e i "pattern" standard utilizzati dal professore nei materiali di riferimento. Ad esempio, se nelle slide il professore assume implicitamente una forma canonica di partenza per spiegare un concetto (es. i problemi Primali per la dualità sono sempre impostati come "Minimo"), DEVI obbligatoriamente utilizzare quello stesso punto di partenza. Non inserire "varianti didattiche" o eccezioni strutturali che si discostano dalla tipologia base mostrata a lezione, per non confondere lo studente e non fargli applicare le formule nel verso sbagliato.
