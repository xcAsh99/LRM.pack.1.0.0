
# LRM.pack.1.0.0

<!-- badges: start -->
[![R-CMD-check](https://github.com/xcAsh99/LRM.pack.1.0.0/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/xcAsh99/LRM.pack.1.0.0/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

LRM.pack.1.0.0 provide a function to do linear regression modeling through R.

## Introduction
In statistics, linear regression is a linear approach for modelling the relationship
between a scalar response and one or more explanatory variables (also known as dependent 
and independent variables). This package includes a function to do both simple and multiple
linear regression model by QR factorization and output coefficient of variables as a column
vector. 

# Guide for installment:

1. Copy this line into R console:
devtools::install_github("xcAsh99/LRM.pack.1.0.0", build_vignettes = T)

2. Type library(help="") and include package name in R console and check the description of
function and datasets.

3. Use ?(function name) and example(function name) to check the usage.


## Example

``` r
library(LRM.pack.1.0.0)
x <- cbind(rnorm(26,1,0.5),rnorm(26,5,3))
y <- rnorm(26,1,0.5)
Lmr(x,y)

x <- matrix(c(1,2,3,4,5,6),2,3)
y <- c(4,9)
Lmr(x,y)
```

