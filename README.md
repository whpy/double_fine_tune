## install the llama-factory
configure the environment of llama_factory by the following command.
```pip install -e '.[torch,metrics]'```

## Note 
1. for llama3-8b-instruct, the version of the torch library should be >1.x. (2.3.1 here we are)

2. The version of the library markupsafe should not be >2.0.x (2.0.1 here we are) 