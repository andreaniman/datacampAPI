#' Check if the current sct uses datacampSCT functions (FALSE) or testwhat functions (TRUE)
#'
#' @param sct_code the sct code
#' @export
uses_new_sct_system = function(sct_code) {
  # obtain functions in package testwhat
  testwhat_functions = try(getNamespaceExports("testwhat"), silent = TRUE)
  if (inherits(testwhat_functions, "try-error")) stop("Error in uses_new_sct_system: testwhat not found")
  testwhatrstudio_functions = try(getNamespaceExports("testwhatrstudio"), silent = TRUE)
  if (inherits(testwhatrstudio_functions, "try-error")) stop("Error in uses_new_sct_system: testwhat not found")

  new_functions <- c(testwhat_functions, testwhatrstudio_functions)

  # obtain functions called in SCT code
  parseData <- getParseData(parse(text = sct_code, keep.source = TRUE))
  sct_ids <-  parseData$id[parseData$token == "SYMBOL_FUNCTION_CALL"]
  sct_functions <- getParseText(parseData, id = sct_ids)

  # check if SCT code uses function from package testwhat
  any(sct_functions %in% new_functions)
}
