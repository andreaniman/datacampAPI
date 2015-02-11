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
