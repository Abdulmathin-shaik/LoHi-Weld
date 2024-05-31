#! /bin/bash

out=output
rm -rf ${out}
mkdir ${out}

for experiment in $(echo low high); do
  for fold in $(echo fold0 fold1 fold2 fold3 fold4); do
    for size in $(echo 320 640 1280); do
      for hyper in $(echo no.aug aug); do
        for key in $(echo test); do
         python3 test.py \
            --data data/${experiment}.${fold}.yaml \
	    --task ${key} \
            --img ${size} --batch 4 --conf 0.001 --iou 0.50 \
            --device 0 \
            --weights ./runs/train/${experiment}.${fold}.${hyper}.${size}/weights/best.pt \
            --save-txt --verbose \
            --name ${experiment}.${fold}.${hyper}.${size} >> ${out}/${experiment}.${fold}.${hyper}.${size}.all.txt;
         python3 eval.py \
            --data data/${experiment}.${fold}.yaml \
	    --task ${key} \
            --img ${size} --batch 4 --conf 0.001 --iou 0.50 \
            --device 0 \
            --weights ./runs/train/${experiment}.${fold}.${hyper}.${size}/weights/best.pt \
            --save-txt --verbose \
            --name ${experiment}.${fold}.${hyper}.${size} \
	    --fileout ${out}/${experiment}.${fold}.${hyper}.${size}.summary.txt;
        done 	
      done 	
    done
  done
done
