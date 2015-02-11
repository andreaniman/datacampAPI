#' DataCamp utility functions (sct env)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Setting variables.
#'
#' @param x  In set functions, this is the object you want to set.
#' @name sct_vars
NULL

## STUDENT PD

#' @rdname sct_vars
#' @export
get_student_pd <- function(x) {
  get_variable("student_pd", envir = get_sct_env(), message = "student parse data not available")
}

#' @rdname sct_vars
#' @export
set_student_pd <- function(x) {
  assign("student_pd", x, envir = get_sct_env())
}

#' @name sct_vars
#' @export
exists_student_pd <- function(x) {
  exists("student_pd", envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
remove_student_pd <- function() {
  suppressWarnings(rm("student_pd", envir = get_sct_env()))
}

## SOLUTION PD

#' @rdname sct_vars
#' @export
get_solution_pd <- function(x) {
  get_variable("solution_pd", envir = get_sct_env(), message = "solution parse data not available")
}

#' @rdname sct_vars
#' @export
set_solution_pd <- function(x) {
  assign("solution_pd", x, envir = get_sct_env())
}

#' @name sct_vars
#' @export
exists_solution_pd <- function(x) {
  exists("solution_pd", envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
remove_solution_pd <- function() {
  suppressWarnings(rm("solution_pd", envir = get_sct_env()))
}

## STUDENT DS

#' @rdname sct_vars
#' @export
get_student_ds <- function(x) {
  get_variable("student_ds", envir = get_sct_env(), message = "student doc structure not available")
}

#' @rdname sct_vars
#' @export
set_student_ds <- function(x) {
  assign("student_ds", x, envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
exists_student_ds <- function(x) {
  exists("student_ds", envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
remove_student_ds <- function() {
  suppressWarnings(rm("student_ds", envir = get_sct_env()))
}

## SOLUTION DS

#' @rdname sct_vars
#' @export
get_solution_ds <- function(x) {
  get_variable("solution_ds", envir = get_sct_env(), message = "solution doc structure not available")
}

#' @rdname sct_vars
#' @export
set_solution_ds <- function(x) {
  assign("solution_ds", x, envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
exists_solution_ds <- function(x) {
  exists("solution_ds", envir = get_sct_env())
}

#' @rdname sct_vars
#' @export
remove_solution_ds <- function() {
  suppressWarnings(rm("solution_ds", envir = get_sct_env()))
}

## STUDENT DS PART

#' @rdname sct_vars
#' @export
get_student_ds_part <- function(x) {
  get_variable("student_ds_part",envir = get_sct_env(), message = "student partial doc structure not available")
}

#' @rdname sct_vars
#' @export
set_student_ds_part <- function(x) {
  assign("student_ds_part", x, envir = get_sct_env())
}

## SOLUTION DS PART

#' @rdname sct_vars
#' @export
get_solution_ds_part <- function(x) {
  get_variable("solution_ds_part", envir = get_sct_env(), message = "solution partial doc structure not available")
}

#' @rdname sct_vars
#' @export
set_solution_ds_part <- function(x) {
  assign("solution_ds_part", x, envir = get_sct_env())
}

## CHUNK NUMBER

#' @rdname sct_vars
#' @export
get_chunk_number <- function(x) {
  get_variable("chunk_number", envir = get_sct_env(), message = "chunk number not available")
}

#' @rdname sct_vars
#' @export
set_chunk_number <- function(x) {
  assign("chunk_number", x, envir = get_sct_env())
}

## INLINE NUMBER

#' @rdname sct_vars
#' @export
get_inline_number <- function(x) {
  get_variable("inline_number", envir = get_sct_env(), message = "inline number not available")
}

#' @rdname sct_vars
#' @export
set_inline_number <- function(x) {
  assign("inline_number", x, envir = get_sct_env())
}
