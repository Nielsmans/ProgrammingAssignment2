##The function that creates a matrix consists of functions that 
##sets values to the cache matrix
##gets values of the cache matrix
##sets the inverse matrix
##gets the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmatrix<-function(solve)m<<-solve
  getmatrix<-function()m
  list(set=set, get=get
       setmatrix=setmatrix
       getmatrix=getmatrix)
  
}
## This function gets the cached data and inverse it
## It first checks if there is not already data of an inverse matrix
cacheSolve <- function(x, ...) {
 m<-x$getmean()
 if(!is.null(m)){
   message("getting cached data")
   return(M)
 }
 data<-x$get()
 m<-solve(data,..)
 x$setmatrix(m)
 m
}
