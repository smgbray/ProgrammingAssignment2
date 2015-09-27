cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}