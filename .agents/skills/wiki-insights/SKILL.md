---
name: wiki_insights
description: Usa questa skill quando generi o l'utente ti chiede di creare e salvare nella wiki un approfondimento teorico, un esempio pratico/aziendale, o una metafora per chiarire un concetto di un argomento trattato dal corso.
---

# Wiki Insights Workflow

L'obiettivo di questa skill è formalizzare e salvare quegli esempi narrativi, casi aziendali, o approfondimenti che tu generi durante la chat per spiegare concetti complessi.
**Non usare questa skill per schede di esercizi matematici puri (usa wiki_exercises) né per riassumere PDF vergini (usa wiki_ingest).**

Ogni volta che generi un approfondimento/esempio e lo salvi, DEVI eseguire sequenzialmente:

1. **Generazione rigorosa:** Crea l'esempio pratico o l'approfondimento. Pur potendo usare uno scenario "inventato" (es. un'azienda), le formule e i passaggi descritti DEVONO rispettare pedissequamente il principio di Strict Sourcing (cioè aderire alle definizioni esatte usate nel corso).
2. **Template e YAML (Obbligatorio):** Il nuovo file DEVE essere salvato in `wiki/` (o sottocartella) e la primissima parte del documento DEVE SEMPRE essere il frontmatter YAML corretto. Consulta SEMPRE il file `examples/template_approfondimento.md` contenuto nella directory di questa skill per replicarne l'esatta impalcatura e i metadati.
3. **Cross-Reference:** All'interno del testo, usa sempre i link in formato `[[nome_pagina]]` per collegarti al concetto teorico originale che stai spiegando.
4. **Catalogo (Index):** Aggiorna `index.md`. Inserisci il link al nuovo approfondimento o esempio come elemento indentato esattamente sotto all'argomento "padre" nel Percorso di Studio.
5. **Logging:** Registra la creazione della pagina nel `log.md` (sotto la voce `### Added`).
