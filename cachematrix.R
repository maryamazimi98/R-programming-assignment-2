## I set the input x as a matrix
## and also set the solved value "s" as a null
## afterthat, I changed every reference "mean" to "solve"
setwd('C:/Users/rubind1/Documents/Coursera-R')
## I set my working directory

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## I did the same thing as well but "mean" is changed to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
