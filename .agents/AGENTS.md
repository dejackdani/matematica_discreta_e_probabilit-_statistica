# Obiettivo Corrente e Deadline
- **Esame di Matematica Discreta e Probabilità Statistica**: [Data da definire].
- **Strategia attuale**: Il piano di studio e la velocità di crociera sono da definire in base alla data dell'esame. L'obiettivo primario è prepararsi con calma e pragmatismo. Non mettere fretta all'utente, incoraggiarlo a mantenere la tabella di marcia.
- **Ripasso Giornaliero (Condizionato all'Orario)**: Proponi proattivamente all'utente di generare le flashcard AOSR per il materiale studiato, MA rispettando rigorosamente questi vincoli temporali (controlla sempre l'ora locale attuale per prendere la decisione):
  - **SOLO dalle ore 17:30 in poi** della giornata in corso, per consolidare il lavoro svolto.
  - Oppure **al mattino successivo**, qualora fosse stato creato o studiato materiale il giorno prima e non fossero state ancora estratte le relative flashcard.
  Non proporre MAI la generazione di flashcard a metà giornata lavorativa per evitare interruzioni nel workflow dell'utente.

# Strict Workspace Confinement
- **Divieto di inquinamento del File System**: Tutti i file operativi o documentali generati per conto dell'utente (es. appunti, riassunti, piani di studio, script) devono essere salvati e materializzati *esclusivamente* all'interno della root del progetto o nelle sue sottocartelle (`/home/daniele/Documenti/obsidian/matematica_discreta_e_probabilità_statistica`).
- **Nessun file esterno**: È severamente vietato salvare file destinati all'utente in cartelle di sistema (es. `/tmp`, `~/.gemini`, cartelle di cache) o sulla scrivania. L'unica eccezione di sistema ammessa è per gli Artifacts nativi (come implementation_plan.md, task.md, walkthrough.md) la cui allocazione è gestita a monte dall'infrastruttura.
- **Area Personale Protetta (`appunti_dani/`)**: La cartella `appunti_dani/` è strettamente personale e di sola lettura per la Wiki: è vietato alterarla, cancellarla o estrarne dati per la `wiki/`.

# Asset Management
- **Directory degli Asset**: Tutti gli asset generati (come immagini, grafici e file multimediali) destinati ad essere inclusi nella documentazione o nella wiki, devono essere SEMPRE e rigorosamente salvati all'interno della cartella `raw/assets/`. Non creare o popolare directory `assets/` in altre posizioni come all'interno della cartella `wiki/`.

# Erogazione Esempi Didattici
- **Definizione Istanza Base**: Quando ti viene richiesto un esempio pratico in chat (specialmente di natura matematica, probabilistica o statistica), ti è ASSOLUTAMENTE VIETATO iniziare lo svolgimento dei calcoli senza aver prima definito il contesto.
- **Struttura Obbligatoria**: Devi SEMPRE aprire la risposta esplicitando i "Dati Base dell'Esempio" (es. per Combinatoria/Discreta: insieme di riferimento, cardinalità $n, k$, regole di ordinamento e ripetizione; per Probabilità/Statistica: spazio campionario $\Omega$, eventi di interesse, variabili aleatorie coinvolte con relativa distribuzione e parametri). Solo DOPO aver posto l'istanza base, puoi procedere allo sviluppo step-by-step.

# Formattazione Formule Matematiche (Obsidian)
- **Sintassi MathJax Obbligatoria**: Quando generi, trascrivi o modifichi file Markdown destinati a questo progetto (come note, appunti o flashcard per Obsidian), ti è **SEVERAMENTE VIETATO** usare i classici delimitatori LaTeX come `\(` e `\[`.
- **Delimitatori Consentiti e Regola Spazi**:
  - Per le formule **inline** (all'interno della stessa riga di testo), usa obbligatoriamente il singolo dollaro. **CRITICO:** Non lasciare MAI spazi tra il dollaro e la formula, altrimenti Obsidian si rompe. Esempio corretto: `$x^2+y^2=r^2$`. Esempio errato: `$ x^2 $`.
  - Per le formule a **blocco** (centrate su una nuova riga), usa il doppio dollaro. Esempio: `$$\sum_{i=1}^n i = \frac{n(n+1)}{2}$$`.

# Version Control, Changelog e Documentazione (On-Demand Rules)
- **Richiesta Proattiva di Commit**: Al termine di un task che ha comportato la modifica o creazione di file, chiedi sempre proattivamente all'utente se è il momento di eseguire un commit.
- **Consultazione Obbligatoria delle Guide**: Prima di aggiornare `log.md`, `README.md` o eseguire qualsiasi operazione Git (`commit`, `merge`, `push`), **consulta e applica obbligatoriamente** le rispettive regole in `.agents/rules/log-guide.md`, `.agents/rules/readme-guide.md` e `.agents/rules/git-guide.md` (incluso il Pre-Flight Protocol stampato in chat).
