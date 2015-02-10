#' DataCamp utility functions (do variables exist)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Do variables exist?
#'
#' @name exist
#' @keywords internal
#' @export
exists_sct_result <- function(x) {
  exists("DM.result", envir = globalenv())
}

#' @name exist
#' @export
exists_student_pd <- function(x) {
  exists("student_pd", envir = get_sct_env())
}

#' @name exist
#' @export
exists_solution_pd <- function(x) {
  exists("solution_pd", envir = get_sct_env())
}

#' @name exist
#' @export
exists_student_ds <- function(x) {
  exists("student_ds", envir = get_sct_env())
}

#' @name exist
#' @export
exists_solution_ds <- function(x) {
  exists("solution_ds", envir = get_sct_env())
}
