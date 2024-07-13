## structure of work place
``` shell
├── .
│   ├── LLaMA-Factory
│   ├── model
│   │   ├── Qwen2
│   │   ├── llama3_8B
│   └── sh
│       ├── run_llama.sh
│       ├── sft_llama.sh
│       ├── test_sft_llama.sh
```
where the ```LLaMA-Factory/``` stores the repo cloned from ```https://github.com/hiyouga/LLaMA-Factory.git```; ```model/``` stores the models to be trained(cloned from huggingface), two ```*.py``` in it show how to download models;```sh/``` stores the examples of usage.

## environments
We store two files about environments, ```pip_env.txt``` and ```conda_env.yaml```. They are environments of pip and conda respectively.

## install the llama-factory
configure the environment of llama_factory by the following command.
```pip install -e '.[torch,metrics]'```
we can run ```llama-factory train -h``` to check installation, which provide the details of arguments.

## run the model by llama-factory
We here specify the number of available card by adjusting parameter CUDA_VISIBLE_DEVICES
```shell
CUDA_VISIBLE_DEVICES="0,1" llamafactory-cli webchat --model_name_or_path ../model/llama3_8B --template llama3
```
It is natural to see the commander displays that:
```shell
Dropping the following result as it does not have all the necessary fields:
{'task': {'name': 'Causal Language Modeling', 'type': 'text-generation'}, 'metrics': [{'name': 'Accuracy', 'type': 'accuracy', 'value': 0.9769649941072245}]}
```

## supervised fine tune local model
We run ```sh/sft_llama.sh``` to fine tune our model. The data we use is ```LLaMA-Factory/data/identity.json```. We could directly percieve the difference by the question about identity of LLM itself after fine-tuning.

## test the fine-tuned model
We coud run ```sh/test_sft_llama.sh``` to chat with fine-tuned model.

## Note 
1. for llama3-8b-instruct, the version of the torch library should be >1.x. (2.3.1 here we are)

2. The version of the library markupsafe should not be >2.0.x (2.0.1 here we are) 