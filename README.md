# Proximal Policy Optimization (PPO) for playing Super Mario Bros

## Introduction

Here is the course project for IERG 5350. In this project, we successfully train an agent to play super mario bros. By using Proximal Policy Optimization (PPO) algorithm **Proximal Policy Optimization Algorithms** [paper](https://arxiv.org/abs/1707.06347).

## Demo
Below are the demos for all solved levels by Dec. 10, 2020. Note that our agent can be further trained to solve more levels without too much efforts. You can try it by simply changing the learning rate.
<p align="left">
  <img src="demo/video-1-1.gif" width="200">
  <img src="demo/video-1-2.gif" width="200">
  <img src="demo/video-1-3.gif" width="200">
  <img src="demo/video-1-4.gif" width="200"><br/>
  <i>Current solved levels (All stages in World 1)</i>
</p>

### Comparison with human players in warpless mode
we compare the performance of the trained agent with that of human player world record under the [warpless mode](https://www.speedrun.com/smb1#Warpless).

| Level            | Trained Agent | World Record | Average Human Players |
|:----------------:|:-------------:|:------------:|:---------------------:|
| World 1, Stage 1 | 52            | 52           | 64                    |
| World 1, Stage 2 | 53            | 50           | 63                    |
| World 1, Stage 3 | 52            | 42           | 58                    |
| World 1, Stage 4 | 54            | 40           | 57                    |


## How to run

* **Train your model** by running `python train.py`. For example: `python train.py --world 5 --stage 2 --lr 1e-4 --action_type complex`
* **Test your trained model** by running `python test.py`. For example: `python test.py --world 5 --stage 2 --action_type complex --iter 100`

For CSE server, do not forget add these two lines (tested).
```
Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
export DISPLAY=:0
```

## Docker

Build:

`sudo docker build --network=host -t ppo .`

Run:

`docker run --runtime=nvidia -it --rm --volume="$PWD"/../Super-mario-bros-PPO-pytorch:/Super-mario-bros-PPO-pytorch --gpus device=0 ppo`

Then inside docker container, you could simply run **train.py** or **test.py** scripts as mentioned above.
