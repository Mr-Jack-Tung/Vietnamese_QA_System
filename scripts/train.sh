accelerate launch --config_file "src/models/configs/config_defaultMultiGPU.yaml" train.py \
        --lora_r 8  \
        --model_name_or_path gpt2  \
        --max_train_samples 2000   \
        --max_eval_samples 50   \
        --train_batch_size 2    \
        --val_file "src/data/features/final_storge_converted/yahma_alpaca-cleaned/AlpacaCleaned_translatedFormated.json" "src/data/features/final_storge_converted/yahma_alpaca-cleaned/AlpacaCleanedFormated.json"  \
        --num_epochs 4   \
        --model_type CAUSAL_LM    \
        --better_transformer True   \
        --gradient_accumulation_steps 30   \
        --eval_batch_size 3   \
        --lora_alpha 64    \
        --Optim_name PagedLion4bit   \
        --enable_model_offload True    \
        --gradient_checkpointing True \
        --use_4bit True

