#!/bin/bash
#SBATCH -p i64m1tga40u         # Debug partition
#SBATCH -J scoreSDE         # Job name
#SBATCH --ntasks-per-node=8 # 每个计算节点上运行 task 的数量
#SBATCH -N 1                        # Requesting a single node
#SBATCH --gres=gpu:1     # Request 1 GPU

python main.py --config configs/ve/cifar10_ddpm.py --mode train --workdir work_dir