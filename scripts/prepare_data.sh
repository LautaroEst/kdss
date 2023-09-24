#!/bin/bash

project="kdss"
env_name="kdss"

source ~/.bashrc # Define $PROJECTS_DIR and $DATA_DIR
conda activate $env_name

# Download and link data
echo "Downloading data..."
mkdir -p $PROJECTS_DIR/$project/data/glue/
for task in "cola" "sst2" "mrpc" "qqp" "stsb" "mnli" "mnli_mismatched" "mnli_matched" "qnli" "rte" "wnli"; do
    mkdir -p $DATA_DIR/glue/$task
    python $PROJECTS_DIR/$project/scripts/python/download_data.py $DATA_DIR $task
    ln -s $DATA_DIR/glue/$task $PROJECTS_DIR/$project/data/glue/$task
done
    
conda deactivate