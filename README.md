### Introduction

    
### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly. This repo contains a r file which has a pair of functions that
cache the inverse of a matrix.

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.


#Example:

To test the code please type these lines in rstudio after running cachematrix.R
create a new matrix

4 3
4 2

x<-matrix(c(4,3,4,2),
+ ncol=2,
+ nrow=2,
+ byrow=TRUE
+ )

cx <- makeCacheMatrix(x) // Create our special matrix
cx$get()                // returns to be inverted matrix
cacheSolve(cx)         // Return the inverse
cacheSolve(cx)        // Call the 2nd time, so return the cached inverse


