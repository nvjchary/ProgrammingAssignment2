##overall description##

#Matrix inversion is usually a costly computation and 
#there may be some benefit to caching the inverse of a matrix 
#rather than computing it repeatedly
#Below is a pair of functions that cache the inverse of a matrix.
#For a new matrix it will calculate the inverse. 
#if the matrix already exists then it will get the inverse from
#cached result


##short comment describing this function##
#makeCacheMatrix function creates a special "matrix" which  a list containg
# a function to do each of the following:
# 1. Set the value of the matrix
# 2. Get the value of the matrix
# 3. Set the value of the inverse
# 4. Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL # inv will store the cached inverse matrix
# Setter for the matrix    
    set <- function(y) {
      x <<- y
    inv <<- NULL
  }
  get <- function() x  # Getter for the matrix
  setinv <- function(inverse) inv <<- inverse # Setter for the inverse
  getinv <- function() inv # Getter for the inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv) # Return the matrix with our newly defined functions
}

##short comment describing this function
# cacheSolve: Compute the inverse of the matrix. If the inverse is already
# calculated before, it returns the cached inverse matrix

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
# If the inverse is already calculated, return cached inverse
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
# If The inverse is not yet calculated, then calculate it afresh
matrix_to_be_inverted <- x$get()
inv <- solve(matrix_to_be_inverted, ...)

# Cache the inverse calculated above
x$setinv(inv)

## Return a matrix that is the inverse of 'x'
inv
}

