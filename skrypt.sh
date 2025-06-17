#!/bin/bash

case "$1" in
  --date)
    date
    ;;
  --logs)
    count=${2:-100}
    for i in $(seq 1 $count); do
      filename="log${i}.txt"
      echo -e "$filename\n$(basename "$0")\n$(date)" > "$filename"
    done
    ;;

  --help|-h)
    echo "Dostępne opcje:"
    echo "  --date | -d        → wyświetla dzisiejszą datę"
    echo "  --logs [n] | -l n  → tworzy n plików logx.txt (domyślnie 100)"
    echo "  --error [n] | -e n → tworzy n folderów errorx/ z plikami errorx.txt"
    echo "  --init             → klonuje repo Lab4 i ustawia PATH"
    echo "  --help | -h        → pokazuje dostępne opcje"
    ;;
  *)
    echo "Nieznana opcja. Użyj --help"
    ;;
esac
