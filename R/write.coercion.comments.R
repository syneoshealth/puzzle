write.coercion.comments = function(df,file,sep=if ("sep" %in% names(coercion)) coercion$sep else ",") {
  fileConn=file(file)
  df$NUMCHAR=paste0(df$NUM,"=",df$CHAR)
  df=reshape2::dcast(df,VAR~NUM,value.var="NUMCHAR")
  lines=c()
  for (i in seq_len(nrow(df))) {
    lines=c(lines,paste0(df[i,1], ": ", paste(df[i,-1][!is.na(df[i,-1])],collapse=paste0(sep," "))))
  }
  writeLines(lines, fileConn)
  close(fileConn)
}
