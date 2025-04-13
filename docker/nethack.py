import gymnasium as gym
import nle
import janus_swi as janus # https://www.swi-prolog.org/pldoc/man?section=janus-call-prolog

env = gym.make("NetHackScore-v0")
env.reset()  # each reset generates a new dungeon
env.step(1)  # move agent '@' north
env.render()