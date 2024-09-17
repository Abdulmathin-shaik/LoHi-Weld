# LoHi-WELD: a novel industrial dataset for weld defect detection and classification, a deep learning study, and future perspectives

## Overview
This repository contains the source code of LoHi-WELD, an original and public database to address the problem of weld defect detection and classification of four common types of defects --- pores, deposits, discontinuities, and stains --- with 3,022 real weld bead images manually annotated for visual inspection, composed by low and high-resolution images, acquired from a Metal Active Gas robotic welding industrial process. We also explore variations of a baseline deep architecture for the proposed dataset based on a YOLOv7 network and discuss several case analyses. We show that a lightweight architecture, ideal for industrial edge devices, can achieve up to 0.69 of mean average precision (mAP) considering a fine-grained defect classification and 0.77 mAP for a coarse classification.
In our paper, see the citation, open challenges and a deep review of datasets for welding are also presented, promoting future research and enabling robust solutions for industrial scenarios.

![](/lohi-weld.jpeg)

## Timeline of NDI methods for weld defects detection and classification and overview of welding datasets

![](/summary.jpg)

## Installation

This project was created using the YoloV7 implementation developed by WongKinYiu.
Link for original repository: https://github.com/WongKinYiu/yolov7

It is possible to use the installation dependencies available in the original YoloV7 repository,
but some additional items are included in the requirements of this repository

To install and run the system, follow these steps:

1. *Clone the Repository:*
    bash
    git clone https://github.com/SylvioBlock/LoHi-Weld.git
    LoHi-Weld
    

2. *Create a Virtual Environment:*
    bash
    python3 -m venv venv
    source venv/bin/activate  # You can use conda as well.
    

3. *Install Dependencies:*
    bash
    pip install -r requirements.txt
    

4. *Download the pre-trained models and decompress in the main folder (runs).*
    Link: [Google Drive](https://drive.google.com/file/d/1EJuBWMt1tfIjmFcHma0MiFoyK70gtaoA/view?usp=sharing).

6. *Download de image dataset (high/low weld beads, json annotations, and kfolds) and decompress in the main folder (weld_dataset)*
    Link: [Google Drive](https://drive.google.com/file/d/1pXeEnREfV_MYcL5MY2vkd9njBm_blPUK/view?usp=sharing).

7. *Execute: ./test.sh (or train.sh for retraining)*

## Full images

*For those interested, the full-resolution original images (both low and high) can also be downloaded:

Link: [Google Drive](https://drive.google.com/drive/folders/1m1Bvo4u4Qre8yFjEe4XNxdfYa3A5YiW4?usp=sharing).

![](/low.jpg)

## Citing


```
@article{Sylvio2024,
  title={LoHi-WELD: a novel industrial dataset for weld defect detection and classification, a deep learning study, and future perspectives}, 
  author={S.B. {BLock}, R.D. da {Silva}, A.E. {Lazzaretti} and R. {Minetto}},
  journal={IEEE Access}, 
  year={2024},
  volume={1},
  number={1},
  issn={2169-3536},
  pages={1-12},
  doi={10.1109/ACCESS.2024.3407019},
  url = {https://ieeexplore.ieee.org/document/10540490}
}
```

## Contact

For any questions or inquiries, please contact [sylvioblk@gmail.com](mailto:sylvioblk@gmail.com).

## Software license agreement 

Our dataset/code can be used for research, non-comercial or comercial purposes for free with proper citation.
