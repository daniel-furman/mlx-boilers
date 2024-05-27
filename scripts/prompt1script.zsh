#!/bin/zsh

# This line prints the current date and time
echo "Current date and time: $(date)"

# This line prints the hostname of the current system
echo "Hostname: $(hostname)"

##############################################

# This line sets the prompt
prompt="What is your favorite movie?"

# This line prints the prompt
# echo "Prompt:" $prompt

# List of models
# mlx-community/openchat-3.6-8b-20240522-4bit
# dfurman/Mistral-7B-Instruct-v0.3-mlx-4bit
# mlx-community/Meta-Llama-3-8B-Instruct-4bit
# mlx-community/aya-23-8B-4bit
# mlx-community/Phi-3-mini-128k-instruct-4bit

# This line sets the model
model="mlx-community/openchat-3.6-8b-20240522-4bit"

# This line prints the model
# echo "Model:" $model

# This line runs the model on the prompt
python3 -m mlx_lm.generate \
            --model $model \
            --prompt $prompt \
            --max-tokens 200 \
            --temp 0.6 \
            --top-p 1.0 \
            --seed 0