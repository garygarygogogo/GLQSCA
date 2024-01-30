## Global-Local Query-Support-Cross-Attention For Few-Shot Semantic Segmentaion
This is the code for the IJCNN 2024 Submission "Global-Local Query-Support-Cross-Attention For Few-Shot Semantic Segmentaion".

## Requirements

- Python 3.8
- PyTorch 1.10.0
- cuda 11.4

## Prepare Dataset

- PASCAL-5<sup>i</sup>:  [VOC2012](http://host.robots.ox.ac.uk/pascal/VOC/voc2012/) + [SBD](http://home.bharathh.info/pubs/codes/SBD/download.html)

## Prepare Backbone

Downloading the following pre-trained backbones:

> 1. [ResNet-50](https://github.com/rwightman/pytorch-image-models/releases/download/v0.1-rsb-weights/resnet50_a1h-35c100f8.pth) pretrained on ImageNet-1K by [TIMM](https://github.com/rwightman/pytorch-image-models)
> 2. [ResNet-101](https://github.com/rwightman/pytorch-image-models/releases/download/v0.1-rsb-weights/resnet101_a1h-36d3f2aa.pth) pretrained on ImageNet-1K by [TIMM](https://github.com/rwightman/pytorch-image-models)

Create a directory 'backbones' to place the above backbones.

## Train and Test
You can use our scripts to build your own. Training will take approx. 1.5 days until convergence (trained with four V100 GPUs)

> ```bash
> sh ./scripts/train.sh
> ```

For testing, you have to prepare a pretrained model. You can train one by yourself.
> ```bash
> sh ./scripts/test.sh
> ```
