import numpy as np
from PIL import Image
from PIL import ImageDraw
from PIL import ImageFont
from tqdm import tqdm
import argparse
import sys
import cv2
import math
import json
rgb = True

#######
if __name__ == "__main__":
   fold0 = open(sys.argv[1])
   fold1 = open(sys.argv[2])
   fold2 = open(sys.argv[3])
   fold3 = open(sys.argv[4])
   fold4 = open(sys.argv[5])
   nfold = 0
   nstat_p = []
   nstat_r = []
   nstat_f1 = []
   nstat_map = []
   for fin in (fold0, fold1, fold2, fold3, fold4):
     for line in fin:
       clean = line.strip('\n')
       f = clean.split(',')
       mp = float(f[0])
       mr = float(f[1])
       mf1 = float(f[2])
       map50 = float(f[3])
       nstat_p.append(mp)
       nstat_r.append(mr)
       nstat_f1.append(mf1)
       nstat_map.append(map50)
     nfold += 1
   np_nstat_p = np.array(nstat_p)   
   np_nstat_r = np.array(nstat_r)   
   np_nstat_f1 = np.array(nstat_f1)   
   np_nstat_map = np.array(nstat_map)   
   p = np.mean(np_nstat_p)
   r = np.mean(np_nstat_r)
   f = np.mean(np_nstat_f1)
   std_f = np.std(np_nstat_f1)
   m = np.mean(np_nstat_map)
   std_m = np.std(np_nstat_map)
   print('P.     R.      F1.      map@50  ')    
   print(("%.2f &  %.2f &   %.2f (%.2f) &   %.2f (%.2f)") % (p, r, f, std_f, m, std_m))  
