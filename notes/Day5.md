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

More General Form:
$$Y = \beta_0 + \sum_{j=1}^p (\beta_j X_j) + \epsilon$$

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

For example, let $X_1$ be number of bedrooms and let $X_2$ be square foot of the real estate. Suppose $Y$ is our target and it is the sale price of this real estate.
In short this dataframe has 3 columns (sales price, number of bedroom, and square foot). The linear regression model takes the following form:
$$Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \epsilon$$
Epsilon $(\epsilon)$ is the error, or the noise.
**Say the model is done, we have $\beta_1 = 3$, this means that $1$ unit of increase in the number of bedroom can increase the sales price by $3$.**

## Afternoon
### Logistic Regression

The logistic regression model assumes that the log-odds of an observation $Y$ can be expressed using linear model. This can be considered as a linear model get tossed inside a link function (a link function is a non-linear function).
$$\log\bigg(\frac{\mathbb{P}(Y=1|X)}{1 - \mathbb{P}(Y=1|X)}\bigg) = \sum_{j=1}^K \beta_j X_j$$

==And here the **log-odds is the ratio of $\mathbb{P}(Y)$ over $1 - \mathbb{P}(Y)$.**==

Let us derive what $\mathbb{P}(Y)$ is based on the above model.

How to interpret it intuitively? Check [here](https://towardsdatascience.com/logistic-regression-derived-from-intuition-d1211fc09b10)
Logistic Regression Explained: [StatQuest](https://www.youtube.com/watch?v=yIYKR4sgzI8)

### Machine Learning Introduction

A basic concept in machine learning is the partition on the same data set. The purpose of partitioning data set is to ensure that we have an honest artificial environment for the machines to learn and to have their performances examined. The learning or the training procedure of a machine is done using training set. This is a scenario where I know the true label (aka ground truth). Once I am happy with the results, we will test the performance on a test set that is never seen before. In some occasion where there is tuning procedure, we need separate training and validating environment to check the performance of a machine under different models or tuning parameters. This is the situation where we need to partition our raw data into training, validating, and testing. Suppose we have two models: $f_1()$ and $f_2()$. We can use $f_1()$ and $f_2()$ both on training and validating set. We suppose validating set was not seen by $f_1()$ and $f_2()$ during the training process. We then observe the validating performance and we can pick the best one, say $f_1()$. Last, we can use this model $f_1()$ to performance on the test set to see what the test result it.  
- Training Set vs. Validating Set vs. Testing Set: [video](https://www.youtube.com/watch?v=PIRQY6xmNZY)
- Bias Variance Trade-off: [video](https://youtu.be/EuBBz3bI-aA)

Loss function or Cost function is another big component of machine learning. In plain English, a loss function between two vectors refer to some sort of measure of distance between these two vectors. Based on the definition of different types of loss functions, we can come up with certain measure of how far away one vector is from another. Intuitively speaking, one vector can be the ground truth. Another vector can be our educated guesses from our machine learning algorithm. It is obvious that we want the educated guesses to be as close to the ground truth as possible. 
- Here is a quick python tutorial of using loss function such as mean square error, [here](https://www.youtube.com/watch?v=uD1Dfz0aqkA)
- A list of different video, [here](https://www.youtube.com/watch?v=QBbC3Cjsnjg)