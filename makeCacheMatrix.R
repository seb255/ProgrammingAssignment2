## This function define the function necessary to manage matrix creation and it inverse calculation saving
## in a variable in a different environment than the function, so will permit to keep the value outside of the function

makeCacheMatrix <- function(x=matrix()){
	m <- NULL
	set <- function(y){  				##set the value of the matrix
		x<<-y
		m<<-NULL
	}
	get <-function() x				##get the value of the matrix
	setinv <- function(inv) m <<-inv		##set the value of the inverse
	getinv <- function() m				##get the valeur of the inverse
	list(set=set,get=get,				##give the list of accessible defined functions from outside
		setinv = setinv,
		getinv = getinv)
}
