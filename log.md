# Changelog

Tutte le modifiche di rilievo a questo progetto saranno documentate in questo file.
Il formato è basato su [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) e questo progetto aderisce a un Versionamento Semantico semplificato.

## [Unreleased]

## [0.3.0] - 2026-09-24

### Added
- Regola aggiunta in `AGENTS.md` per l'uso esclusivo dei delimitatori MathJax (`$` e `$$`) per le formule su Obsidian.
- Aggiunto step di verifica incrociata con `lezioniNew.pdf` nel workflow `/ingest-audio` per garantire Ground Truth sui termini.

### Fixed
- Sostituiti vecchi delimitatori LaTeX (`\(` e `\[`) nel file `Gemini-MdP20260916.md`.

## [0.2.0] - 2026-09-24

### Added
- Workflow `/ingest-audio` per l'automazione della trascrizione audio (tramite Whisper locale) e l'ingestione ottimizzata nella wiki.

## [0.1.0] - 2026-09-24

### Added
- Inizializzazione della struttura dell'ambiente di studio (cartelle `wiki/`, `raw/assets/`).
- Creazione del file `README.md` con le specifiche di base del corso.
- Creazione del file `log.md` per tracciare la cronologia delle sessioni di studio.
- Inizializzazione del repository Git.
