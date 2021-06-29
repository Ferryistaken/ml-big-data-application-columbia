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
