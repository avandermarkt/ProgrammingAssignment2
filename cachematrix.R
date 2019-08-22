## Caching the Inverse of a Matrix

## Cache function
## Set matrix, get matrix, set inverse, get inverse

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) I <<- solve
  getinverse = function() I
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse )
}

## Return a matrix which is the inverse

cacheSolve <- function(x, ...) {
  I <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(I)
  }
  mat <- x$get()
  I <- solve(mat, ...)
  x$setInverse(I)
  I
}
