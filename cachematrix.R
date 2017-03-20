## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invm<-NULL
    set<-function(y){
        x<<-y
        invm<<-NULL
    }
    get<-function()x
    setinvm<-function(inverse)inverm<<-inverse
    getinvm<-function()invm
    list(set=set,get=get,
         setinvm=setinvm,
         getinvm=getinvm)
}


## This is my function which will hopefully give an inverse of the matrix x.

cacheSolve <- function(x, ...) {
    invm<-x$getinvm()
    if(!is.null(invm)){
        message("getting cached data")
        return(invm)
    }
    data<-x$get()
    invm<-solve(data,...)
    x$setinvm(invm)
    invm
}
