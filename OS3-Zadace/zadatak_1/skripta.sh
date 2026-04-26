#!/bin/bash

if [ $# != 2 ]; then
  echo "Neispravan broj argumenata";
  exit 1;
fi

if [ ! -d "$1" ]; then
  echo "$1 putanja nije direktorij";
  exit 1;
fi

datoteke=()
for f in "$1"/*"$2"; do
  if [ -f "$f" ]; then
    datoteke+=("$(basename "$f")")
  fi
done


if [ ${#datoteke[@]} = 0 ]; then 
  echo "Nema takvih datoteka";
  exit 0;
fi

echo "${datoteke[@]}";



