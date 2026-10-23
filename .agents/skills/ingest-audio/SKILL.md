---
name: ingest_audio
description: Usa questa skill quando l'utente invoca /ingest-audio o chiede di trascrivere, processare o ingerire un file audio o una registrazione della lezione (usa whisper-turbo locale a 24 thread, confronta l'output con la trascrizione Pixel e con lezioniNew.pdf, e produce il Markdown pulito).
---

# Skill: Ingest Audio

Quando l'utente invoca `/ingest-audio` o ti chiede di processare/ingerire un file audio o una registrazione della lezione, esegui RIGOROSAMENTE questi passaggi in ordine:

## Step 0: Organizzazione Cartelle e Check Fast-Path
1. Assicurati che il file audio e l'eventuale file testuale generato dall'app Google Pixel si trovino in `raw/registrazioni/`.
2. Puoi eseguire lo script helper [prep_and_clean.sh](./scripts/prep_and_clean.sh) in modalità `prep`:
   `bash .agents/skills/ingest-audio/scripts/prep_and_clean.sh prep <nome_base_lezione>`
   *(in alternativa, assicurati che esistano le sottocartelle `trascrizioni-pixel/`, `trascrizioni-whisper/` e `trascrizioni-sistemate/` dentro `raw/registrazioni/` e che la trascrizione Pixel sia in `raw/registrazioni/trascrizioni-pixel/`)*.
3. **SCORCIATOIA (Fast-Path):** Controlla se in `raw/registrazioni/` o in `raw/registrazioni/trascrizioni-whisper/` esiste già un file `.txt` con lo stesso nome dell'audio (es. `MdP20260923.txt`). Se esiste già, significa che la trascrizione Whisper è già stata effettuata: **salta interamente lo Step 1 e lo Step 2**, e procedi direttamente allo Step 3 leggendo quel file `.txt`.

## Step 1: Trascrizione Audio (Se il `.txt` non esiste)
1. Imposta come `Cwd` (Current Working Directory) la directory `raw/registrazioni/` in cui si trova il file audio.
2. Esegui il comando locale di trascrizione forzando il numero di thread a 24 (passando il nome del file direttamente senza percorsi assoluti, ad es. `transcribe -t 24 MdP20260923.m4a`):
   `transcribe -t 24 <nome_del_file_audio.estensione>`
3. Lancia il comando come task asincrono in background. **Attenzione:** Il comando impiegherà diverso tempo (nell'ordine dei 10/20 minuti), dunque interrompi il turno in attesa e riprendi solo quando riceverai la notifica di sistema del task completato.

## Step 2: Selezione del formato e pulizia
Al termine di Whisper (che genera `.vtt`, `.txt`, `.tsv`, `.srt`, `.json`):
1. Esegui lo script helper in modalità `clean` per spostare automaticamente il `.txt` in `raw/registrazioni/trascrizioni-whisper/` ed eliminare i file superflui (`.vtt`, `.tsv`, `.srt`, `.json`):
   `bash .agents/skills/ingest-audio/scripts/prep_and_clean.sh clean <nome_base_lezione>`

## Step 3: Raffinamento e Conversione in Markdown
0. **Supporto Documentale (La Bibbia):** Assicurati di consultare sempre il file `raw/lezioniNew.pdf` e usalo come "Ground Truth" (Bibbia) per correggere errori di comprensione di Whisper (es. termini matematici fraintesi) e per assicurarti che la nomenclatura rispecchi esattamente le dispense ufficiali.
1. Leggi il contenuto di **ENTRAMBI** i file: la trascrizione generata in `raw/registrazioni/trascrizioni-whisper/` e la trascrizione del Pixel salvata in `raw/registrazioni/trascrizioni-pixel/`.
2. Utilizzando la tua logica AI o quella di un subagent adeguato, confronta le due trascrizioni e rielabora l'intero testo applicando rigorosamente il seguente prompt:

   > Sei un assistente accademico specializzato nel riordinare e correggere appunti per corsi universitari di Ingegneria e Scienze Informatiche.
   > Di seguito ti fornisco **due versioni** della trascrizione di una lezione (una generata da Whisper, l'altra dall'app Google Pixel) E le relative slide/dispense ufficiali.
   > 
   > Il tuo compito è:
   > 1. **Confrontare ed unire (Merge):** Effettua un'analisi di consistenza tra la trascrizione Whisper e quella Pixel. La trascrizione Whisper potrebbe essere stata interrotta o tagliata; in tali casi, recupera e integra l'audio mancante affidandoti alla trascrizione Pixel, assicurandoti che non ci siano omissioni di contenuto.
   > 2. Adottare uno stile narrativo fluido ed elegante, eliminando i balbettii e i difetti del parlato, ma restando **il più fedele possibile** a ciò che dice il professore. Devi riportare *tutto* ciò che riesci a comprendere, senza tagliare concetti, senza fuorviare e **senza mai aggiungere informazioni o deduzioni che lui non ha esplicitamente pronunciato nell'audio**.
   > 3. Correggere eventuali errori di battitura o parole travisate dal software. **FONDAMENTALE:** Usa il file `lezioniNew.pdf` fornito come riferimento assoluto per disambiguare termini tecnici, acronimi o nomi di teoremi storpiati, ponendo massima attenzione a preservare accuratamente il lessico tecnico matematico e rimanendo aderente al 100% all'argomento.
   > 4. Identificare i cambi di interlocutore intuendoli dal contesto e assegnare le etichette corrette (es. **Professore:**, **Studente:**).
   > 5. Formattare il risultato finale in Markdown pulito. Laddove la tua intelligenza te lo permetta, cerca di dedurre in maniera efficace la formula matematica corrispettiva di cui si parla nel testo scrivendola in LaTeX. **IMPORTANTE per le formule:** usa SEMPRE la sintassi MathJax compatibile con Obsidian (simbolo del dollaro singolo `$` per formule inline senza spazi interni, e doppio dollaro `$$` per formule a blocco). NON usare MAI `\(` o `\[`. Assicurati inoltre di NON inventare o realizzare formule che devino totalmente dall'argomento contestuale.
   > 
   > All'inizio del documento, inserisci un blocco YAML Front Matter con i seguenti metadati ricavati dal contesto:
   > ---
   > titolo: "[Titolo sintetico e descrittivo della lezione]"
   > data_lezione: "[YYYY-MM-DD se menzionata, altrimenti 'Non specificata']"
   > file_sorgente: "[nome_file.txt originale]"
   > ---
   > 
   > Ecco la trascrizione Whisper: [testo Whisper]
   > Ecco la trascrizione Pixel: [testo Pixel]

3. Salva l'output generato come nuovo file, chiamandolo con lo stesso nome di partenza ma con estensione `.md`, all'interno della directory `raw/registrazioni/trascrizioni-sistemate/`.

## Step 4: Ingestione Finale
Se la richiesta iniziale dell'utente includeva anche "l'ingestione" del materiale per la creazione della Wiki:
1. Attiva la skill `wiki_ingest`.
2. Passale in pasto ESCLUSIVAMENTE il file Markdown pulito appena generato nella cartella `raw/registrazioni/trascrizioni-sistemate/`, tralasciando del tutto il file testuale o l'audio grezzo, così da garantire la massima qualità e sicurezza.
