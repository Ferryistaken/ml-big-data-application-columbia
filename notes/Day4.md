# Day 4

## Problem: How to code the animations

How would we code this?

- Get `rnorm` data (2 `rnorm` functions for each dot, for x and y), you could even use the same `rnorm`
- Time is just a sequential vector (1, 2, 3, 4, ..., n)
- The new `x` and `y` need to be `oldx + x` and `oldy + y`

How can you simulate a disease by "infecting" the cells that go near an infected cell?

- Keep track of the x and y value of each cell
- Every step, calculate the distance from another infected cell
- If they are too close infect them
- Continue Simulation

## Math background

Motivation: Accuracy/Error Rate -> what do these actually mean

Given: $x_1$ and $x_2$

$Q_1$: Distance between $x_1$ and $x_2$
$Q_2$: What is it that we are comparing? (Integers, Vectors, Matrix)

------

### Example: Coin Toss

Heads/Tails <- Sample Space

You conduct a seris of coin toss ${H, T, H, T, T, T, H, H}$

In $R$ you have `plyr::count()` -> returns all the possible scenarios and their frequency

$H: 4$
$T: 4$

Mean/Expectation: E($\cdot$) <- expectiation

$X$: Random variable that represents coin toss (1 or 0)

$R$ : `mean(c(1, 0, 1, 0, 0, 0, 1, 1))`

#### How do you compute mean?

- Empirical Version:
  
  - $(1 + 0 + 1+ 0 + 0 + 0 + 1 + 1)/6$

- Theoretical Version:
  
  - $X ~ Bernulli(P)$
  
  - $P(x = 1) = P$ and $P(x = 0) = 1- P$
  
  - $P(a = b)$  prob of a being b in the sample space

- Ex = $\sum_{x\in R_x} x \cdot P(x)$
  
  - Notation:
    
    - $R_x = \{1, 0\}$
    
    - $x \in R_x$ : $x$ belongs to the set of $R_x$

- Ex = $\sum_{x \in R_X} x \cdot P(x)$
  
  - Compute $x \cdot P(x)$ in $x = 1$ 

[![Bernulli Video](http://img.youtube.com/vi/bT1p5tJwn_0/0.jpg)](http://www.youtube.com/watch?v=bT1p5tJwn_0 "Bernulli Distribution Explained")

----

$R$: `rnorm(n, mean = ?, sd = ?)`

$x$ ~ $N(\mu, \sigma^2)$, where $x$ is random variable, $\mu$ is average and $\sigma^2$ is standard deviation

![](/home/ferry/.var/app/com.github.marktext.marktext/config/marktext/images/2021-07-01-10-55-55-image.png)

$f(x) = \frac{1}{\sigma\sqrt{2\pi}}^{-1\frac{1}{2}(\frac{x-\mu}{\sigma})^2}$

-----

Define variance of Bernulli random variable

$\sum_{x\in R_x} x \cdot P(x)$

$Ex^2$ = $\sum_{x\in R_x} x^2 \cdot P(x)$
