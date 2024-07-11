## install the llama-factory
configure the environment of llama_factory by the following command.
```pip install -e '.[torch,metrics]'```

## run the model by llama-factory
```CUDA_VISIBLE_DEVICES=[0,1] llamafactory-cli webchat --model_name_or_path ../model/llama3_8B --template llama3
```

## Note 
1. for llama3-8b-instruct, the version of the torch library should be >1.x. (2.3.1 here we are)

2. The version of the library markupsafe should not be >2.0.x (2.0.1 here we are) 