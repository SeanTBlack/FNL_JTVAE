#!/bin/bash

JTVAE_CPU_PATH="/FNL_JTVAE/JTVAE/CPU-P3"
source activate cpu_env
export PYTHONPATH=$JTVAE_CPU_PATH

WRK="/data/reconstruction_eval"
cd $WRK

CODE="$JTVAE_CPU_PATH""/fast_molvae/EDF.py"
DAT="/data/test.txt"
VOC="/data/all_vocab.txt"
MOD="/data/trained_models/model.epoch-<enter_model_number_here>"
OUT="/data/reconstruction_eval/recon.out-<enter_model_number_here>"

python -u $CODE -d $DAT        \
               -v $VOC        \
               -m $MOD        \
               -c 36 -b 40    \
               >& $OUT