#'linear_regression

#'

#'Find the estimated coefficients of the linear regression model.

#'

#'@param X input predictor matrix(not design matrix)

#'@param y continuous outcome of interest

#'@return the estimated coefficient(beta)

#'

#'@examples

#'X <- cbind(rnorm(10,1,3),rnorm(10,1,2),rnorm(10,1,1))

#'y <- rnorm(10,0,1)

#'Lmr(X,y)

#'

#'@export
#'
Lmr <- function (X, y) {
  ## QR factorization
  X <- cbind(rep(1,nrow(X)),X)
  QR <- qr.default(X)
  ## Rotating "X" and "Y", and solve upper triangular system `Rb = Q'y`
  b <- backsolve(QR$qr, qr.qty(QR, y))
  return(b)
}


