#! /bin/bash

folder=output

for experiment in $(echo low high); do
  for size in $(echo 320 640 1280); do
    for hyper in $(echo no.aug aug); do
      echo ----- ${experiment}-${hyper}-${size} -----;	    
      python scores.py \
          ${folder}/${experiment}.fold0.${hyper}.${size}.summary.txt \
          ${folder}/${experiment}.fold1.${hyper}.${size}.summary.txt \
          ${folder}/${experiment}.fold2.${hyper}.${size}.summary.txt \
          ${folder}/${experiment}.fold3.${hyper}.${size}.summary.txt \
          ${folder}/${experiment}.fold4.${hyper}.${size}.summary.txt;
    done 
  done 
done 
