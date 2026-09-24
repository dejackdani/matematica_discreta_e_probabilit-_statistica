---
description: Workflow per la trascrizione e la digestione di file audio delle lezioni (usa whisper-turbo locale a 24 thread). Esegue pulizia dei formati extra e riadatta il testo in Markdown pulito.
---

# Workflow: Ingest Audio

Quando l'utente invoca `/ingest-audio` o ti chiede esplicitamente di processare/ingerire un file audio o una registrazione della lezione, esegui RIGOROSAMENTE questi passaggi in ordine:

## Step 1: Trascrizione Audio
1. Verifica la presenza del file audio indicato dall'utente e assicurati che sia collocato all'interno di `raw/registrazioni/`. Se non esiste la cartella, creala.
2. Spostati come `Cwd` (Current Working Directory) all'interno della directory `raw/registrazioni/` in cui si trova il file audio.
3. Esegui il comando locale di trascrizione forzando il numero di thread a 24.
   Usa esattamente questo comando (sostituendo il nome del file ma passandolo direttamente senza percorsi assoluti, ad es. `transcribe -t 24 RO20260921.m4a`):
   `transcribe -t 24 <nome_del_file_audio.estensione>`
4. Lancia il comando e lascialo andare come task asincrono in background. **Attenzione:** Il comando impiegherà diverso tempo (nell'ordine dei 10/20 minuti), dunque mettiti in attesa (interrompendo il ciclo) e riprendi solo quando riceverai la notifica di sistema del task completato.
   **Nota:** Al termine, il comando genererà nella stessa cartella dell'audio i file `.vtt`, `.txt`, `.tsv`, `.srt`, `.json`.

## Step 2: Selezione del formato e pulizia
1. Il miglior formato per il passaggio successivo è il `.txt`. Identifica il file testuale appena generato e spostalo in `raw/registrazioni/trascrizioni-whisper/` (creando la directory se necessario).
2. Per tenere pulita la directory originaria, usa il terminale per **eliminare fisicamente** tutti i file rimanenti generati dall'operazione (ossia i file con lo stesso nome dell'audio ma estensione `.vtt`, `.tsv`, `.srt`, `.json`).

## Step 3: Raffinamento e Conversione in Markdown
1. Leggi il contenuto del file `.txt` salvato in `raw/registrazioni/trascrizioni-whisper/`.
2. Leggi e analizza il file PDF delle dispense ufficiali (di default usa `raw/lezioniNew.pdf` o fatti indicare il file esatto) per caricare nel tuo contesto il glossario e gli argomenti esatti trattati dal professore.
3. Utilizzando la tua logica AI o quella di un subagent adeguato, rielabora l'intero testo applicando rigorosamente il seguente prompt:

   > Sei un assistente accademico specializzato nel riordinare e correggere appunti per corsi universitari di Ingegneria e Scienze Informatiche.
   > Di seguito ti fornisco la trascrizione grezza di una lezione (generata da un sistema speech-to-text locale) E le relative slide/dispense ufficiali.
   > 
   > Il tuo compito è:
   > 1. Correggere eventuali errori di battitura o parole travisate dal software. **FONDAMENTALE:** Usa il file `lezioniNew.pdf` fornito come riferimento assoluto per disambiguare termini tecnici, acronimi o nomi di teoremi storpiati, ponendo massima attenzione a preservare accuratamente il lessico tecnico matematico e rimanendo aderente al 100% all'argomento.
   > 2. Identificare i cambi di interlocutore intuendoli dal contesto e assegnare le etichette corrette (es. **Professore:**, **Studente:**).
   > 3. Formattare il risultato finale in Markdown pulito. Laddove la tua intelligenza te lo permetta, cerca di dedurre in maniera efficace la formula matematica corrispettiva di cui si parla nel testo scrivendola in LaTeX. **IMPORTANTE per le formule:** usa SEMPRE la sintassi MathJax compatibile con Obsidian (simbolo del dollaro singolo `$` per formule inline, e doppio dollaro `$$` per formule a blocco). NON usare MAI `\(` o `\[`. Assicurati inoltre di NON inventare o realizzare formule che devino totalmente dall'argomento contestuale.
   > 
   > All'inizio del documento, inserisci un blocco YAML Front Matter con i seguenti metadati ricavati dal contesto:
   > ---
   > titolo: "[Titolo sintetico e descrittivo della lezione]"
   > data_lezione: "[YYYY-MM-DD se menzionata, altrimenti 'Non specificata']"
   > ---
   > 
   > Ecco la trascrizione grezza: [testo]

4. Salva l'output generato come nuovo file, chiamandolo con lo stesso nome di partenza ma con estensione `.md`, all'interno della directory `raw/registrazioni/trascrizioni-sistemate/`.

## Step 4: Ingestione Finale
Se la richiesta iniziale dell'utente includeva anche "l'ingestione" del materiale per la creazione della Wiki:
1. Chiama o sfrutta la skill `wiki-ingest`.
2. Passale in pasto ESCLUSIVAMENTE il file Markdown pulito appena generato nella cartella `trascrizioni-sistemate`, tralasciando del tutto il file testuale o l'audio grezzo, così da garantire la massima qualità e sicurezza.
