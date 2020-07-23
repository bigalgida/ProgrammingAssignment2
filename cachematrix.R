## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- matrix()
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setInversed <- function(inv_data) inv <<- inv_data
	getInversed <- function() inv
	list(set = set, get = get,
		 setInversed = setInversed,
		 getInversed = getInversed)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- x$getInversed()
	if (!is.na(inv)) {
		message("getting cached data")
		return(inv)
	}
	data <- solve(x$get(), ...)
	x$setInversed(data)
	data
}