

## this function get a matrics as input

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


## below function get the upper function as an input and if there is an inverse matrics it returns and otherwise ,it calculates

cacheSolve <- function(x) {
        invrs=x$getinvrs()
  if( !is.null(invrs) ){ return(invrs)}
  invrs=solve(x$get())
  x$setinvrs(invrs)
  return(invrs)
}
