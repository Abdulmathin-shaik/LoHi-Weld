#! /bin/bash

#itype=low
itype=high
extension=json
json_path=./${itype}_resolution_welds
outdir=kfold_${itype}
rm -rf ${outdir}
mkdir ${outdir}
for fold in $(echo fold0 fold1 fold2 fold3 fold4); do
  mkdir ${outdir}/${fold}
    mkdir ${outdir}/${fold}/train
      mkdir ${outdir}/${fold}/train/images
      mkdir ${outdir}/${fold}/train/labels
    mkdir ${outdir}/${fold}/val
      mkdir ${outdir}/${fold}/val/images
      mkdir ${outdir}/${fold}/val/labels
done      
mkdir ${outdir}/test
mkdir ${outdir}/test/images
mkdir ${outdir}/test/labels

fileout=${outdir}/dataset.txt
for f in $(ls ${json_path}/*.${extension}); do
  file=${f##*/}
  base=${file%.*}
  echo ${base} >> ${fileout};
done

python create_kfold.py ${fileout} ${json_path} ${outdir}

chmod +x ${outdir}/generate.sh

./${outdir}/generate.sh

for fold in $(echo fold0 fold1 fold2 fold3 fold4); do
  ls -d ./${outdir}/${fold}/train/images/* > ./${outdir}/${fold}/train.txt;	
  sed -i "s/\.\//weld-dataset\//g" ./${outdir}/${fold}/train.txt;
  ls -d ./${outdir}/${fold}/val/images/* > ./${outdir}/${fold}/val.txt;	
  sed -i "s/\.\//weld-dataset\//g" ./${outdir}/${fold}/val.txt;
done

ls -d ./${outdir}/test/images/* > ./${outdir}/test.txt;	
sed -i "s/\.\//weld-dataset\//g" ./${outdir}/test.txt;
