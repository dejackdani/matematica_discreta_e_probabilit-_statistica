---
trigger: always_on
---

# LLM Wiki Schema & Autonomous Router

Stiamo costruendo e mantenendo una **LLM Wiki** incrementale per il corso di **Matematica Discreta e Probabilità Statistica**, ispirata al paradigma *Memex / LLM Wiki* di Andrej Karpathy (*"Obsidian è l'IDE, l'LLM è il programmatore, la Wiki è la codebase"*).

## Architettura a 3 Layer
1. **Fonti Grezze (`raw/`)**: Documenti immutabili (*source of truth*: dispense PDF come `lezioniNew.pdf`, domande d'esame `MDP Domande orale.pdf`, eserciziari `EserciziMDPnew.pdf`, registrazioni e trascrizioni in `raw/registrazioni/`). L'agente li legge ma non li altera mai. In `raw/assets/` risiedono gli asset visivi.
2. **La Wiki (`wiki/`)**: Rete persistente e interconnessa (`[[link]]`) di pagine Markdown compilate e manutenute interamente dall'agente. La conoscenza viene compilata una volta sola e mantenuta costantemente aggiornata (*compounding artifact*).
3. **Navigazione e Cronologia (`index.md` e `log.md`)**: `index.md` è il catalogo tematico centrale (punto di partenza obbligatorio per ogni ricerca); `log.md` traccia l'evoluzione cronologica della base di conoscenza.

## Convenzioni di Frontmatter (Schema Pagina)
Ogni pagina della `wiki/` deve iniziare con un blocco YAML essenziale e pulito:
- **Pagine teoriche / concetti / riassunti**: `indice` (es. `"3.4"`), `tipo` (`concetto`, `teorema`, `riassunto_fonte`), `tags` (es. `[matematica_discreta, combinatoria]`), `data_creazione` (`YYYY-MM-DD`), `fonti_usate` (`["[[Nome_Fonte]]"]`).
- **Schede di esercizi**: `indice` (es. `"6.1"`), `tipo: [esercizi]`, `title`, `file_sorgente` (`["[[EserciziMDPnew.pdf]]"]`).
- **Approfondimenti ed esempi**: `indice` (es. `"3.4.1"`), `tipo: [approfondimento]`, `tags`, `data_creazione`, `fonti_usate`.

## Attivazione Autonoma delle Skill (Zero-Prompt Routing)
Comportati da manutentore proattivo. Non aspettare che l'utente ti nomini esplicitamente una skill: riconoscine il bisogno dal contesto della richiesta e attivala in autonomia:
1. **`ingest_audio`**: Attivala quando l'utente fornisce una nuova registrazione audio o trascrizione grezza da processare, ripulire e convertire in Markdown.
2. **`wiki_ingest`**: Attivala quando c'è una nuova fonte in `raw/` (PDF, trascrizione sistemata, dispensa) da compilare nella `wiki/`, aggiornando pagine collegate, `index.md`, `wiki/Indice_Teoremi_Definizioni.md` e `log.md`.
3. **`wiki_query`**: Attivala quando l'utente pone domande teoriche o trasversali; consulta prima `index.md`, fai drill-down nelle pagine `wiki/` e applica la *Regola d'Oro* (proponi di salvare nella wiki le sintesi o connessioni inedite di valore emerse in chat).
4. **`wiki_insights`**: Attivala quando generi o ti viene chiesto un esempio pratico, un caso applicativo o una metafora didattica che merita di essere formalizzata nella wiki sotto l'argomento padre.
5. **`wiki_exercises`**: Attivala (solo su richiesta esplicita di esercizi/problemi) per generare schede di esercizi con soluzioni a scomparsa, o per integrare le esercitazioni del corso.
6. **`wiki_lint`**: Attivala quando serve un controllo di salute della wiki (link rotti, pagine orfane, contraddizioni, verifica presenza domande di Active Recall).
7. **`generate_aosr_flashcards`**: Attivala su richiesta esplicita o proponila proattivamente (rispettando il vincolo orario >= 17:30 o mattino seguente) per estrarre i mazzi di ripetizione spaziata in `wiki/flashcards/`.