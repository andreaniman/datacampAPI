context("global_vars")

test_that("functions to set, get, remove and check existence of sct result work as expected", {
  expect_that(exists_sct_result(), is_false())
  set_sct_result(list(TRUE,"test feedback"))
  expect_that(exists_sct_result(), is_true())
  expect_that(get_sct_result()[[1]], equals(TRUE))
  expect_that(get_sct_result()[[2]], equals("test feedback"))
  remove_sct_result()
  expect_that(exists_sct_result(), is_false())
})
