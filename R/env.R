#' DataCamp utility functions (environments)
#'
#' Utility functions to retrieve relevant information for testing interactive
#' exercises on \url{www.DataCamp.com}. Environments.
#'
#' @name env
#' @keywords internal
#' @export
get_datacamp_env <- function() {
  position <- which(search() == "env:datacamp")
  if(length(position) == 0) {
    attach(new.env(parent = globalenv()), name="env:datacamp")
    position <- which(search() == "env:datacamp")
  }
  as.environment(position)
}

#' @rdname env
#' @export
get_solution_env <- function() {
  position <- which(search() == "env:solution")
  if(length(position) == 0) {
    attach(new.env(), name = "env:solution")
    position <- which(search() == "env:solution")
  }
  as.environment(position)
}

#' @rdname env
#' @export
get_sct_env <- function() {
  position <- which(search() == "env:sct")
  if(length(position) == 0) {
    attach(new.env(parent = globalenv()), name = "env:sct")
    position <- which(search() == "env:sct")
  }
  as.environment(position)
}

#' @rdname env
#' @export
clean_global_env = function() {
  rm(list = ls(envir=globalenv(), all.names = TRUE),
     envir = globalenv(), inherits = FALSE)
}

#' @rdname env
#' @export
clean_datacamp_env <- function() {
  rm(list = ls(envir = get_datacamp_env(), all.names = TRUE),
     envir = get_datacamp_env(),inherits = FALSE)
}

#' @rdname env
#' @export
clean_sct_env <- function() {
  rm(list = ls(envir = get_sct_env(), all.names = TRUE),
     envir = get_sct_env(), inherits = FALSE)
}

#' @rdname env
#' @export
clean_solution_env <- function() {
  rm(list = ls(envir = get_solution_env(), all.names = TRUE),
     envir = get_solution_env(), inherits = FALSE)
}

#' @rdname env
#' @export
clean_everything <- function() {
  clean_global_env()
  clean_datacamp_env()
  clean_solution_env()
  clean_sct_env()
}

