#!/bin/bash

JTVAE_CPU_PATH="/FNL_JTVAE/JTVAE/CPU-P3"
source activate cpu_env
export PYTHONPATH=$JTVAE_CPU_PATH

WRK="/data/vocabulary"
cd $WRK

CODE="$JTVAE_CPU_PATH""/fast_jtnn/mol_tree.py"
DATA="/data/all.txt"
OUT="/data/all_vocab.txt"
time python $CODE < $DAT > $OUT