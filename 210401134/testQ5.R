library(testthat)

# Q5 ------------------------------------

# Test for the existence of the 'company_loss' column
test_that("Test existence of 'company_loss' column", {
  # Check if the 'company_loss' column exists
  expect_true("company_loss" %in% names(accidentsDB))
})
