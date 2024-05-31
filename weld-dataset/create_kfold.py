import numpy as np
import pandas as pd
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
from tqdm import tqdm
import argparse
import sys
import cv2
import math
import json
import random
import os
import warnings
from collections import defaultdict
from sklearn.model_selection import KFold, train_test_split

warnings.filterwarnings("ignore")

rgb = True

mdict = {
  "pore": 0,
  "deposit": 1,
  "discontinuity": 2,
  "stain": 3
}

dict_img = defaultdict(list)

def create_kfold (iarray, src_path, dst_path, file):
  X_train, X_test = train_test_split (iarray, test_size=0.2, random_state=1) 
  for image in X_test:
    file.write("cp %s/%s.jpg ./%s/test/images\n" % (src_path, image, dst_path))
    file.write("cp %s/%s.yolo ./%s/test/labels/%s.txt\n" % (src_path, image, dst_path, image))
  print("Train (size): ", len(X_train), "Test (size): ", len(X_test))
  kfold = KFold (n_splits=5, shuffle=True, random_state=100)  
  ifold = 0
  for i, (train_idx, test_idx) in enumerate(kfold.split(X_train)):
    print(f"Fold {i}")
    train_fold, val_fold = X_train[train_idx], X_train[test_idx]
    for key in train_fold:
      file.write("cp %s/%s.jpg ./%s/fold%d/train/images\n" % (src_path, key, dst_path, ifold))
      file.write("cp %s/%s.yolo ./%s/fold%d/train/labels/%s.txt\n" % (src_path, key, dst_path, ifold, key))
    for key in val_fold:
      file.write("cp %s/%s.jpg ./%s/fold%d/val/images\n" % (src_path, key, dst_path, ifold))
      file.write("cp %s/%s.yolo ./%s/fold%d/val/labels/%s.txt\n" % (src_path, key, dst_path, ifold, key))
    ifold += 1
    print ("Fold size (train): ", len(train_fold))
    print ("Fold size (test): ", len(val_fold))

#######
if __name__ == "__main__":
   array = []
   data = open(sys.argv[1])
   src_path = sys.argv[2]
   dst_path = sys.argv[3]
   n = 0
   for line in data:
       image = line.strip('\n')
       array.append(image)
       n += 1   
   size = len(array)
   print ('Array size:     ', size, n)
   iarray = np.array(array)
   
   gen = open(dst_path + '/generate.sh', 'w')

   create_kfold (iarray, src_path, dst_path, gen)

   print('Writing: ' + dst_path + '/generate.sh')

   gen.close()
