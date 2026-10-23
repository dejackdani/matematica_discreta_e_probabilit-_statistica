---
name: wiki_exercises
description: Usa questa skill quando l'utente ti chiede di generare, inventare o preparare una scheda di esercizi, problemi o quiz pratici basati sugli argomenti del corso.
---

# Wiki Exercises Workflow

L'obiettivo di questa skill è generare materiale pratico (esercizi, problemi) e integrarlo organicamente all'interno della knowledge base.
**ATTENZIONE:** La generazione degli esercizi avviene ESCLUSIVAMENTE su esplicita richiesta dell'utente. Non attivare mai questa skill di tua autonoma iniziativa.

Ogni volta che l'utente ti chiede in modo esplicito di preparare degli esercizi, esegui sequenzialmente:

1. **Generazione Esercizi e Soluzioni:** Crea gli esercizi richiesti basandoti ESCLUSIVAMENTE sui file teorici e sulle regole del corso (`raw/EserciziMDPnew.pdf`, `raw/lezioniNew.pdf` e le pagine in `wiki/`). Includi sempre le soluzioni passo-passo racchiuse in un callout a scomparsa `> [!info]- Soluzione`.
2. **Salvataggio nella Wiki:** Il nuovo file generato DEVE essere salvato all'interno della directory `wiki/` (o una sua sottocartella se pertinente) e MAI nella root del progetto.
3. **Frontmatter e Template (Obbligatorio):** Inserisci sempre in cima al file il blocco YAML corretto (`indice`, `title`, `tipo: [esercizi]`, `file_sorgente`), consultando e replicando la struttura di [template_esercizi.md](./examples/template_esercizi.md) e le convenzioni di `llmwiki.md`.
4. **Cross-Reference:** Usa i collegamenti interni `[[nome_pagina]]` per linkare i concetti, i teoremi e le formule utilizzati nelle soluzioni.
5. **Catalogo (Index):** Aggiorna proattivamente `index.md`:
   - **Per esercitazioni ufficiali del corso:** Inseriscile nella sezione `## 6. Esercitazioni (EserciziMDPnew)`.
   - **Per esercizi specifici su un singolo tema:** Inserisci il link alla scheda come checkbox indentato (es. `  - [ ] [[nome_scheda]]`) collocandolo esattamente sotto all'argomento teorico "genitore" a cui si riferisce.
   - **Per schede di ripasso generale (cumulativo):** Inseriscile alla fine della macro-sezione completata, formattandole come un "Checkpoint" visivamente distinto:
     `- [ ] **🔄 Checkpoint di Ripasso:** [[Nome_Scheda]]`
6. **Logging Cronologico:** Aggiungi una voce in `log.md` (sotto `## [Unreleased]` / `### Added`) per tracciare la creazione del nuovo materiale.
7. **Schemi Visivi e Tabelle (Opzionale):** Se l'argomento dell'esercizio (es. alberi di conteggio combinatorio, diagrammi di Venn per Inclusione-Esclusione, tabelle di densità congiunta $d_{X,Y}(x,y)$ o grafici di funzioni di ripartizione $F_X(t)$) lo richiede, predisponi tabelle Markdown pulite o schemi testuali chiari per guidare lo svolgimento.
8. **Impaginazione per la Stampa (Page-Break):** Quando generi schede pensate per essere stampate, puoi avvolgere la traccia e la soluzione di ogni singolo esercizio all'interno del tag HTML `<div style="page-break-inside: avoid;"> ... </div>` affinché in fase di esportazione/stampa su PDF il singolo esercizio non venga spezzato a cavallo di due fogli.
9. **Aderenza Assoluta alle Convenzioni Didattiche (Strict Sourcing Esteso):** Quando generi esercizi, schede o problemi, non limitarti a produrre istanze matematicamente corrette. Devi ricalcare in modo millimetrico le convenzioni strutturali, la nomenclatura e i "pattern" standard utilizzati dal professore nei materiali di riferimento (`raw/lezioniNew.pdf` e `raw/EserciziMDPnew.pdf` — ad esempio usando $H(n; b, r)$ per la legge ipergeometrica, $d_X$ per la densità discreta, $\zeta_0$ per la normale standard). Non inserire "varianti didattiche" o notazioni esterne che si discostano dalla tipologia mostrata a lezione.
