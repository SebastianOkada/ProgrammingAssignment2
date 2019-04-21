## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 z <- NULL
        ##Setting Matrix
        
        set <- function(matrix){
                m <<- function(matrix)
                z <<- NULL
        }
        
        ##Getting Matrix
        get <- function(){
        m        
        }
        
        ##Setting the inverse
        setinverse <- function(inverse){
                z <<- inverse
                }
        ##Getting the inverse
        getinverse <- function(){
                z
        }
        
        ##Returning the list of methods
        
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <-x$getinverse()
        ##Returning the value if it's already in memory(different to NULL)
        if(!is.null(m)){
                message("getting data from cache")
                return(m)
                }
        ##Get the matrix from our object
        data <- x$get()
        ##Calculate the inverse
        m <- solve(data)
        ##set the inverse to the object
        x$setinverse(m)
        ##return the matrix
        m       

}
