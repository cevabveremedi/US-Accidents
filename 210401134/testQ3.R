library(testthat)

# Q3 ------------------------------------

# Test for reading the required columns using fread
test_that("Test reading the required columns using fread", {
  filename <- "US_Accidents_March23.csv"
  expected_columns <- c("Severity", "Start_Time", "End_Time", "Start_Lng", "Start_Lat", "City", "State", "Street", "Weather_Condition", "Bump", "Crossing", "Junction", "Stop", "Traffic_Calming", "Traffic_Signal")
  accidentsDB <- fread(filename, select = expected_columns)
  expect_identical(colnames(accidentsDB), expected_columns)
})

test_that("Test total number of columns in the original data frame", {
  totalCol <- ncol(originalDB)
  expected_totalCol <- 46  # Replace with the expected total number of columns
  expect_equal(totalCol, expected_totalCol)
})

# Test for count_empty_weather
test_that("Test count_empty_weather", {
  expected_count_empty_weather <- 173459  # Replace with the expected count
  result_count_empty_weather <- count_empty_weather
  expect_equal(result_count_empty_weather, expected_count_empty_weather)
})

# Test for count_empty_city
test_that("Test count_empty_city", {
  expected_count_empty_city <- 253  # Replace with the expected count
  result_count_empty_city <- count_empty_city
  expect_equal(result_count_empty_city, expected_count_empty_city)
})

# Test for count_empty_street
test_that("Test count_empty_street", {
  expected_count_empty_street <- 10869  # Replace with the expected count
  result_count_empty_street <- count_empty_street
  expect_equal(result_count_empty_street, expected_count_empty_street)
})