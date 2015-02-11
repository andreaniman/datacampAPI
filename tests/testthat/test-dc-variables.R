context("dc_variables")

test_that("functions to set, get, remove and check existence of solution_code work as expected", {
  expect_that(exists_solution_code(), is_false())
  set_solution_code("this is solution code")
  expect_that(exists_solution_code(), is_true())
  expect_that(get_solution_code(), equals("this is solution code"))
  remove_solution_code()
  expect_that(exists_solution_code(), is_false())
  expect_that(get_solution_code(), throws_error())
})

test_that("functions to set, get, remove and check existence of student_code work as expected", {
  expect_that(exists_student_code(), is_false())
  set_student_code("this is student code")
  expect_that(exists_student_code(), is_true())
  expect_that(get_student_code(), equals("this is student code"))
  remove_student_code()
  expect_that(exists_student_code(), is_false())
  expect_that(get_student_code(), throws_error())
})

test_that("functions to set, get, remove and check existence of sct_code work as expected", {
  expect_that(exists_sct_code(), is_false())
  set_sct_code("this is sct code")
  expect_that(exists_sct_code(), is_true())
  expect_that(get_sct_code(), equals("this is sct code"))
  remove_sct_code()
  expect_that(exists_sct_code(), is_false())
  expect_that(get_sct_code(), throws_error())
})

test_that("functions to set, get, remove and check existence of pre exercise code work as expected", {
  expect_that(exists_pec_code(), is_false())
  set_pec_code("this is pec code")
  expect_that(exists_pec_code(), is_true())
  expect_that(get_pec_code(), equals("this is pec code"))
  remove_pec_code()
  expect_that(exists_pec_code(), is_false())
  expect_that(get_pec_code(), throws_error())
})



