testthat::context("Test puzzle functionality")
testthat::test_that("Check if puzzle was properly installed",{
  testthat::expect_output(str(as.data.frame(puzzle::df_pk_start)), "12 obs")
})
