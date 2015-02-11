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

test_that("functions to set, get, remove and check existence of console output work as expected", {
  expect_that(exists_student_output(), is_false())
  set_student_output("output test")
  expect_that(exists_student_output(), is_true())
  expect_that(get_student_output(), equals("output test"))
  remove_student_output()
  expect_that(exists_student_output(), is_false())
  expect_that(get_student_output(), throws_error())
})


test_that("functions to set, get, remove and check existence of console output work as expected", {
  expect_that(exists_student_output(), is_false())
  set_student_output("output test")
  expect_that(exists_student_output(), is_true())
  expect_that(get_student_output(), equals("output test"))
  remove_student_output()
  expect_that(exists_student_output(), is_false())
  expect_that(get_student_output(), throws_error())
})


test_that("functions to set, get, remove and check existence of student error work as expected", {
  expect_that(exists_student_error(), is_false())
  set_student_error("error test")
  expect_that(exists_student_error(), is_true())
  expect_that(get_student_error(), equals("error test"))
  remove_student_error()
  expect_that(exists_student_error(), is_false())
  expect_that(get_student_output(), throws_error())
})

test_that("function to set, get, remove and check existence of solution code are not implemented", {
  expect_that(set_solution_output("test"), throws_error())
  expect_that(get_solution_output(), throws_error())
  expect_that(exists_solution_output(), throws_error())
  expect_that(remove_solution_output(), throws_error())
})
