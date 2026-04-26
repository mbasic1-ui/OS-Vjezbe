#!/bin/bash 

if [ $# != 1 ]; then
  echo "Neispravan broj argumenata";
  exit 1;
fi

if [[ $1 -le 0 || $1 -gt 10 ]]; then 
  echo "Neispravan raspon";
  exit 1;
fi

start=1
end=$1

while [ $start -le $end ];do
   echo "$start" >> "brojevi.txt";
   ((start++));
done
