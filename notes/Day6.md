# Day 6

## Morning

### Linear Regression Summary
Given: $X \cdot Y$
=> $Y = \beta X + \epsilon$
=> $Y = \beta_0 + \sum_{j=1}^p (\beta_j X_j) + \epsilon$

### Logistic Regression
Now $Y$ doesn't mean "value 1", it means "class 1"
Instead of modeling $Y$ we model:
$$log(\text{odds ratio})$$
![[logistic.png]]
[[Day5]]
TODO: Continue

### Neural Network
Composed of **Inputs**, **Neurons**, **Links**, **Weights**, and **Output**.
$X = \{X_1, X_2, X_3\}$
$W = \{w_1, w_2, w_3\}$
![[nn.png]]

#### Forward Propagation(Activation Function):
(1) Linear $\mu = X_1 \cdot w_1 + X_2 \cdot w_2 + ... + X_n \cdot w_n$
(2) NonLinear (Activation Function)

#### Backward Propagation(Loss Function):

(1) loss(): A function that measures the distance between $Y$ and $\hat{Y}$ ($\ell(y, \hat{y})$)
(2) Optimizer:  **Gradient Descent**

First you write out the objective functioni(Your goal): (For ex. Mean Square Error)

you have to minimize the result of your loss function

$$min \sum_{i = 1}(y_i - \hat{y}i)^2\cdot\frac{1}{n}$$
Where $i$ is the index of samples ($i = 1, 2, 3, 4, ...$),
and $n$ is

At each step, $S:$
1. Compute the gradient of your loss function.
2. Update your weights.
![[error-graph.png]]

## Afternoon