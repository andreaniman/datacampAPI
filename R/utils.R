#' DataCamp utility functions (helper function)
#'
#' @name utils
#' @keywords internal
#' @export
get_variable <- function(name, envir, message = NULL) {
  if(exists(name, envir = envir, inherits = FALSE)) {
    get(name, envir = envir, inherits = FALSE)
  } else {
    if(is.null(message)) {
      message <- paste(name, " is not available.")
    }
    stop(message)
  }
}

#' @rdname utils
#' @keywords internal
#' @export
set_variable_list <- function(lst) {
  # Save everything in list data as separate variables in the datacamp environment
  nam = names(lst)
  lapply(seq_along(nam), function(i) {
    # call the datacampAPI function
    assign(nam[i],lst[[i]], envir = get_datacamp_env())
  })
  invisible()
}
