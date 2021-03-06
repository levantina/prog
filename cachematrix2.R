## makeCacheMatrix creates a special matrix object

makeCacheMatrix <- function(x=matrix()) {
<<<<<<< HEAD
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() inv
	
# return a list of functions as an R object (a special matrix)
	list(set = set, get = get, 
		 setInverse = setInverse, 
		 getInverse = getInverse)
}

## cacheSolve calculates the inverse of that spacial matrix and
=======
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv <<- NULL
      }
      get <- function() x
      setInverse <- function(inverse) inv <<- inverse
      getInverse <- function() inv
      
      # return a list of functions as an R object (a special matrix)
      list(set = set, get = get, 
           setInverse = setInverse, 
           getInverse = getInverse)
}

<<<<<<< HEAD
## cacheSolve calculates the inverse of that spacial matrix:
>>>>>>> FETCH_HEAD
=======
## cacheSolve calculates the inverse of that spacial matrix and
>>>>>>> FETCH_HEAD
## if the matrix inverse has already been calculated, cacheSolve will 
## find it in the cache and return it (to avoid calculating the inverse again)

cacheSolve <- function(x, ...) {
<<<<<<< HEAD
	inv <- x$getInverse()
	if(!is.null(inv)){
		message("Getting cached data")
		return(inv)
	}
	else {
		message("No cached data found")
		data <- x$get() #gets the matrix from x
		inv <- solve(data, ...) #calculates the inverse matrix
		x$setInverse(inv) # sets the inverse matrix in x
		return(inv)
	}
}
=======
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("Getting cached data")
            return(inv)
      }
      else {
            message("No cached data found")
            data <- x$get() #gets the matrix from x
            inv <- solve(data, ...) #calculates the inverse matrix
            x$setInverse(inv) # sets the inverse matrix in x
            return(inv)
      }
}
>>>>>>> FETCH_HEAD
