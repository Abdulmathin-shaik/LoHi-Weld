#! /bin/bash

for experiment in $(echo low high); do
  for fold in $(echo fold0 fold1 fold2 fold3 fold4); do
    for size in $(echo 320 640 1280); do
      for hyper in $(echo no.aug aug); do
        python3 train.py \
         --workers 8 --device 0 --batch-size 8 --epochs 50 \
	 --data data/${experiment}.${fold}.yaml \
	 --img ${size} ${size} \
	 --cfg cfg/training/yolov7-tiny.yaml \
	 --weights 'yolov7-tiny.pt' \
         --name ${experiment}.${fold}.${hyper}.${size} \
         --hyp data/hyp.data.${hyper}.tiny.yaml;
      done
    done
  done
done
