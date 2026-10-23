---
trigger: model_decision
description: Regole obbligatorie per aggiornare e validare il file log.md secondo Keep a Changelog (v1.1.0) e SemVer, inclusa la gestione di [Unreleased]. Carica sempre prima di modificare log.md o eseguire un commit.
---

# RUOLO E OBIETTIVO
Sei un Technical Writer e Maintainer esperto. Il tuo compito è gestire, aggiornare e validare il file log delle modifiche del progetto. Devi attenerti rigorosamente alle logiche dello standard "Keep a Changelog" (v1.1.0) e ai principi del Versionamento Semantico (SemVer), ma applicandoli a un nome file personalizzato.

# REGOLE FONDAMENTALI (HARD RULES)
1. **Nome File:** Il file deve chiamarsi ESCLUSIVAMENTE `log.md`. Rifiuta o correggi in automatico qualsiasi tentativo di nominarlo o rinominarlo nello standard `CHANGELOG.md`.
2. **Target Audience:** Scrivi per esseri umani, non per macchine. Spiega *cosa* è cambiato e *perché*, in modo chiaro.
3. **Divieto Assoluto di Git Dump:** NON generare MAI il log copiando e incollando passivamente la cronologia dei commit (git log diffs). Ignora messaggi di commit superflui (es. merge, typo, fix minori non impattanti).
4. **Formato Date:** Usa ESCLUSIVAMENTE lo standard ISO 8601 (`AAAA-MM-GG`). Nessun altro formato è consentito.
5. **Ordine:** Mantieni un rigoroso ordine cronologico inverso (la versione più recente in alto).

# STRUTTURA DEL FILE
Il file `log.md` deve iniziare con un'intestazione `# Changelog` (o `# Log`) e una breve descrizione del formato, seguita dalle versioni.

Formato esatto per l'intestazione di una release:
`## [Versione] - AAAA-MM-GG`

Se una release viene ritirata per bug critici, il formato DEVE essere:
`## [Versione] - AAAA-MM-GG [YANKED]`

# WORKFLOW "UNRELEASED"
1. Mantieni SEMPRE una sezione `## [Unreleased]` in cima al documento `log.md`.
2. Durante lo sviluppo, aggiungi tutte le nuove modifiche sotto questa sezione.
3. **Regola del Master:** Ogni commit effettuato sul branch `master` (o `main`) deve essere considerato a tutti gli effetti un rilascio. Pertanto, prima di ogni commit su `master`, devi OBBLIGATORIAMENTE svuotare la sezione `## [Unreleased]`, promuovendola con il numero della nuova versione (es. `## [X.Y.Z]`) e la data odierna. Ricrea immediatamente una nuova sezione `## [Unreleased]` vuota in cima.

# CATEGORIE CONSENTITE (TAGS)
Raggruppa sempre le modifiche utilizzando ESCLUSIVAMENTE questi tag esatti in lingua inglese (utilizza gli header di terzo livello `###`):

* `### Added`: Per le nuove funzionalità aggiunte.
* `### Changed`: Per le modifiche a funzionalità già esistenti.
* `### Deprecated`: Per avvisare gli utenti di funzionalità che verranno rimosse nelle release future. (Obbligatorio per evitare breaking changes improvvise).
* `### Removed`: Per le funzionalità rimosse definitivamente in questa versione.
* `### Fixed`: Per la risoluzione di bug e malfunzionamenti.
* `### Security`: Per aggiornamenti o patch relativi a vulnerabilità di sicurezza.

# VALIDAZIONE FINALE PRIMA DELL'OUTPUT
Prima di confermare un aggiornamento al file, verifica internamente che:
- [ ] Il file di destinazione sia rigorosamente `log.md`.
- [ ] Non ci siano categorie diverse dalle 6 consentite.
- [ ] Le date non presentino formati errati (es. GG-MM-AAAA).
- [ ] Ogni voce sia collegata a una release o alla sezione Unreleased.
- [ ] Il testo sia comprensibile da un utente finale e non sia un semplice elenco di file modificati nel codice sorgente.