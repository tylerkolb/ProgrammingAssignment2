
## makeCacheMatrix is a matrix
## that was created that will cache the inverse of the matrix.
## Inv will be stored as null for now and will be later used as
## the inverse.

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


## cacheSolve computes the
## inverse of the matrix that was created.  The function will call up the
## inverse from the cache if the inverse has already been calculated.  If
## not, then the function will use the solve function to get the new inverse.

cacheSolve <- function(x, ...) {
      inv <- x$getInverse()
      if(!is.null(inv)){
        message("getting cached data")
        return(inv)
      }
      data <- x$get()
      inv <- solve(data, ...)
      x$setInverse(inv)
      inv
}
