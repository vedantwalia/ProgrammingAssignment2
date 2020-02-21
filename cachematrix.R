## Put comments here that give an overall description of what your
## functions do

## Creates a special matrix objext to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function()i
  list(set = set, get = get,
       setInverse = setInverse
       getInverse = getInverse)
  
}


## Computes the inverse. If the inverse has already been calculated then the cachesolve should retrieve the inverse from the cach

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
}
