## This function can create a matrix object that can cache its inverse.
## functions do

## This initial function defines the argument with default "matrix".
## If there is a new matrix then inv is reset to NULL.
makeCacheMatrix <- function(x = matrix()){
      inv <- NULL
      set <- function(y){
            x <<- y
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## This function computes the inverse of the matrix returned by the makeCacheMatrix above.

cacheSolve <- function(x, ...){
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
}
 data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
