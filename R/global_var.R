# Make global variables
globalVariables(c("DATETIME", "ID", "TIME","DATASOURCE", "BLQ0", "DV","BLQ1", "BLQLLOQ", "DOSETIME", "SORTINDEX", "VARIABLE"), add = FALSE)

file.ext = function(x) {
  ext=regmatches(x, regexec("\\.([^\\.]+$)",x))[[1]][2]
  if (is.na(ext)) ext=""
  return(ext)
}

file.name = function(x) {
  name=regmatches(x, regexec("(.*)\\.[^\\.]+$",x))[[1]][2]
  if (is.na(name)) name=x
  return(name)
}
