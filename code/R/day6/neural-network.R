rm(list = ls())
gc()

library(keras)

data = read.csv("/home/ferry/Documents/learning/columbia/columbia-machine-learning-big-data-real-world-applications/code/archive/data.csv")

data = data[, -1]
data = data[, -ncol(data)]
data = data.frame(y=data$diagnosis, data[, -1])

as.numeric(as.factor(data$y)) - 1 # 1: malicious, 0: benign

cutoff = 0.8 # fraction in the dataset that you want to use as training or testing