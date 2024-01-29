export CUDA_VISIBLE_DEVICES=5
python ./test.py --datapath "./dataset" \
                 --benchmark pascal \
                 --fold 1 \
                 --bsz 1 \
                 --nworker 2 \
                 --backbone resnet50 \
                 --feature_extractor_path "./pretrained_model/resnet50_a1h-35c100f8.pth" \
                 --logpath "./logs_v4" \
                 --load "./logs_v4/train/fold_1_0708_005932/best_model.pt" \
                 --nshot 1 \
                 --vispath "./vis/v4_pascal_fold_1/nshot_1/" \
                 --visualize \
                #  --use_original_imgsize
