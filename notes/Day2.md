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

### Homework

We introduced a new problem, called the Monte Carlo Simulation / Monte Carlo Markov Chain, to solve this we have to build a script that plots $N$ paths of data that are drawn from normal random values, and plot the $N$ plots in the same graph. This can be used to help us interpret the stock market at a bigger scale.

#### How this might help us in the stock market

I think that it could help us in the stock market in understanding the risk profile of a certain portfolio, and the minimum, maximum, as well as average returns, since room for error is what guarantees great returns in the long run.
A great example of this is made in the book: "The Psychology of Money: Timeless Lessons on Wealth, Greed, and Happiness", by Morgan Housel, in which he says:

> I assume the future returns I’ll earn in my lifetime will be ⅓ lower than the historic average. So I save more than I would if I assumed the future will resemble the past. It’s my margin of safety. The future may be worse than ⅓ lower than the past, but no margin of safety offers a 100% guarantee. A one-third buffer is enough to allow me to sleep well at night. And if the future does resemble the past, I’ll be pleasantly surprised.

> In fact, the most important part of every plan is planning on your plan not going according to plan.

This is why most compound interest calculators insert a "Interest rate variance range" section, because even if a stock averaged 8% every year for the last 60 years, you have to face that this return might change, and you have to keep in mind that you will have returns that will be a bit worse, or a bit better. By using the MCMC Simulation, we can simulate the most likely returns of a stock given certain historical data (past deviation), and the worst and best scenarios. This is of course not perfect, but can give useful insight about the safety of a stock, and the worst case and best case scenarios.

By using this technique for all securities in a certain portfolio (where using historical would help), we can estimate the risk profile of the portfolio.
