from huggingface_hub import snapshot_download
from huggingface_hub import login

token = "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"
login(token = token)
repo_id="Qwen/Qwen2-7B-Instruct"
local_dir="./Qwen2"
local_dir_use_symlinks = False


snapshot_download(
    repo_id=repo_id,
    local_dir=local_dir,
    local_dir_use_symlinks=local_dir_use_symlinks,
    token=token
)