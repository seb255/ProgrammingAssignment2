##This function will issue the inverse of the passed matrix "x"
##if passed matrix "x" has already been calculated stored value will be used
##if passed matrix "x" has not yet been calculated solve will be applied

cacheSolve <- function (x,...){
	m <-x$getinv() ## call to the getinv function from makeCacheMatrix to check if m already exist (m=inverse value of matrix)
	if(!is.null(m)){
		message("getting cached data")
		return(m)  ##m has already been calculated, so we can return the value of m, and terminate as return
	}
	data <-x$get() ##get fom makeCacheMatrix the value of the matrix to be inversed
	m<-solve(data,...) ##inverse the matrix
	x$setinv(m) ##set the matrix in makeCacheMatrix
	m
}
