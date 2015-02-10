#' DataCamp utility functions (setting variables)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Setting variables.
#'
#' @name set
#' @keywords internal
set_variable <- function(name, var, envir = get_datacamp_env()) {
  assign(name, var, envir = envir)
}

#' @rdname set
#' @export
set_variable_list <- function(lst) {
  # Save everything in list data as separate variables in the datacamp environment
  nam = names(lst)
  lapply(seq_along(nam), function(i) {
    # call the datacampAPI function
    set_variable(nam[i],lst[[i]])
  })
  invisible()
}

#' @rdname set
#' @export
set_pec_code <- function(x) {
  set_variable("DC_PEC", x)
}

#' @rdname set
#' @export
set_student_code <- function(x) {
  set_variable("DC_CODE", x)
}

#' @rdname set
#' @export
set_solution_code <- function(x) {
  set_variable("DC_SOLUTION", x)
}

#' @rdname set
#' @export
set_sct_code <- function(x) {
  set_variable("DC_SCT", x)
}

#' @rdname set
#' @export
set_student_output <- function(x) {
  set_variable("DM.console.output", x)
}

#' @rdname set
#' @export
set_student_error <- function(x) {
  set_variable("DM.error", x)
}

#' @rdname set
#' @export
set_solution_output <- function() {
  stop("not implemented yet")
}

#' @rdname set
#' @export
set_sct_result <- function(x) {
  set_variable("DM.result", x, envir = globalenv())
}

## TESTWHAT SCT ENV

#' @rdname set
#' @export
set_student_pd <- function(x) {
  set_variable("student_pd", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_solution_pd <- function(x) {
  set_variable("solution_pd", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_student_ds <- function(x) {
  set_variable("student_ds", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_solution_ds <- function(x) {
  set_variable("solution_ds", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_chunk_number <- function(x) {
  set_variable("chunk_number", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_inline_number <- function(x) {
  set_variable("inline_number", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_student_ds_part <- function(x) {
  set_variable("student_ds_part", x, envir = get_sct_env())
}

#' @rdname set
#' @export
set_solution_ds_part <- function(x) {
  set_variable("solution_ds_part", x, envir = get_sct_env())
}
