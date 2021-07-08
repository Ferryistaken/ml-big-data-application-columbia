# Day 7
## Morning

### Convolutional Neural Networks (CNN)

Instead of directly feeding the training data to the NN, we first modify the data, and then feed it into the NN.

#### Assumptions:
- Data has to be pictures (Or any matrix, with geospacial structure, and local information)

#### Example:
Ex. 1:
- $X_1$ = number of bedrooms in a house
- $X_2$ = square footage
- $Y$ = sales price of an house

Ex. 1 wouldn't be a good fit for a **convolutional neural network**.

Ex. 2:
- $X_1$ is the drawing of a person (so it has geospacial structure)

![[person.png]]
- $Y$ is who this person is (John, Alex, James)

This data is a good fit for a **convolutional neural network**.

#### What is a matrix:

Matrix:
$$
\begin{bmatrix}  
1 \\  
2  
\end{bmatrix}
\text{ and }
\begin{bmatrix}  
1 & 2 \\  
\end{bmatrix}
$$

You can only do **additions** with matrices if they have the same dimensions:

$m_1$ + $m_2$ won't work.

##### Element-wise matrix multiplication:
$$
\begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}
\cdot
\begin{bmatrix}
5 & 6 \\
7 & 8
\end{bmatrix}
= 1 \cdot 5 + 2 \cdot 6 + 3 \cdot 7 + 4 \cdot 8
= 5 + 12 + 21 + 32
= 70
$$
##### Matrix multiplication
Order of operations:
- 1st row of the first matrix times each column the second matrix,
- then the next row of the first matrix times each columnof the second matrix
$$
\begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}
\cdot
\begin{bmatrix}
1 & 1 \\
0 & 0
\end{bmatrix}
$$