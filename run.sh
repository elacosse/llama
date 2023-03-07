TARGET_FOLDER=/home/eric/git/llama-dl/mods
MODEL_SIZE=13B

# TARGET_FOLDER=/home/eric/git/llama-dl
# MODEL_SIZE=13B


# python -m torch.distributed.run --nproc_per_node 2 example.py --ckpt_dir ${TARGET_FOLDER}/${MODEL_SIZE} --tokenizer_path ${TARGET_FOLDER}/tokenizer.model
torchrun --nproc_per_node 1 example.py --ckpt_dir $TARGET_FOLDER/${MODEL_SIZE} --tokenizer_path $TARGET_FOLDER/tokenizer.model
