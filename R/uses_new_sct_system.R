#' Check if the current sct uses datacampSCT functions (FALSE) or testwhat functions (TRUE)
#'
#' @export
uses_new_sct_system = function() {
  # obtain functions in package testwhat
  testwhat_functions = try(getNamespaceExports("testwhat"), silent = TRUE)
  if (inherits(testwhat_functions, "try-error")) return(FALSE)

  # obtain functions called in SCT code
  parseData <- getParseData(parse(text = get_sct_code(), keep.source = TRUE))
  sct_ids <-  parseData$id[parseData$token == "SYMBOL_FUNCTION_CALL"]
  sct_functions <- getParseText(parseData, id = sct_ids)

  # check if SCT code uses function from package testwhat
  any(sct_functions %in% testwhat_functions)
}
