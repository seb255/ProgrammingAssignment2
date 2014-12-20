makeCacheMatrix <- function(x=matrix()){
	m <- NULL
	set <- function(y){  				##set the value of the matrix
		x<<-y
		m<<-NULL
	}
	get <-function() x				##get the value of the matrix
	setinv <- function(inv) m <<-inv		##set the value of the inverse
	getinv <- function() m				##get the valeur of the inverse
	list(set=set,get=get,
		setinv = setinv,
		getinv = getinv)
}
