#!/bin/bash
#
#$ -S /bin/bash
#$ -N zero_shot
#$ -o /homes/eva/q/qestienne/projects/explainability/logs/zero_shot_out.log
#$ -e /homes/eva/q/qestienne/projects/explainability/logs/zero_shot_err.log
#$ -q all.q
#$ -l matylda3=0.5,gpu=1,gpu_ram=16G,ram_free=64G,mem_free=30G
#

# Configure environment
project_name="kdss"
env_name="kdss"
source ~/.bashrc
conda activate $env_name
cd $PROJECTS_DIR/$project_name
export CUDA_VISIBLE_DEVICES=$(free-gpus.sh 1)

python $PROJECTS_DIR/$project_name/scripts/python/script.py \
    --root_directory=.
