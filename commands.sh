#!/bin/bash

# Lancement de l'entrainement du GAN
PL_TORCH_DISTRIBUTED_BACKEND=gloo python train/train_vqgan.py dataset=default dataset.root_dir=data model=vq_gan_3d model.gpus=1 model.default_root_dir_postfix='own_dataset' model.max_epochs=1000 model.precision=16 model.embedding_dim=8 model.n_hiddens=16 model.downsample=[2,2,2] model.num_workers=32 model.gradient_clip_val=1.0 model.lr=3e-4 model.discriminator_iter_start=10000 model.perceptual_weight=4 model.image_gan_weight=1 model.video_gan_weight=1 model.gan_feat_weight=4 model.batch_size=2 model.n_codes=16384 model.accumulate_grad_batches=1

# Lancement de l'entrainement du modèle de diffusion
python train/train_ddpm.py model=ddpm dataset=default model.results_folder_postfix='own_dataset' model.vqgan_ckpt=/medicaldiffusion/checkpoints/gan/DEFAULT/own_dataset/lightning_logs/version_0/checkpoints/latest_checkpoint.ckpt model.diffusion_img_size=16 model.diffusion_depth_size=16 model.diffusion_num_channels=8 model.dim_mults=[1,2,4,8] model.batch_size=10 model.gpus=0 dataset.root_dir=data model=ddpm
