## This is a function to inverse an inverable matrix
## functions do

## This is a function to create an inversable martix

makeCacheMatrix <- function(x = matrix()) {
   Inverse <- NULL ##initialization
   set <- function(matrix) { ##set a marirx
     m << matrix
     Inverse <<- NULL
   }
   get <- function() m   ## m stands for a matrix
   setInverse <- function(inverse) Inverse <<- inverse ##set the inverse
   getInverse <- function() Inverse  ##get the inverse
   list(set = set, get = get, 
   setInverse = setInverse, 
   getInverse = getInverse) ## return list
}


## Return the iverse of the created matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
        message("getting cached data")
        return(m)
        }
        data <- x$get() ##get the matrix 
        m <- solve(data, ...)##get the inverse of the matirx
        x$setInverse(m)##get the inverted matrix
        m  ##return the result
}
