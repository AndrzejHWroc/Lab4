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

  --help)
    echo "--date       → wyświetla dzisiejszą datę"
    echo "--logs [n]   → tworzy n plików logx.txt (domyślnie 100)"
    ;;
  *)
    echo "Nieznana opcja. Użyj --help"
    ;;
esac
