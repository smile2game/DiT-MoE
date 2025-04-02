# nohup 
torchrun --nnodes=1 --nproc_per_node=2 train.py \
--model DiT-S/2 \
--num_experts 8 \
--num_experts_per_tok 2 \
--image-size 256 \
--global-batch-size 4 \
--data-path /data/ImageNet/train \
--vae-path /data/DiT-MoE/DiT-MoE/sd-vae-ft-mse
#  > output.log 2>&1 &