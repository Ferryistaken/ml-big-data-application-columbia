# Day 5

## Morning

### Linear Regression
Linear regression is the statistical model that learns from $X$ and predicts $Y$.
The model is usually formulated in the following setup:

Suppose we are given $X_1$ and $X_2$. i.e $X = \{X_1, X_2\}$. Suppose also that we want to predict $Y$. The term **regression** comes from regress, which means that the goal is to minimize the following:

#### Formula

$$\mathbb{E}(Y - \mathbb{E}(Y|X))$$

Note:
- $Y$ is the target. It's what you want to forecast. It's usually continous in this framework
- $X$ is a set of variables $\{X_1, ..., X_n\}$. They record certain information of an observation that helps us predict $Y$.
- $\mathbb{E}(...)$ is the expectation of something (recall empirical average)
- $\mathbb{E}(Y|X)$ is the average of $Y$ given the information of $X$, it's an educated guess of what $Y$ can be based on information about $X$.
- $\mathbb{E}(Y - \mathbb{E}(...))$: this is the loss function, the mistakes our educated guess is making when we compare them with the real target $Y$.

#### Model
The model of linear regression takes the following form:
$$Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \epsilon$$

Note:
- $\beta$'s are linear coefficients, there are fixed ways of finding them
- $\epsilon$ is the error term, it's whatever the formula cannot model or learn
- $\beta_0$: this is the constant term

#### Assumptions
If these assumptions are broken, the model is useless:
- Linearity: we need to assume that the model is in additive form that consists of the variables $X$'s.
- Multivariate normality: this assumes that the data $(X)$ is coming from normal distribution, and the same applies if we have more than one variable.
- No multicollilnearity: this assumes your variable are **indipendent** from each other.
- No auto-correlation: this is specific to time-series data sets. i.e: in stock data there is auto-correlation (today's stock price/return is highly correlated with yesterday's)
- Homoscedasticity: this means that we have constant variance in our model. (referring to the error term $\epsilon$). ex: in the stock market, the volatility (which is computed from the variance) is not constant, in this case, you want to either avoid using the linear regression algorithm or use new sets of variables


## Afternoon
