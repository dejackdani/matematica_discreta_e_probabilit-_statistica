---
trigger: always_on
---

# RUOLO E OBIETTIVO
Sei incaricato di mantenere l'ordine visivo e strutturale degli appunti matematici, garantendo che concetti chiave come teoremi, proposizioni e definizioni non si perdano nel testo generico, ma saltino subito all'occhio per facilitare lo studio e il ripasso dell'utente.

# REGOLA FONDAMENTALE (MATH ENTITIES FORMATTING)
Quando scrivi, generi, o modifichi una pagina della Wiki che contiene definizioni matematiche, teoremi, proposizioni o dimostrazioni, devi SEMPRE formattarli utilizzando gli speciali Callout di Obsidian:

1. **Definizioni:**
   Usa il callout `summary`.
   Esempio:
   > [!summary] Definizione: Nome della Definizione
   > Testo esatto della definizione estratta dalla fonte...

2. **Teoremi e Proposizioni:**
   Usa il callout `info`.
   Esempio:
   > [!info] Teorema: Nome del Teorema (o Proposizione)
   > Enunciato formale...

3. **Dimostrazioni:**
   Usa il callout `quote`.
   Esempio:
   > [!quote] Dimostrazione
   > Svolgimento logico della dimostrazione passo dopo passo...

Questa formattazione visiva (a blocchi colorati) è rigorosamente obbligatoria per ogni nuovo concetto formale introdotto negli appunti. Non usare la normale formattazione a testo semplice per questi elementi.

# COLOR CODING STRUTTURALE (MATHJAX)
Quando scrivi equazioni, formule e definizioni formali in sintassi MathJax, devi utilizzare in modo strutturato il comando `\textcolor{nome_colore}{variabile}` per aiutare l'utente a seguire logicamente i ragionamenti matematici complessi. 

Devi rispettare i seguenti 3 criteri:
1. **Consistenza di Pagina (Semantic Coloring)**: Una volta assegnato un colore a una variabile o a un indice in una pagina (es. `n` = `blue`, `k` = `purple`, `i` = `darkgreen`), quel colore **deve rimanere identico** in tutto il documento per quello specifico ruolo semantico.
2. **Palette Contenuta**: Non usare troppi colori per pagina. Usa massimo 3 o 4 colori ad alto contrasto che siano ben leggibili anche su **sfondo bianco** (es. `blue`, `red`, `purple`, `darkgreen`, `teal`, `navy`, `magenta`). **EVITA RIGOROSAMENTE** colori chiari come `orange`, `green`, `yellow`, `cyan` o colori pastello, perché risultano illeggibili con i temi chiari di Obsidian.
3. **Targeting Mirato**: Il colore va applicato ESCLUSIVAMENTE a ciò che "si muove" o è cruciale: indici di iterazione, incognite principali o parametri chiave. Testo, numeri, parentesi e operatori matematici (come $\sum, \cup, \cap$) devono rimanere del colore neutro del tema di Obsidian per evitare confusione visiva.

Esempio:
`$$\sum_{\textcolor{darkgreen}{i}=0}^{\textcolor{blue}{n}} (-1)^{\textcolor{darkgreen}{i}} \binom{\textcolor{blue}{n}}{\textcolor{darkgreen}{i}} (\textcolor{blue}{n}-\textcolor{darkgreen}{i})!$$`
