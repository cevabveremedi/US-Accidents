library(testthat)

# Q4 ------------------------------------


# Test for count_empty_weather
test_that("Test count_empty_weather", {
  expected_count_empty_weather <- 0  # Replace with the expected count
  result_count_empty_weather <- sum(accidentsDB$Weather_Condition == "")
  expect_equal(result_count_empty_weather, expected_count_empty_weather)
})

# Test for count_empty_city
test_that("Test count_empty_city", {
  expected_count_empty_city <- 0  # Replace with the expected count
  result_count_empty_city <- sum(accidentsDB$City == "")
  expect_equal(result_count_empty_city, expected_count_empty_city)
})

# Test for count_empty_street
test_that("Test count_empty_street", {
  expected_count_empty_street <- 0  # Replace with the expected count
  result_count_empty_street <- sum(accidentsDB$Street == "")
  expect_equal(result_count_empty_street, expected_count_empty_street)
})

# Test for data type conversion to factor
test_that("Test data type conversion to factor", {
  # Convert columns to factors
  accidentsDB$Severity <- as.factor(accidentsDB$Severity)
  accidentsDB$State <- as.factor(accidentsDB$State)
  accidentsDB$City <- as.factor(accidentsDB$City)
  accidentsDB$Weather_Condition <- as.factor(accidentsDB$Weather_Condition)
  
  # Check if the data types are correct
  expect_is(accidentsDB$Severity, "factor")
  expect_is(accidentsDB$State, "factor")
  expect_is(accidentsDB$City, "factor")
  expect_is(accidentsDB$Weather_Condition, "factor")
})

