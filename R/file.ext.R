file.ext = function(x) {
  ext=regmatches(x, regexec("\\.([^\\.]+$)",x))[[1]][2]
  if (is.na(ext)) ext=""
  return(ext)
}

