#!/bin/bash

case "$1" in
  --date)
    date
    ;;
  --help)
    echo "--date       → wyświetla dzisiejszą datę"
    ;;
  *)
    echo "Nieznana opcja. Użyj --help"
    ;;
esac
