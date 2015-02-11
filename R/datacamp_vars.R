#' DataCamp utility functions (datacamp env)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Remove variables.
#'
#' @param x  In set functions, this is the object you want to set.
#' @name datacamp_vars
NULL

## SOLUTION CODE

#' @rdname datacamp_vars
#' @export
get_solution_code <- function() {
  get_variable("DC_SOLUTION", envir = get_datacamp_env(), message = "solution code is not available.")
}

#' @rdname datacamp_vars
#' @export
set_solution_code <- function(x) {
  assign("DC_SOLUTION", x, envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
exists_solution_code <- function(x) {
  exists("DC_SOLUTION", envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
remove_solution_code <- function() {
  rm("DC_SOLUTION",envir = get_datacamp_env())
}

## STUDENT CODE

#' @rdname datacamp_vars
#' @export
get_student_code <- function() {
  get_variable("DC_CODE", envir = get_datacamp_env(), message = "student code is not available.")
}

#' @rdname datacamp_vars
#' @export
set_student_code <- function(x) {
  assign("DC_CODE", x, envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
exists_student_code <- function(x) {
  exists("DC_CODE", envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
remove_student_code <- function() {
  rm("DC_CODE",envir = get_datacamp_env())
}

## SCT CODE

#' @rdname datacamp_vars
#' @export
get_sct_code <- function() {
  get_variable("DC_SCT", envir = get_datacamp_env(), message = "sct code is not available.")
}

#' @rdname datacamp_vars
#' @export
set_sct_code <- function(x) {
  assign("DC_SCT", x,  envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
exists_sct_code <- function() {
  exists("DC_SCT", envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
remove_sct_code <- function() {
  rm("DC_SCT",envir = get_datacamp_env())
}

## PEC CODE

#' @rdname datacamp_vars
#' @export
get_pec_code <- function() {
  get_variable("DC_PEC", envir = get_datacamp_env(), "pre_exercise_code is not available.")
}

#' @rdname datacamp_vars
#' @export
set_pec_code <- function(x) {
  assign("DC_PEC", x,  envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
exists_pec_code <- function() {
  exists("DC_PEC", envir = get_datacamp_env())
}

#' @rdname datacamp_vars
#' @export
remove_pec_code <- function() {
  rm("DC_PEC",envir = get_datacamp_env())
}

## PLOT INFO

#' @rdname datacamp_vars
#' @export
get_render_width <- function() {
  if (exists("DC_RENDER_WIDTH", envir = get_datacamp_env(), inherits = FALSE)) {
    get("DC_RENDER_WIDTH", envir = get_datacamp_env(), inherits = FALSE)
  } else {
    480
  }
}

#' @rdname datacamp_vars
#' @export
get_render_height <- function() {
  if (exists("DC_RENDER_HEIGHT", envir = get_datacamp_env(), inherits = FALSE)) {
    get("DC_RENDER_HEIGHT", envir = get_datacamp_env(), inherits = FALSE)
  } else {
    480
  }
}
