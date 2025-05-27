#!/bin/bash

case "$1" in
  --help)
    echo "Dostępne opcje:"
    echo "--help        Wyświetl pomoc"
    echo "--date        Pokaż datę"
    echo "--logs [n]    Utwórz n plików logów (domyślnie 100)"
    ;;
    
  --date)
    echo "Dzisiejsza data: $(date)"
    ;;

  --logs)
    count=${2:-100}  # Jeśli brak argumentu, domyślnie 100
    for ((i=1; i<=count; i++)); do
      filename="log${i}.txt"
      echo "Plik: $filename" > "$filename"
      echo "Skrypt: $0" >> "$filename"
      echo "Data: $(date)" >> "$filename"
    done
    echo "Utworzono $count plików."
    ;;

  *)
    echo "Nieznana opcja: $1"
    echo "Użyj --help aby zobaczyć dostępne opcje."
    ;;
esac