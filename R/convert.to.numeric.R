convert.to.numeric = function (df,initialindex,na.strings) {
  for (name in names(df)) {
    if (class(df[,name])!="character") df[,name]=as.character(df[,name])
    df[,name][df[,name] %in% na.strings]=NA
    if (all(!(ifelse(is.na(df[,name]), NA, TRUE) & suppressWarnings(is.na(as.numeric(df[,name])))), na.rm=T)) {
      df[,name]=as.numeric(df[,name])
    } else {
      df[,name]=as.factor(df[,name])
      lvl=data.frame(seq_along(levels(df[,name]))+initialindex-1,levels(df[,name]))
      message((paste0("Automatic coercion to numeric for ", name, "\n",
                      paste(paste(lvl[,1],lvl[,2],sep="="),collapse="\n"))))
      df[,name]=as.numeric(df[,name])+initialindex-1
      if (!is.null(coercion$data)) coercion$data <<- rbind(coercion$data,data.frame(VAR=name,stats::setNames(lvl,c("NUM","CHAR"))))
    }
  }
  return(df)
}
