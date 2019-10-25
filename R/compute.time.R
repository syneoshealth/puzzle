compute.time = function (df,dose) {
  if ("DATETIME" %in% names(df) & "DATETIME" %in% names(dose)) {
    df=plyr::join(df,plyr::ddply(dose,~ID,plyr::summarise,FIRSTDOSEDATETIME=min(DATETIME)),by="ID")
    if ("TIME" %in% names(df)) {
      df$TIME[is.na(df$TIME)]=as.numeric(difftime(df$DATETIME[is.na(df$TIME)],df$FIRSTDOSEDATETIME[is.na(df$TIME)],units=timeunits,tz=timezone))
    } else {
      df$TIME=as.numeric(difftime(df$DATETIME,df$FIRSTDOSEDATETIME,units=timeunits,tz=timezone))
    }
    df$FIRSTDOSEDATETIME=NULL
  } else {
    df$DATETIME=NA
  }
  return(df)
}
