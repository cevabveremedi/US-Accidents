library(testthat)

# Q6 ------------------------------------

# Test for MDcustomerCount
test_that("Test count customer accident", {
  expected_count <- nrow(MD_loc)  # Replace with the expected count
  result_count <- MDcustomerCount
  expect_equal(result_count, expected_count)
})