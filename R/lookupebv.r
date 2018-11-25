## nearest neighbor lookup of sfd dust map using package nabor

lookupebv <- function(...) {
  require(nabor)
  
  lb <- unlist(list(...))
  nr <- length(lb)/2
  lb <- matrix(lb, nr, 2)
  ebv <- 0.86 * ebvmap$ebv[knn(data=cbind(ebvmap$l, ebvmap$b), query=lb, k=1)$nn.idx]
  ebv
}

## nearest neighbor lookup of sfd dust map using package SearchTrees

lookupebv_st <- function(...) {
  require(SearchTrees)
  
  lb <- unlist(list(...))
  nr <- length(lb)/2
  lb <- matrix(lb, nr, 2)
  if (!exists("tree", envir=.GlobalEnv)) {
    tree <<- createTree(ebvmap)
  }
  ebv <- 0.86 * ebvmap$ebv[as.numeric(knnLookup(get("tree", envir=.GlobalEnv), newx=lb[,1],
                                                newy=lb[,2], k=1))]
                                                ebv
}

