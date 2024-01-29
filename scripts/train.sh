# python -u -m torch.distributed.launch --nnodes=1 --nproc_per_node=4 --node_rank=0 --master_port=16005 \
export CUDA_VISIBLE_DEVICES=5,6
export OMP_NUM_THREADS=1
python -m torch.distributed.launch --nproc_per_node=2 --master_port=16011 \
./train.py --datapath "./dataset" \
           --benchmark pascal \
           --fold 3 \
           --bsz 8 \
           --nworker 2 \
           --backbone resnet50  \
           --feature_extractor_path "./pretrained_model/resnet50_a1h-35c100f8.pth" \
           --logpath "./experiments/logs_v7" \
           --lr 1e-3 \
           --nepoch 100