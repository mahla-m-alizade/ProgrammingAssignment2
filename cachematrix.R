## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
          invrs=NULL
  set <- function(y) {
    x=y
    invrs=NULL}
  get <- function() x
  setinvrs=function(invers) invrs=invers
  getinvrs=function() invrs
  return(list(get=get,set=set,getinvrs=getinvrs,setinvrs=setinvrs))

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invrs=x$getinvrs()
  if( !is.null(invrs) ){ return(invrs)}
  invrs=solve(x$get())
  x$setinvrs(invrs)
  return(invrs)
}
