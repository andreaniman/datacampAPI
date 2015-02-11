context("sct_vars")

test_that("functions to set, get, remove and check existence of student parse data work as expected", {
  expect_that(exists_student_pd(), is_false())
  set_student_pd("test student pd")
  expect_that(exists_student_pd(), is_true())
  expect_that(get_student_pd(), equals("test student pd"))
  remove_student_pd()
  expect_that(exists_student_pd(), is_false())
  expect_that(get_student_pd(), throws_error())
})

test_that("functions to set, get, remove and check existence of solution parse data work as expected", {
  expect_that(exists_student_pd(), is_false())
  set_solution_pd("test solution pd")
  expect_that(exists_solution_pd(), is_true())
  expect_that(get_solution_pd(), equals("test solution pd"))
  remove_solution_pd()
  expect_that(exists_solution_pd(), is_false())
  expect_that(get_solution_pd(), throws_error())
})

test_that("functions to set, get, remove and check existence of student doc structure work as expected", {
  expect_that(exists_student_ds(), is_false())
  set_student_ds("test student ds")
  expect_that(exists_student_ds(), is_true())
  expect_that(get_student_ds(), equals("test student ds"))
  remove_student_ds()
  expect_that(exists_student_ds(), is_false())
  expect_that(get_student_ds(), throws_error())
})

test_that("functions to set, get, remove and check existence of solution doc structure work as expected", {
  expect_that(exists_student_ds(), is_false())
  set_solution_ds("test solution ds")
  expect_that(exists_solution_ds(), is_true())
  expect_that(get_solution_ds(), equals("test solution ds"))
  remove_solution_ds()
  expect_that(exists_solution_ds(), is_false())
  expect_that(get_solution_ds(), throws_error())
})

test_that("functions to set and get student partial doc structure work as expected", {
  set_student_ds_part("test student ds part")
  expect_that(get_student_ds_part(), equals("test student ds part"))
})

test_that("functions to set and get solution partial doc structure work as expected", {
  set_solution_ds_part("test solution ds part")
  expect_that(get_solution_ds_part(), equals("test solution ds part"))
})

test_that("functions to set and get chunk number work as expected", {
  set_chunk_number(1)
  expect_that(get_chunk_number(), equals(1))
})

test_that("functions to set and get inline number work as expected", {
  set_inline_number(2)
  expect_that(get_inline_number(), equals(2))
})

