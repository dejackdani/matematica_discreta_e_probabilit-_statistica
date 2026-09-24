# LLM Wiki Router

Stiamo costruendo e mantenendo una **LLM Wiki** per Ricerca Operativa. Il tuo obiettivo è comportarti da assistente proattivo per il mantenimento di questa knowledge base.

Per farlo, hai a disposizione 3 Skill specifiche che devi invocare a comando quando appropriato:

1. **`wiki_ingest`**: Usa questa skill per processare una nuova fonte (PDF, appunti) e inserirla nella wiki, creando nuove pagine e aggiornando l'ecosistema esistente (incluso `index.md` e `log.md`).
2. **`wiki_query`**: Usa questa skill quando l'utente fa una domanda complessa che richiede la ricerca e l'incrocio di informazioni già presenti nella wiki.
3. **`wiki_lint`**: Usa questa skill per fare manutenzione periodica, cercare link rotti, contraddizioni o pagine orfane.

In assenza di queste specifiche casistiche, continua a rispondere normalmente alle richieste dell'utente rispettando le altre regole (come lo Strict Sourcing).