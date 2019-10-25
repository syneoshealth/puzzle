repeat.before.id = function(df) {
  for (id in unique(df$ID)) {
    df[df$ID==id,2]=repeat.before(df[df$ID==id,2])
  }
  return(df[,2])
}
