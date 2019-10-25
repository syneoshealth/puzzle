convert.datetime = function(df) {
  if (!"DATETIME" %in% names(df)) {
    df$TIME=as.numeric(df$TIME)
  } else {
    df$DATETIME=as.POSIXct(strptime(df$DATETIME,format=datetimeformat,tz=timezone),tz=timezone)
  }
  return(df)
}
