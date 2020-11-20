#!/bin/bash
#SBATCH --job-name=ppo_test1
#SBATCH --mail-user=zxsong@cse.cuhk.edu.hk
#SBATCH --mail-type=ALL
#SBATCH --output=/research/dept7/zxsong/Super-mario-bros-PPO-pytorch/output1.txt ##Do not use "~" point to your home!
#SBATCH --gres=gpu:1

## Below is the commands to run , for this example,
## Create a sample helloworld.py and Run the sample python file 
## Result are stored at your defined --output location

python ./train.py
