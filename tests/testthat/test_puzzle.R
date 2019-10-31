context("Test puzzle functionality")
test_that("Check if puzzle was properly installed",{
  nm = list(pk = list(parent=as.data.frame(puzzle::df_pk_start)),
            dose=as.data.frame(puzzle::df_dose_start),
            cov=as.data.frame(puzzle::df_cov_start))
 df = puzzle(directory=file.path(getwd()),
         order=c(0),
         pk=list(data=nm$pk), 
         dose=list(data=nm$dose), 
         cov=list(data=nm$cov)) 
expect_equal(ncol(df),15)  
})


