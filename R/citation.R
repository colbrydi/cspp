#' Get citation function
#'
#' This function will pull the citations for a variable(s)
#'     in the Correlates of State Policy Project data.
#'
#' @param variables variable names from cspp, as strings
#' @export
#'

citation = function(variables){
  descriptions = c()
  for(var in variables){
    description = cspp:::variable_info$sources[cspp:::variable_info$variable.name==var]
    descriptions = c(descriptions, description)
  }
  return(descriptions)
}
