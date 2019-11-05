library(testthat)
context("Test puzzle functionality")
test_that("Check if puzzle was properly installed",{
  nm = list(pk = list(parent=as.data.frame(puzzle::df_pk_start)),
            dose=as.data.frame(puzzle::df_dose_start),
            cov=as.data.frame(puzzle::df_cov_start))
 df_puzzle_test = puzzle(directory=file.path(getwd()),
         order=c(0),
         pk=list(data=nm$pk), 
         dose=list(data=nm$dose), 
         cov=list(data=nm$cov)) 
 expect_output(str(df_puzzle_test), "16 obs")
})


