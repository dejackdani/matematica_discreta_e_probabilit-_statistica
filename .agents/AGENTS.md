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

# Asset Management
- **Directory degli Asset**: Tutti gli asset generati (come immagini, grafici e file multimediali) destinati ad essere inclusi nella documentazione o nella wiki, devono essere SEMPRE e rigorosamente salvati all'interno della cartella `raw/assets/`. Non creare o popolare directory `assets/` in altre posizioni come all'interno della cartella `wiki/`.

# Erogazione Esempi Didattici
- **Definizione Istanza Base**: Quando ti viene richiesto un esempio pratico in chat (specialmente di natura matematica, probabilistica o statistica), ti è ASSOLUTAMENTE VIETATO iniziare lo svolgimento dei calcoli senza aver prima definito il contesto.
- **Struttura Obbligatoria**: Devi SEMPRE aprire la risposta esplicitando i "Dati Base dell'Esempio" (es. problema in forma standard, funzione obiettivo, vincoli completi, variabili di partenza in base/fuori base, matrici iniziali). Solo DOPO aver posto l'istanza base, puoi procedere allo sviluppo step-by-step.

# Formattazione Formule Matematiche (Obsidian)
- **Sintassi MathJax Obbligatoria**: Quando generi, trascrivi o modifichi file Markdown destinati a questo progetto (come note, appunti o flashcard per Obsidian), ti è **SEVERAMENTE VIETATO** usare i classici delimitatori LaTeX come `\(` e `\[`.
- **Delimitatori Consentiti**:
  - Per le formule **inline** (all'interno della stessa riga di testo), devi usare obbligatoriamente il singolo dollaro. Esempio: `$ x^2 + y^2 = r^2 $`.
  - Per le formule a **blocco** (centrate su una nuova riga), devi usare obbligatoriamente il doppio dollaro. Esempio: `$$ \sum_{i=1}^n i = \frac{n(n+1)}{2} $$`.
