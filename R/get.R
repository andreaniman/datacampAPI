#' DataCamp utility functions (getting variables)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Getting variables.
#'
#' @name get
#' @keywords internal
#' @export
get_variable <- function(name, message = NULL, envir = get_datacamp_env()) {
  if(exists(name, envir = envir, inherits = FALSE)) {
    get(name, envir = envir, inherits = FALSE)
  } else {
    if(is.null(message)) {
      message <- paste(name, " is not available.")
    }
    stop(message)
  }
}

#' @rdname get
#' @export
get_pec_code <- function() {
  get_variable("DC_PEC","pre_exercise_code is not available.")
}

#' @rdname get
#' @export
get_student_code <- function() {
  get_variable("DC_CODE","student code is not available.")
}

#' @rdname get
#' @export
get_solution_code <- function() {
  get_variable("DC_SOLUTION","solution code is not available.")
}

#' @rdname get
#' @export
get_sct_code <- function() {
  get_variable("DC_SCT","sct code is not available.")
}

#' @rdname get
#' @export
get_student_output <- function() {
  get_variable("DM.console.output","student output is not available.")
}

#' @rdname get
#' @export
get_student_error <- function() {
  get_variable("DM.error","student error information is not available.")
}

#' @rdname get
#' @export
get_solution_output <- function() {
  stop("not implemented yet")
}

#' @rdname set
#' @export
get_sct_result <- function(x) {
  get_variable("DM.result", envir = globalenv())
}

#' @rdname get
#' @export
get_render_width <- function() {
  if (exists("DC_RENDER_WIDTH", envir = get_datacamp_env(), inherits = FALSE)) {
    get("DC_RENDER_WIDTH", envir = get_datacamp_env(), inherits = FALSE)
  } else {
    480
  }
}

#' @rdname get
#' @export
get_render_height <- function() {
  if (exists("DC_RENDER_HEIGHT", envir = get_datacamp_env(), inherits = FALSE)) {
    get("DC_RENDER_HEIGHT", envir = get_datacamp_env(), inherits = FALSE)
  } else {
    480
  }
}

# TESTWHAT SCT ENV

#' @rdname get
#' @export
get_student_pd <- function(x) {
  get_variable("student_pd", envir = get_sct_env())
}

#' @rdname get
#' @export
get_solution_pd <- function(x) {
  get_variable("solution_pd", envir = get_sct_env())
}

#' @rdname get
#' @export
get_student_ds <- function(x) {
  get_variable("student_ds", envir = get_sct_env())
}

#' @rdname get
#' @export
get_solution_ds <- function(x) {
  get_variable("solution_ds", envir = get_sct_env())
}

#' @rdname get
#' @export
get_student_ds_part <- function(x) {
  get_variable("student_ds_part",envir = get_sct_env())
}

#' @rdname get
#' @export
get_solution_ds_part <- function(x) {
  get_variable("solution_ds_part", envir = get_sct_env())
}

#' @rdname get
#' @export
get_chunk_number <- function(x) {
  get_variable("chunk_number", envir = get_sct_env())
}

#' @rdname get
#' @export
get_inline_number <- function(x) {
  get_variable("inline_number", envir = get_sct_env())
}
