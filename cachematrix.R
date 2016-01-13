## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Create a Null matrix to store input matrix and the calculated matrix inverse.
##Args:
##y: initial input matrix by user
##inverse: calculated inverse matrix
##Functions:
##set: assign values to the matrix
##get: return values of the matrix
##set.inverse: assign inverse values to the matrix 
##get.inverse: return inverse values of the matrix

makeCacheMatrix <- function(x = matrix()) {
		A <- NULL
		set <- function(y){
			x <<- y    ## initial input matrix by user
			A <<- NULL
		}
		get <- function() x
		set.inverse <- function(inverse) A <<- inverse ## inverse is calculated in cacheSolve 		get.inverse <- function() A
		list(set=set, get=get, set.inverse=set.inverse, 
		     get.inverse=get.inverse)
}


## Write a short comment describing this function
##Return matrix intersion from makeCacheMatrix.
##If the inverse matrix has already existed, return the value directly.
##If not, calculate the inverse using solve() function and set the result matrix 
##in the cache using set.inverse() function.

##Args:
##x: makeCacheMatrix result
##Fuctions:
##solve: calculate matrix inverse

cacheSolve <- function(x, ...) {
            ## Return a matrix that is the inverse of 'x'/*x is makeCacheMatrix result*/
		inverse  <- x$get.inverse()    
		if(!is.null(inverse)){
			message("Getting cached inverse matrix.")
			return(inverse)
	}
		matrix <- x$get()
		inverse <- solve(matrix)
		x$set.inverse(inverse)
		return(inverse)
}











