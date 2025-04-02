#!/bin/bash

JTVAE_CPU_PATH="/FNL_JTVAE/JTVAE/CPU-P3"
source activate cpu_env
export PYTHONPATH=$JTVAE_CPU_PATH

WRK="/data/preprocess"
cd $WRK

CODE="$JTVAE_CPU_PATH""/fast_molvae/preprocess.py"
TRA="/data/data/train.txt"
DIR="/data/preprocess/preprocessed-train"
OUT="preprocess-train.out"
time python $CODE -t $TRA       \
            -n 100 -j 36  \
            -d $DIR       \
            >& $OUT
