# LoHi-Weld: Weld Defect Detection and Classification System

## Overview
This repository contains a system for detecting and classifying weld defects using YoloV7-Tiny.
The system is designed to identify various types of defects in welds and classify them into predefined categories
(pores, stains, discontinuities and deposit),facilitating quality control in welding processes.

![](/lohi-weld.jpeg)


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
    

4. *Download Pre-trained Models:*
    Download the pre-trained models from the provided link and place them in the models/ directory.
    Link: https://drive.google.com/file/d/1EJuBWMt1tfIjmFcHma0MiFoyK70gtaoA/view?usp=sharing

5. *Downlod de image dataset (High and Low)*
    Link: https://drive.google.com/file/d/1pXeEnREfV_MYcL5MY2vkd9njBm_blPUK/view?usp=sharing
    

## Usage

1. *Load Weld Images:*
   - Load the images of welds that need to be inspected into the weld-dataset/ directory.
   - Low imagens on the weld-dataset/low_resolution_welds
   - High imagens on the weld-dataset/high_resolution_welds 

2. *Run Detection and Classification:*
   - Execute the script to process the images and generate results.
     bash
     python detect_and_classify.py
     

3. *View Results:*
   - The results, including detected defects and their classifications, will be saved in the output/ directory. Use the provided GUI to visualize the results.


# Citing

```
@ARTICLE{Sylvio2024,
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

---

Thank you for using our LoHi-Weld Defect Detection and Classification System! We hope it helps you maintain the highest standards of quality in your welding processes.
