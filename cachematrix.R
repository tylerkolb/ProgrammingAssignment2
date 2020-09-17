## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function: makeCacheMatrix is a matrix
## that was created that will cache the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
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


## Write a short comment describing this function: cacheSolve computes the
## inverse of the matrix that was created.  The function will call up the
## inverse from the cache if the inverse has already been calculated.

cacheSolve <- function(x, ...) {
      inv <- x$getInverse()
      if(!is.null(inv)){
        message("getting cached data")
        return(inv)
      }
        ## Return a matrix that is the inverse of 'x'
}
