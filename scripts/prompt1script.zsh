#!/bin/zsh

# This line prints the current date and time
echo "Current date and time: $(date)"

# This line prints the hostname of the current system
echo "Hostname: $(hostname)"

##############################################

prompt="What is your favorite color?"
echo "Prompt:" $prompt

python3 -m mlx_lm.generate \
            --model "mlx-community/Meta-Llama-3-8B-Instruct-4bit" \
            --prompt $prompt \
            --max-tokens 200 \
            --temp 0.6 \
            --top-p 1.0 \
            --seed 0