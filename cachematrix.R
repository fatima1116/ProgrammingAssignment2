## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  on <- NULL
  set <- function(y) {
    x <<- n
    on <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##
## changed "mean" to "solve" and "m" to "om"
cacheSolve <- function(x, ...) {
  on <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  on <- solve(data, ...)
  x$setsolve(s)
  on
}
