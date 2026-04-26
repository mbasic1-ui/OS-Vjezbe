#!/bin/bash

novi_nazivi=();
n=1;
for f in "screenshots"/*; do
  naziv="screenshot_${n}_$(basename "$f")"
  mv "$f" "screenshots/$naziv";
  novi_nazivi+="$naziv";
  ((n++));
done

echo ${novi_nazivi[@]}
