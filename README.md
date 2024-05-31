# LoHi-Weld: Weld Defect Detection and Classification System

## Overview
This repository contains a system for detecting and classifying weld defects using YoloV7-Tiny.
The system is designed to identify various types of defects in welds and classify them into predefined categories(pores, stains, discontinuities and deposit),
facilitating quality control in welding processes.


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

## Directory Structure


weld-defect-detection/
│
├── input/               # Directory for input weld images
├── output/              # Directory for output results
├── models/              # Directory for pre-trained models
├── src/                 # Source code for the system
│   ├── detect.py        # Script for defect detection
│   ├── classify.py      # Script for defect classification
│   ├── preprocess.py    # Image preprocessing utilities
│   ├── postprocess.py   # Postprocessing utilities
│   └── utils.py         # Utility functions
│
├── app.py               # Main application script
├── requirements.txt     # Python dependencies
├── README.md            # This README file
└── LICENSE              # License for the repository


## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## Contact

For any questions or inquiries, please contact [sylvioblk@gmail.com](mailto:sylvioblk@gmail.com).

---

Thank you for using our Weld Defect Detection and Classification System! We hope it helps you maintain the highest standards of quality in your welding processes.
