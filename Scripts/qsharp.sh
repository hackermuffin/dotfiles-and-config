#!/bin/bash

file_path=${1-"/home/peter/NextCloud/Peter/ANU Files/2021 S2/COMP3710_Quantum/"}

eval "$(/home/peter/miniconda3/bin/conda shell.bash hook)"
conda activate qsharp-env
jupyter notebook "$file_path"
