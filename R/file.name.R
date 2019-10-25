file.name = function(x) {
  name=regmatches(x, regexec("(.*)\\.[^\\.]+$",x))[[1]][2]
  if (is.na(name)) name=x
  return(name)
}
