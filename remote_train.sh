#!/bin/bash

DIR=..
bash /nfs/volume-902-16/tangwenbo/ofs-1.sh

model_path="./models/train"
output_path="./outputs/train"
log_path="./logs/train"
#seed=123
seed=123456
echo model_path=${model_path}, seed=${seed}

cd /nfs/ofs-902-1/object-detection/jiangjing/experiments/TSL300 && CUDA_VISIBLE_DEVICES=0 /home/luban/apps/miniconda/miniconda/envs/torch1101/bin/python \
  -W ignore ./main.py --model_path ${model_path} --output_path ${output_path} --log_path ${log_path} --seed ${seed}
