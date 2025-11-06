# Creating a 3x3 Matrix
M <- matrix(1:9, nrow=3, ncol=3)
M
# Accessing an Element in the Matrix
M[2,3]
# Accessing a Row in the Matrix
M[1, ]
# Accessing a Column in the Matrix
M[ ,2]
# Transposing the Matrix
t(M)
# Calculating the Determinant of the Matrix
det(M)
# Calculating the Inverse of the Matrix
solve(M)
# Matrix Multiplication
M %*% t(M)
# Eigenvalues and Eigenvectors
eigen(M)
# Creating an Identity Matrix
I <- diag(3)
I
# Adding Two Matrices
M + I
# Multiplying a Matrix by a Scalar
2 * M