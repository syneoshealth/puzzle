add.times = function(df,times) {
  if (!"EVID" %in% names(df)) df$EVID=0
  df$EXTRATIME=0
  if (!is.null(times)) {
    df2=stats::setNames(as.data.frame(times[rep(1:nrow(times),times=length(unique(df$ID))),]),names(times))
    if (!"ID" %in% names(times)) df2$ID=rep(unique(df$ID),each=nrow(times))
    df2=df2[!duplicated(rbind(df[,names(df2)],df2))[(nrow(df)+1):(nrow(df)+nrow(df2))],]
    
    if (nrow(df2)>0) {
      if (!"EVID" %in% names(df2)) df2$EVID=2
      df2$EXTRATIME=1
      df=rbinddiff(df,df2)
    }
    df=arrange(df,ID,TIME)
  }
  return(df)
}

