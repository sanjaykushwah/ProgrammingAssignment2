## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## A pair of functions that cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	 
	setmatrix <- function( matrix ) {
			m <<- matrix
			i <<- NULL
	 }

	 getmatrix <- function() {
		m
	 }
	 
	 setInversematrix <- function(inverse) {
		i <<- inverse
	 }

	 getInversematrix <- function() {
		i
	 }
	 
	 list(setmatrix = setmatrix, 
		   getmatrix = getmatrix,
		   setInversematrix = setInversematrix,
		   getInversematrix = getInversematrix)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getInversematrix()
		
		if( !is.null(m) ) {
			message("getting cached data")
			return(m)
		}
		
		data <- x$getmatrix()
		
		m <- solve(data) %*% data
		
		x$setInversematrix(m)
		
		m
}
