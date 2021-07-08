# Day 8

## Morning

### Recurrent Neural Networks

It has 1 extra assumption from NNs and CNNs. **It assumes sequential patterns in your data.**

$$X_{t - n} \leftarrow X_{t-1} \leftarrow X_t \rightarrow X_{t+1} \rightarrow X_{t + n}$$

#### Architecture

Easy: $y$ prediction:
![[rnn1.png]]
Here the parameters are $u$, $v$ and $w$.

Complex:
![[rnn2.png]]

#### Math

##### Forward Propagation

Math for $X_t$ in complex image.

$$S_t = f(X_t, u) \leftarrow \text{if you are at } T_0 \text{ (beginning of data)}$$ 
$$S_t = f(X_{t-1}, w, X_t, u) \leftarrow \text{if you are at } T \text{ (middle of data)}$$ 

$$Y_t = g(S_t, v)$$
$$S_{t+1} = h(S_t, w, X_{t+i}, u)$$

##### Back Propagation

Loss function(cost function): "$\ell(guess, truth)$"

$$\ell(\hat{y}_{[t]}, y_{[t]}) = \frac{1}{n}\sum_{t=1}^{t} \sum_{i = 1}^n(\hat{y}_{i_{[t]}} - y_{i_{[t]}})^2$$

We need to include the timestamp in our loss function

Mean square error with timestamp:

$$MSE(\hat{y}, y) = \frac{1}{n}\sum_{i = 1}^n(\hat{y}_{i_{[t]}} - y_{i_{[t]}})^2$$

$i = \text{index for observation}$
$n = \text{sample size}$

##### Optimization:

$$\text{min } \ell(\hat{y}_{[t]}, y_{[t]})$$