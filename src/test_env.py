# test env after changing the reward
from .env import create_train_env
from gym_super_mario_bros.actions import SIMPLE_MOVEMENT

env = create_train_env(1, 1, SIMPLE_MOVEMENT)

for step in range(100):
	if done:
		env.reset()
	state, reward, done, info = env.step(env.action_space.sample())
	print("Reward for step {}: {}".format(step, reward))