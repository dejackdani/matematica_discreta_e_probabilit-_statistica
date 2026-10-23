#!/usr/bin/env bash
# Script helper per organizzare e pulire i file generati durante ingest-audio
# Uso:
#   bash .agents/skills/ingest-audio/scripts/prep_and_clean.sh prep <nome_base>
#   bash .agents/skills/ingest-audio/scripts/prep_and_clean.sh clean <nome_base>

set -euo pipefail

MODE="${1:-}"
BASENAME="${2:-}"
REG_DIR="raw/registrazioni"

if [[ -z "$MODE" || -z "$BASENAME" ]]; then
    echo "Uso: $0 <prep|clean> <nome_base_senza_estensione>"
    exit 1
fi

mkdir -p "$REG_DIR/trascrizioni-pixel" \
         "$REG_DIR/trascrizioni-whisper" \
         "$REG_DIR/trascrizioni-sistemate"

if [[ "$MODE" == "prep" ]]; then
    if [[ -f "$REG_DIR/trascrizioni-whisper/${BASENAME}.txt" ]]; then
        echo "FAST_PATH_READY: $REG_DIR/trascrizioni-whisper/${BASENAME}.txt esiste già."
    elif [[ -f "$REG_DIR/${BASENAME}.txt" ]]; then
        echo "Nota: trovato $REG_DIR/${BASENAME}.txt nella cartella principale."
    else
        echo "TRANSCRIPTION_NEEDED: Nessun file .txt trovato in trascrizioni-whisper per ${BASENAME}."
    fi
elif [[ "$MODE" == "clean" ]]; then
    if [[ -f "$REG_DIR/${BASENAME}.txt" ]]; then
        mv "$REG_DIR/${BASENAME}.txt" "$REG_DIR/trascrizioni-whisper/${BASENAME}.txt"
        echo "Spostato ${BASENAME}.txt in $REG_DIR/trascrizioni-whisper/"
    fi
    rm -f "$REG_DIR/${BASENAME}.vtt" \
          "$REG_DIR/${BASENAME}.tsv" \
          "$REG_DIR/${BASENAME}.srt" \
          "$REG_DIR/${BASENAME}.json"
    echo "Pulizia completata per ${BASENAME} (.vtt, .tsv, .srt, .json rimossi)."
else
    echo "Modalità non riconosciuta: $MODE (usa 'prep' o 'clean')"
    exit 1
fi
