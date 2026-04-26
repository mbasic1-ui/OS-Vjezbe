#!/bin/bash 

if [ $# != 1 ]; then 
  echo "Potreban je samo jedan argument";
  exit 1;
fi

skripta_dir=$(pwd)
ciljani_dir="$skripta_dir/$1"

if [ -d "$ciljani_dir" ]; then 
  echo "direktorij ne postoji";
  exit 1;
fi 

zip -r "svi_zapisi.zip" "$1";
