context("utils")

test_that("utility functions work as expected", {
  varlist <- list(a = "test_a", b = "test_b", c = "test_c")
  set_variable_list(varlist)
  expect_that(get_variable("a",envir = get_datacamp_env()), equals("test_a"))
  expect_that(get_variable("b",envir = get_datacamp_env()), equals("test_b"))
  expect_that(get_variable("c",envir = get_datacamp_env()), equals("test_c"))
  clean_datacamp_env()
  expect_that(get_variable("a",envir = get_datacamp_env()), throws_error())
  expect_that(get_variable("b",envir = get_datacamp_env()), throws_error())
  expect_that(get_variable("c",envir = get_datacamp_env()), throws_error())
})
