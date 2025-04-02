#!/bin/bash

JTVAE_GPU_PATH="/FNL_JTVAE/JTVAE/GPU-P3"
source activate gpu_env
export PYTHONPATH=$JTVAE_GPU_PATH

WRK="/data/train"
cd $WRK

CODE="$JTVAE_GPU_PATH""/fast_molvae/vae_train_gpu.py"
TRA="/data/preprocessed-train"
VOC="/data/all_vocab.txt"
DIR="/data/trained_models"
OUT="train.out"

time python $CODE --train $TRA      \
                    --vocab $VOC      \
                   --save_dir $DIR   \
                   --num_workers 8   \
                   --mult_gpus False \
                    >& $OUT
