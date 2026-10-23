# Changelog

Tutte le modifiche di rilievo a questo progetto saranno documentate in questo file.
Il formato è basato su [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) e questo progetto aderisce a un Versionamento Semantico semplificato.

## [Unreleased]

## [0.12.0] - 2026-10-23

### Added
- Completato il workflow `ingest-audio.md` per la lezione del 16 Ottobre (`MdP20261016.m4a`): archiviazione della trascrizione Pixel in `raw/registrazioni/trascrizioni-pixel/MdP20261016.txt`, trascrizione Whisper a 24 thread in `raw/registrazioni/trascrizioni-whisper/MdP20261016.txt` e generazione della trascrizione unificata e corretta in `raw/registrazioni/trascrizioni-sistemate/MdP20261016.md`.
- Creata la nuova pagina wiki `wiki/Probabilita_Condizionale_e_Bayes.md` con indice `5.2` (probabilità condizionale, spazio di probabilità condizionato, Formula delle Probabilità Totali, invarianza della probabilità a priori nelle estrazioni senza rimpiazzo, Formula di Bayes, paradosso dei tre comodini e domande d'esame da `MDP Domande orale.pdf`).

### Changed
- Aggiornato `index.md` e `wiki/Indice_Teoremi_Definizioni.md` con i riferimenti a `Probabilita_Condizionale_e_Bayes.md` e `Partizioni_di_un_Insieme.md`.
- Arricchite le soluzioni di `wiki/Esercitazione_04_09-Ottobre.md` (Es. 4.8, 4.9, 4.10), `wiki/Esercitazione_05_16-Ottobre.md` (Es. 5.1) e i riferimenti incrociati in `wiki/Spazi_di_Probabilita.md` con le spiegazioni svolte in aula dal docente.

## [0.11.0] - 2026-10-19

### Added
- Create le flashcard AOSR `wiki/flashcards/03-Correlazione_e_Regressione.md` per la ripetizione spaziata di statistica bivariata, covarianza e regressione lineare.
- Create le flashcard AOSR `wiki/flashcards/04-Spazi_di_Probabilita.md` per la ripetizione spaziata sui concetti di probabilità, eventi, $\sigma$-algebree assiomi di Kolmogorov.

### Changed
- Sincronizzati gli avanzamenti nello svolgimento degli esercizi di calcolo combinatorio in `appunti_dani/EsercitazioneNumero01.md`.
- Aggiornata la configurazione dello spazio di lavoro di Obsidian (`.obsidian/workspace.json`).

## [0.10.0] - 2026-10-15

### Added
- Creata la pagina wiki `wiki/Correlazione_e_Regressione.md` con indice `4.2` (statistica bivariata, covarianza campionaria, coefficiente di correlazione di Pearson, retta ai minimi quadrati, quantili, medie geometrica e armonica, corredata dalle domande d'esame da `MDP Domande orale.pdf`).
- Creata la pagina wiki `wiki/Spazi_di_Probabilita.md` con indice `5.1` (fenomeni deterministici e aleatori, $\sigma$-algebra di eventi, assiomi di Kolmogorov, probabilità uniforme discreta ed esempi di calcolo su dadi e lotto).
- Integrato avviso strutturato di tracciamento fonti in `Spazi_di_Probabilita.md` per differenziare la 1ª ora del 14 Ottobre (ricostruita dalla dispensa `lezioniNew.pdf`) dalla 2ª ora (estratta dagli appunti/screenshot).
- Completato il workflow `ingest-audio.md` per la lezione del 9 Ottobre: archiviazione trascrizione Pixel in `trascrizioni-pixel/`, trascrizione audio Whisper a 24 thread in `trascrizioni-whisper/` e merge comparativo dual-source salvato in `raw/registrazioni/trascrizioni-sistemate/MdP20261009.md`.
- Spostati gli 8 screenshot della lezione del 14 Ottobre nella directory designata `raw/assets/`.

### Changed
- Aggiornato `index.md` con il collegamento a Correlazione e Regressione e inaugurando formalmente la Sezione 5 (Teoria della Probabilità).
- Aggiornato `wiki/Indice_Teoremi_Definizioni.md` censendo definizioni e teoremi delle lezioni del 9 e 14 Ottobre.
- Inclusi nel tracking del repository i file e le modifiche nella cartella `appunti_dani/` e le configurazioni dei plugin di Obsidian.


### Fixed
- Sostituito il placeholder generico `<url-del-repository>` nel README.md con il link esatto del repository Github del progetto.

## [0.9.1] - 2026-10-08

### Changed
- Ristrutturato e migliorato il file `README.md` aggiungendo badge descrittivi, requisiti chiari di installazione, guida all'utilizzo in Obsidian e istruzioni puntuali per la contribuzione, seguendo rigorosamente le linee guida del progetto.

## [0.9.0] - 2026-10-08

### Added
- Aggiunta la proprietà `indice` in tutti i frontmatter della wiki per ordinare progressivamente i documenti (1-based index).
- Creati tre file placeholder "invisibili" (utilizzando il carattere Braille Blank) per le colonne Kanban: Da Iniziare, In Corso, Completato.

### Changed
- Unificate le vecchie proprietà YAML `stato_studio` e `stato_esercitazione` in un'unica chiave `stato`.
- Inizializzati forzatamente tutti i documenti della wiki allo stato `🔴 Da Iniziare`.

## [0.8.0] - 2026-10-07

### Added
- Creata la nuova pagina wiki `Statistica_Descrittiva_di_Base.md` (completa di template Active Recall estratti da `MDP Domande orale.pdf`).
- Aggiornato `index.md` e `wiki/Indice_Teoremi_Definizioni.md` con i concetti di Statistica Descrittiva introdotti nella registrazione.

### Changed
- Aggiornato il workflow `ingest-audio.md` per supportare il merge di due fonti testuali (Whisper e Google Pixel).
- Aggiunta eccezione in `git-guide.md` per tracciare silenziosamente le modifiche in `appunti_dani/` salvaguardando il Pre-Flight Protocol.

## [0.7.0] - 2026-10-02

### Added
- Ingestita in automatico la registrazione rielaborata del 02 Ottobre.
- Creata la nuova pagina wiki `Partizioni_di_un_Insieme.md` (completa di template Active Recall estratti da `MDP Domande orale.pdf`).
- Creato il mazzo di flashcard AOSR per il ripasso spaziale (`01-Partizioni_di_un_Insieme.md`).

### Changed
- Aggiornato il file `wiki/Indice_Teoremi_Definizioni.md` includendo il concetto di Partizione di un Insieme e la relativa definizione.


## [0.6.0] - 2026-09-30

### Added
- Refactoring massivo completato tramite team di sub-agenti: applicato Color Coding e Callout a tutte le pagine di teoria della Wiki. Tutte le definizioni e teoremi sono stati centralizzati nell'Indice Matematico.
- Integrata in `.agents/rules/math-entities.md` la regola del "Color Coding Strutturale" per imporre l'uso logico e consistente di `\textcolor{}` nelle formule MathJax.
- Creata la nuova regola `.agents/rules/math-entities.md` per imporre l'uso dei callout di Obsidian su definizioni e teoremi.
- Creato il file `wiki/Indice_Teoremi_Definizioni.md` per centralizzare l'indicizzazione dei concetti matematici formali.
- Ingestita in automatico la registrazione rielaborata del 30 Settembre.
- Creata la nuova pagina wiki `Principio_di_Inclusione_Esclusione.md` (completa di template Active Recall estratti da `MDP Domande orale.pdf`).
- Ingestita in automatico la registrazione rielaborata del 25 Settembre.
- Creata la nuova pagina wiki `Combinazioni_con_Ripetizione_e_Fibonacci.md` (completa di template Active Recall estratti da `MDP Domande orale.pdf`).
- **Esercitazioni Settimanali**: Ingerito il file `EserciziMDPnew.pdf`. Creati 11 file Markdown distinti contenenti esercizi e soluzioni a scomparsa. Ogni file è stato formattato e rinominato in modo da tracciare la deadline del venerdì (dal 18 Settembre al 27 Novembre).
- Inserite in ogni file le checkbox interattive per monitorare lo svolgimento dei singoli esercizi e il meta-tag `stato_esercitazione: 🔴 Da Svolgere` all'interno del frontmatter YAML.

### Changed
- Aggiornata la skill `wiki-ingest` per includere il censimento obbligatorio dei nuovi concetti matematici all'interno dell'Indice Centrale.

### Changed
- Aggiornata la sezione "Calcolo Combinatorio" nel file `index.md` con i nuovi collegamenti.
- Aggiornata la regola `strict-sourcing.md`: autorizzata l'integrazione di dettagli omesse a voce ma presenti nella dispensa ufficiale (`lezioniNew.pdf`), a patto di confinarle in un callout di Obsidian dedicato agli approfondimenti e mantenendo l'Anti-Spoiler.
- Aggiornato lo Step 3 del workflow `ingest-audio.md`: introdotto l'obbligo di usare la dispensa come Ground Truth durante la revisione della trascrizione vocale.
- Aggiornata la skill `wiki-ingest`: per la generazione delle domande di "Active Recall" è ora obbligatorio interrogare il file `MDP Domande orale.pdf`, applicando un rigoroso vincolo anti-spoiler per non anticipare argomenti futuri.

## [0.5.0] - 2026-09-24

### Added
- Ingestite in automatico le registrazioni rielaborate del 18 e 23 Settembre.
- Create le nuove pagine wiki `Basi_del_Calcolo_Combinatorio.md` e `Disposizioni_e_Combinazioni.md` (complete di template Active Recall e metadati).
- Aggiornata la sezione "Calcolo Combinatorio" nel file `index.md`.

### Changed
- Affinato il prompt nello Step 3 del workflow `ingest-audio.md`: introdotto l'obbligo di un flusso narrativo pulito dai balbettii, ma con divieto assoluto di tagliare concetti o allucinare informazioni non dette a voce.
- Aggiunta la chiave `file_sorgente` nel blocco YAML generato dal workflow.
- Inserita una condizione di Fast-Path nello Step 1 del workflow `ingest-audio.md`: Whisper viene saltato in automatico se un file testuale con lo stesso nome è già presente.
- Spostato il file `index.md` dalla directory `wiki/` alla root del progetto per una maggiore accessibilità.

## [0.4.0] - 2026-09-24

### Added
- Ingestione della prima lezione (da registrazione locale tradotta via Whisper e combinata con dispense).
- Create pagine della wiki: `index.md`, `Regole_Esame.md`, `Insiemi_e_Cardinalità.md` secondo i template rigorosi della skill `wiki_ingest` e applicando logiche di Active Recall.

### Refactor
- Ristrutturata gerarchia della directory `raw/` secondo il workflow `ingest-audio.md` (create le directory annidate `raw/registrazioni/`, `raw/registrazioni/trascrizioni-whisper/` e `raw/registrazioni/trascrizioni-sistemate/`).
- Corretto un bug (typo) nel workflow `ingest-audio.md` che usava erroneamente un path nascosto (`.raw/`) al posto della directory standard del progetto (`raw/`).

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
