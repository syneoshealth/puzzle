rbinddiff = function(...) {
  dots=list(...)
  
  if (length(dots)==0) return(NULL)
  
  df=dots[[1]]
  for (i in 1+seq_len(length(dots)-1)) {
    df=rbinddiff2(df,dots[[i]])
  }
  return(df)
}

