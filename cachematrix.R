## Put comments here that give an overall description of what your
## functions do

## This will create a matrix of special type

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setInverse<- function(Inv) m <<- Inv
getInverse <- function() m
list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## This will create the inverse of the matrix

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
