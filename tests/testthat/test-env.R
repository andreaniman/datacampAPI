context("env")

test_that("get environment functions work as expected", {
  get_datacamp_env()
  expect_that(any(grepl("env:datacamp",search())), is_true())

  get_solution_env()
  expect_that(any(grepl("env:solution",search())), is_true())

  get_sct_env()
  expect_that(any(grepl("env:sct",search())), is_true())

  expect_that(which(search() == "env:datacamp") > which(search() == "env:solution"), is_true())
  expect_that(which(search() == "env:datacamp") > which(search() == "env:sct"), is_true())
  expect_that(which(search() == "env:solution") > which(search() == "env:sct"), is_true())
})

test_that("clean environment functions work as expected", {
  assign("test_dc",0,envir = get_datacamp_env())
  expect_that(get("test_dc",envir = get_datacamp_env()), equals(0))
  clean_datacamp_env()
  expect_that(length(ls(envir = get_datacamp_env())),equals(0))

  assign("test_sol",1,envir = get_solution_env())
  expect_that(get("test_sol",envir = get_solution_env()), equals(1))
  clean_solution_env()
  expect_that(length(ls(envir = get_solution_env())),equals(0))

  assign("test_sct",2,envir = get_sct_env())
  expect_that(get("test_sct",envir = get_sct_env()), equals(2))
  clean_sct_env()
  expect_that(length(ls(envir = get_sct_env())),equals(0))

  assign("test_global",3, envir = globalenv())
  expect_that(get("test_global", envir = globalenv()), equals(3))
  clean_global_env()
  expect_that(length(ls(envir = globalenv())), equals(0))

  assign("test_all_dc",4, envir = get_datacamp_env())
  expect_that(get("test_all_dc",envir = get_datacamp_env()), equals(4))
  assign("test_all_sol",5, envir = get_datacamp_env())
  expect_that(get("test_all_sol",envir = get_solution_env()), equals(5))
  assign("test_all_sct",6, envir = get_datacamp_env())
  expect_that(get("test_all_sct",envir = get_sct_env()), equals(6))
  assign("test_all_global",7, envir = get_datacamp_env())
  expect_that(get("test_all_global", envir = globalenv()), equals(7))
  clean_everything()
  expect_that(length(ls(envir = get_datacamp_env())), equals(0))
  expect_that(length(ls(envir = get_solution_env())), equals(0))
  expect_that(length(ls(envir = get_sct_env())), equals(0))
  expect_that(length(ls(envir = globalenv())), equals(0))
})
