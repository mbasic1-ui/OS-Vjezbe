#!/bin/bash

if [ $# != 1 ]; then 
   echo "Potreban je argument";
   exit 1;
fi 

if [ ! -d "$1" ]; then 
  echo "$1 nije direktorij";
  exit 1;
fi

if [ ! -d "$1/.git" ]; then 
  echo "$1 nije git direktorij";
  exit 1;
fi

touch "repozitorij_info.txt";
git add repozitorij_info.txt;
git commit -m "Dodavanje repozitorij_info";
git log;

