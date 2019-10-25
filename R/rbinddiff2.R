rbinddiff2 = function(a,b) {
  notina=setdiff(names(b),names(a))
  notinb=setdiff(names(a),names(b))
  if (nrow(a)>0) a[,notina]=NA
  if (nrow(b)>0) b[,notinb]=NA
  
  rbind(a,b)
}

