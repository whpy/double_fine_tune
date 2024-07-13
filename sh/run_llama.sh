#!/bin/sh

echo "work space"
pwd

CUDA_VISIBLE_DEVICES="0,1" llamafactory-cli chat \
    --model_name_or_path ./model/llama3_8B/ \
    --template llama3