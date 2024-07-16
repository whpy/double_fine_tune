# Example of fine-tuning Qwen2 by unsloth

## Abstract 
Use unsloth to fine-tune Qwen2-7B on existing resources.

## Environments
The files conda_unsloth_environment.yml and requirements.txt stores configuration of conda and pip respectively.

## Installation
The installation is simple:
```shell
conda create --name unsloth_env \
    python=3.10 \
    pytorch-cuda=<11.8/12.1> \
    pytorch cudatoolkit xformers -c pytorch -c nvidia -c xformers \
    -y
conda activate unsloth_env

python -m pip install "unsloth[colab-new] @ git+https://github.com/unslothai/unsloth.git"

python -m pip install --no-deps "trl<0.9.0" peft accelerate bitsandbytes
```
https://github.com/unslothai/unsloth

## Usage
Directly run the script ```Qwen2.py```. The script includes downloading model ```Qwen2-7B``` to ```~/.cache/huggingface``` and training the model by online dataset. The final fine-tuned adapter would also be stored.