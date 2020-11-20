# Proximal Policy Optimization (PPO) for playing Super Mario Bros

## Introduction

Here is my python source code for training an agent to play super mario bros. By using Proximal Policy Optimization (PPO) algorithm introduced in the paper **Proximal Policy Optimization Algorithms** [paper](https://arxiv.org/abs/1707.06347).


## How to run


* **Train your model** by running `python train.py`. For example: `python train.py --world 5 --stage 2 --lr 1e-4 --action_type complex`
* **Test your trained model** by running `python test.py`. For example: `python test.py --world 5 --stage 2 --action_type complex --iter 100`

For CSE server, do not forget add these two lines.
```
Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
export DISPLAY=:0
```

## Docker

For being convenient, I will later provide Dockerfile which could be used for running training as well as test phases

<!---
Assume that docker image's name is ppo. You only want to use the first gpu. You already clone this repository and cd into it.

Build:

`sudo docker build --network=host -t ppo .`

Run:

`docker run --runtime=nvidia -it --rm --volume="$PWD"/../Super-mario-bros-PPO-pytorch:/Super-mario-bros-PPO-pytorch --gpus device=0 ppo`

Then inside docker container, you could simply run **train.py** or **test.py** scripts as mentioned above.

**Note**: There is a bug for rendering when using docker. Therefore, when you train or test by using docker, please comment line `env.render()` on script **src/process.py** for training or **test.py** for test. Then, you will not be able to see the window pop up for visualization anymore. But it is not a big problem, since the training process will still run, and the test process will end up with an output mp4 file for visualization

## Why there are still 3 levels missing?

In world 4-4, 7-4 and 8-4, map consists of puzzles where the player must choose the correct the path in order to move forward. If you choose a wrong path, you have to go through path you visited again. That's why my agent at the moment can not complete these 3 levels
-->