# Day 1

## Morning

Everybody introduced themselves, and we talked about the programming languages that we used.

## Afternoon

Watched Iron Man video,

Data in video:

- Video of everything that's going on (Ideally very high fps, to have a smooth vision).
- Health data about himself.
- How captain america fights (Maybe even health data about him) with motion sensors and pressure sensors for newtons of force.
- Force of his hits in N * m
- 3D recognition of where captain america is.
- iris scan to see where he is looking.


## Questions:

1. How to collect data?
	- Hits: You can find the impact force by knowing the speed of the punch and the time in which it hits you. By also knowing the average weight of the punch, you can find the force. This could also be done more simply with motions sensors, but you would only know the power of the punch once you get hit.
	- You need to be sure that you train your AI for what your goal is, or the training data will be dirty.

	- Datasets
		- Data:
			- x -> Features/Variables
			- y -> Target:
				1. Find next action.
				2. Choose what to do: dodge or block.
		- Training Set
		- Testing Set




### Supervised Learning

##### You know exactly what your data is, and you know exactly what your target is.

Given data x (explanatory variable) and y (response variable)

You want to build the function f() which makes it so that f(x) = y. When this function is accurate, the ML model is accurate.

Pipeline:

(I): Collect data -> Process Data -> ML -> Backtest

(II): Build the model in a software package, so that when you use your model with new data, the result is still accurate.
	new data -> your package -> accurate prediction
