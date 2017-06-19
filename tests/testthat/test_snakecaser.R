library(snakecaser)
context("snake caser")

test_that("The function to_snake_case() is working as expected", {
  expect_equal(to_snake_case("x!2f .:__tipi"), "x_2f_tipi")
})