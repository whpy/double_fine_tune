#!/bin/sh

echo "work space"
pwd

CUDA_VISIBLE_DEVICES="0,1" llamafactory-cli chat \
    --model_name_or_path ./model/llama3_8B/ \
    --adapter_name_or_path ./ft_saves/sft/llama3_8b/   \
    --template llama3 \
    --finetuning_type lora