# Matematica Discreta e Probabilità Statistica

![Stato](https://img.shields.io/badge/Stato-In%20Corso-brightgreen)
![Piattaforma](https://img.shields.io/badge/Piattaforma-Obsidian-blue)
![Formato](https://img.shields.io/badge/Formato-Markdown-informational)

Questo progetto funge da wiki centrale, repository di appunti strutturati e sistema di generazione di flashcard basate su Active Recall (AOSR) per il corso universitario di **Matematica Discreta e Probabilità Statistica**. L'obiettivo principale è strutturare l'intero materiale didattico (lezioni, dispense ed esercizi) in un formato digitale facilmente interrogabile, navigabile tramite *graph view* e ottimizzato per la memorizzazione a lungo termine.

## Installation

Non è necessaria alcuna installazione di pacchetti software o dipendenze complesse per consultare il progetto. È sufficiente clonare il repository e aprirlo con [Obsidian](https://obsidian.md/), l'editor Markdown di riferimento per questo Vault.

### Requisiti
- **Git** (per clonare il repository)
- **Obsidian** (o un qualsiasi editor compatibile con Markdown e link bidirezionali `[[]]`)

### Passaggi
```bash
# 1. Clona il repository in locale
git clone https://github.com/dejackdani/matematica_discreta_e_probabilit-_statistica.git

# 2. Accedi alla directory
cd matematica_discreta_e_probabilità_statistica
```

Successivamente, apri Obsidian, seleziona l'opzione **"Open folder as vault"** (Apri cartella come vault) e seleziona la directory appena clonata.

## Usage

Il progetto è strutturato gerarchicamente per massimizzare la facilità di studio e la separazione dei concetti:

- La **teoria, le definizioni e le esercitazioni** rielaborate vengono salvate all'interno della directory `wiki/` (con i mazzi di flashcard in `wiki/flashcards/`).
- Il file `index.md` nella root funge da hub e punto d'ingresso principale per navigare tra gli argomenti.
- Tutto il **materiale grezzo di partenza** risiede in `raw/`:
  - In `raw/` risiedono le dispense e i PDF ufficiali del corso (`lezioniNew.pdf`, `MDP Domande orale.pdf`, `EserciziMDPnew.pdf`).
  - In `raw/registrazioni/` risiedono i file audio delle lezioni e le relative sottocartelle di trascrizione (`trascrizioni-pixel/`, `trascrizioni-whisper/`, `trascrizioni-sistemate/`).
  - In `raw/assets/` devono risiedere rigorosamente ed esclusivamente le immagini, i grafici e i contenuti multimediali generati per essere inclusi nella wiki.

### Esempio Pratico
Per consultare rapidamente un concetto come il *Principio di Inclusione-Esclusione*:
1. Apri il vault in Obsidian.
2. Usa la scorciatoia da tastiera `Ctrl+O` (o `Cmd+O` su Mac).
3. Digita "Principio di Inclusione-Esclusione" e premi Invio.
4. Troverai la teoria strutturata, con definizioni e teoremi evidenziati tramite *callout* dedicati e le domande ufficiali d'esame a scomparsa in fondo alla pagina.

## Contributing

Per contribuire all'espansione della wiki (ad esempio integrando nuove lezioni o risolvendo esercizi), è assolutamente fondamentale rispettare i workflow operativi e le skill definiti nella cartella `.agents/`.

I passaggi e vincoli essenziali per un contributo corretto sono:
1. **Strict Sourcing**: Non introdurre mai concetti, nomenclature o nozioni esterne (non presenti nel materiale ufficiale del docente). Attieniti esclusivamente alle fonti in `raw/`.
2. **Aggiornamento Documentale**: Ogni modifica architetturale o procedurale deve essere documentata aggiornando opportunamente questo `README.md` e, categoricamente, il `log.md`.
3. **Gestione degli Asset**: Qualsiasi nuovo asset visivo o grafico destinato alla documentazione deve essere salvato esclusivamente in `raw/assets/`, senza eccezioni.
4. **Validazione Git**: Prima di effettuare commit o push (anche e soprattutto se coadiuvati da agenti AI), è obbligatorio assicurarsi che venga eseguito il "Pre-Flight Protocol" delineato in `git-guide.md`. I commit devono rispettare il formato *Conventional Commits* in italiano.

## License

Progetto per uso didattico personale. Distribuito sotto licenza [MIT](https://opensource.org/licenses/MIT).
