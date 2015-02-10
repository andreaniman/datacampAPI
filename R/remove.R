#' DataCamp utility functions (remove variables)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Remove variables.
#'
#' @name remove
#' @keywords internal
#' @export
remove_student_output <- function() {
  rm("DM.console.output",envir = get_datacamp_env())
}

#' @rdname remove
#' @export
remove_student_error <- function() {
  rm("DM.contains.error", envir = get_datacamp_env())
}

#' @rdname remove
#' @export
remove_sct_result <- function() {
  rm("DM.result", envir = globalenv())
}


# testwhat sct env
#' @rdname remove
#' @export
remove_student_pd <- function(suppress = FALSE) {
  if(suppress) {
    suppressWarnings(rm("student_pd", envir = get_sct_env()))
  } else {
    rm("student_pd", envir = get_sct_env())
  }

}

#' @rdname remove
#' @export
remove_solution_pd <- function(suppress = FALSE) {
  if(suppress) {
    suppressWarnings(rm("solution_pd", envir = get_sct_env()))
  } else {
    rm("solution_pd", envir = get_sct_env())
  }
}


