#' DataCamp utility functions (global env)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Remove variables.
#'
#' @param x  In set functions, this is the object you want to set.
#' @name global_vars
NULL

## SCT RESULT

#' @rdname global_vars
#' @export
get_sct_result <- function(x) {
  get_variable("DM.result", envir = globalenv(), message = "sct error not available")
}

#' @rdname global_vars
#' @export
set_sct_result <- function(x) {
  assign("DM.result", x, envir = globalenv())
}

#' @rdname global_vars
#' @export
exists_sct_result <- function(x) {
  exists("DM.result", envir = globalenv())
}

#' @rdname global_vars
#' @export
remove_sct_result <- function() {
  rm("DM.result", envir = globalenv())
}

## STUDENT OUTPUT

#' @rdname global_vars
#' @export
get_student_output <- function() {
  get_variable("DM.console.output", envir = globalenv(), message = "student output not available")
}

#' @rdname global_vars
#' @export
set_student_output <- function(x) {
  assign("DM.console.output", x, envir = globalenv())
}

#' @rdname global_vars
#' @export
exists_student_output <- function(x) {
  exists("DM.console.output", envir = globalenv())
}

#' @rdname global_vars
#' @export
remove_student_output <- function() {
  rm("DM.console.output", envir = globalenv())
}

## STUDENT ERROR

#' @rdname global_vars
#' @export
get_student_error <- function() {
  get_variable("DM.error", envir = globalenv(), message = "student error not available")
}

#' @rdname global_vars
#' @export
set_student_error <- function(x) {
  assign("DM.error", x, envir = globalenv())
}

#' @rdname global_vars
#' @export
exists_student_error <- function() {
  exists("DM.error", envir = globalenv())
}

#' @rdname global_vars
#' @export
remove_student_error <- function() {
  rm("DM.error", envir = globalenv())
}

## SOLUTION OUTPUT

#' @rdname global_vars
#' @export
get_solution_output <- function() {
  stop("not implemented yet")
}

#' @rdname global_vars
#' @export
set_solution_output <- function(x) {
  stop("not implemented yet")
}

#' @rdname global_vars
#' @export
exists_solution_output <- function() {
  stop("not implemented yet")
}

#' @name global_vars
#' @export
remove_solution_output <- function() {
  stop("not implemented yet")
}
