# nohup 
python -m torch.distributed.launch --nnodes=1 --nproc_per_node=2 train_deepspeed.py \
--deepspeed_config config/zero2.json \
--model DiT-B/2 \
--num_experts 8 \
--num_experts_per_tok 2 \
--data-path /data/ImageNet/train \
--vae-path /data/DiT-MoE/DiT-MoE/sd-vae-ft-mse \
--train_batch_size 4