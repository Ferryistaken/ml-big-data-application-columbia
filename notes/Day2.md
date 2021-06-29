# Day 2

## Morning

[PapersWithCode](https://paperswithcode.com) is an awesome website to learn about machine learning and find open source datasets that we can use.

Our project will probably use resources from this website, and we will need to present them to each other.

[UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/index.php) is an 'easier' alternative to PapersWithCode.

Our "paper" should have this structure:

- Description/Abstract
- Data (Description and usage, also include goal of the model)
- Benchmark (Also called literature review)
- Proposed Model/Algorithm (Describe the proposed model and their architecture (maybe a diagram))
  - Easy way:
    - You can adopt one of the models in the benchmark and update new sets of parameters.
      - Example:
      - I have a data with a variable $x$, the model $f(\cdot)$ is a function that learns from $x$ and produces an educated guess of $y$. I proposed to use $x^2$, and instead of using the old educated guess of $\hat{y}_1 = f(x)$ we are using $\hat{y}_2 = f(x^2)$. I can show with empirical research that my model is more accurate
  - Hard way:
    - You can design a new model. Originally we have the data $x$ and the model $f(\cdot)$ with the educated guess of $\hat{y}_1 = f(x)$. Now I propose a new model $g(\cdot)$. Then we have a new educated guess $\hat{y}_2 = g(x)$. With empirical evidence I present that $\hat{y}_2$ is more accurate than $\hat{y}_1$.

Ideally we should write our presentation in $\LaTeX$.

## Afternoon

We used R to estimate $\pi$ by using the [Monte Carlo Method](https://academo.org/demos/estimating-pi-monte-carlo/), which can be boiled down to these 2 formulas:

<div align=center>$\frac{\pi}{4}\approx\frac{N_{\text{inner}}}{N_{\text{total}}}$ and $\pi\approx4\frac{N_{\text{inner}}}{N_{\text{total}}}$.</div>

We used this code in R:

```R
# Divide the plot in a 2 by 3 graph
par(mfrow=c(2, 3))

# Experiment
for (n in c(10, 100, 200, 500, 1000, 10000)) {
    # Data:
    x = runif(n) # draw N samples from uniform random variable / uniform distrubition
    y = runif(n) # same here
    d = sqrt(x^2 + y^2) # compute square root of sume of squares of x and y

    # Rejection Region:
    label = ifelse(d <= 1, 1, 0) # create label for coloring purposes

    # total number of points = r^2, number of red points = (pi x r^2)/4
    # 

    pi_hat = 4*plyr::count(label)[2,2]/n # recover pi

    # Plot:
    plot(x, y, col = label+1, main = paste0("Est: value of Pi = ", pi_hat))
}
```
