---
name: wiki_lint
description: Usa questa skill per fare manutenzione della wiki, trovare link rotti, contraddizioni o pagine orfane.
---

# Wiki Lint Workflow

La manutenzione manuale di una knowledge base è incredibilmente noiosa. Gli esseri umani abbandonano le wiki perché il peso della manutenzione e del bookkeeping cresce molto più velocemente del valore offerto. Il tuo compito con questa skill è eseguire questo lavoro sporco, assicurando che le cross-references siano intatte e che le informazioni siano coerenti su dozzine di pagine, senza mai annoiarti.

Quando ti viene richiesto di eseguire un controllo di salute ("lint") della wiki, esegui un audit approfondito:

1. **Analisi Strutturale (Index):** Leggi l'`index.md` per capire l'architettura ufficiale e confrontala con i file fisici presenti nella directory `wiki/`.
2. **Scansione Dettagliata:**
   - **Pagine orfane:** Cerca file isolati che non hanno alcun link in entrata (inbound links). La graph view li mostrerebbe completamente scollegati dal resto.
   - **Concetti omessi:** Verifica se concetti cruciali e menzionati ripetutamente mancano ancora di una propria pagina dedicata.
   - **Dead Links e Cross-References mancanti:** Identifica la sintassi `[[nome_pagina]]` che punta nel vuoto (pagine mai scritte) o individua file che parlano degli stessi argomenti ma non si collegano a vicenda.
   - **Contraddizioni e Affermazioni Obsolete:** Trova discrepanze logiche tra pagine, specialmente affermazioni vecchie che potrebbero essere state smentite o superate da fonti ingerite più recentemente.
   - **Data Gaps:** Identifica buchi informativi evidenti.
   - **Controllo Active Recall:** Verifica rigorosamente che ogni singola pagina concettuale della wiki rispetti il formato standard e includa la sezione `## 📝 Domande di Verifica` formattata con i callout a scomparsa (`> [!question]-`). Segnala nel report le pagine che ne sono sprovviste come "debito formativo"!
   - **Evoluzione dell'Active Recall:** Oltre alla semplice presenza, valuta "semanticamente" se le domande presenti sono ancora aggiornate. Se noti che ci sono nuove fonti in `raw/` (es. appelli o esercizi più recenti) che introducono nuovi focus o "domande a trabocchetto", segnala quali pagine wiki necessitano di un arricchimento o aggiornamento delle proprie Domande di Verifica.
3. **Suggerimenti Proattivi:** Non fare il semplice correttore ortografico. Sii un partner esplorativo: suggerisci nuove domande da investigare, nuovi argomenti da approfondire e proponi soluzioni concrete per riparare le rotture strutturali della wiki.
4. **Report ed Esecuzione:** Presenta il tuo referto all'utente. Applica correzioni massive o distruttive (es. unioni, cancellazioni) SOLO previo consenso esplicito.
