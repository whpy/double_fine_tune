#!/bin/sh

echo "work space"
pwd


CUDA_VISIBLE_DEVICES="0,1" llamafactory-cli train \
    --stage sft \
    --do_train \
    --model_name_or_path ./model/llama3_8B/ \
    --dataset identity \
    --dataset_dir ./LLaMA-Factory/data/ \
    --template llama3 \
    --finetuning_type lora \
    --output_dir ./ft_saves/sft/llama3_8b/ \
    --overwrite_cache \
    --overwrite_output_dir \
    --cutoff_len 1024 \
    --preprocessing_num_workers 16 \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 8 \
    --lr_scheduler_type cosine \
    --logging_steps 50 \
    --warmup_steps 20 \
    --save_steps 100 \
    --eval_steps 50 \
    --evaluation_strategy steps \
    --load_best_model_at_end \
    --learning_rate 5e-5 \
    --num_train_epochs 5.0 \
    --max_samples 1000 \
    --val_size 0.1 \
    --plot_loss \
    --fp16