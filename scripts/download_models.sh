# --------------------------------
# Setup
# --------------------------------
export REPO_DIR=$PWD
if [ ! -d $REPO_DIR/models ] ; then
    mkdir -p $REPO_DIR/models
fi
BLOB='https://datarelease.blob.core.windows.net/metro'


# --------------------------------
# Download our pre-trained models
# --------------------------------
if [ ! -d $REPO_DIR/models/graphormer_release ] ; then
    mkdir -p $REPO_DIR/models/graphormer_release
fi
# (1) Mesh Graphormer for human mesh reconstruction (trained on H3.6M + COCO + MuCO + UP3D + MPII)
curl -L -o $REPO_DIR/models/graphormer_release/graphormer_h36m_state_dict.bin $BLOB/models/graphormer_h36m_state_dict.bin
# (2) Mesh Graphormer for human mesh reconstruction (trained on H3.6M + COCO + MuCO + UP3D + MPII, then fine-tuned on 3DPW)
curl -L -o $REPO_DIR/models/graphormer_release/graphormer_3dpw_state_dict.bin $BLOB/models/graphormer_3dpw_state_dict.bin
# (3) Mesh Graphormer for hand mesh reconstruction (trained on FreiHAND)
curl -L -o $REPO_DIR/models/graphormer_release/graphormer_hand_state_dict.bin $BLOB/models/graphormer_hand_state_dict.bin


# --------------------------------
# Download the ImageNet pre-trained HRNet models 
# The weights are provided by https://github.com/HRNet/HRNet-Image-Classification
# --------------------------------
if [ ! -d $REPO_DIR/models/hrnet ] ; then
    mkdir -p $REPO_DIR/models/hrnet
fi
curl -L -o $REPO_DIR/models/hrnet/hrnetv2_w64_imagenet_pretrained.pth $BLOB/models/hrnetv2_w64_imagenet_pretrained.pth
curl -L -o $REPO_DIR/models/hrnet/hrnetv2_w40_imagenet_pretrained.pth $BLOB/models/hrnetv2_w40_imagenet_pretrained.pth
curl -L -o $REPO_DIR/models/hrnet/cls_hrnet_w64_sgd_lr5e-2_wd1e-4_bs32_x100.yaml $BLOB/models/cls_hrnet_w64_sgd_lr5e-2_wd1e-4_bs32_x100.yaml
curl -L -o $REPO_DIR/models/hrnet/cls_hrnet_w40_sgd_lr5e-2_wd1e-4_bs32_x100.yaml $BLOB/models/cls_hrnet_w40_sgd_lr5e-2_wd1e-4_bs32_x100.yaml
