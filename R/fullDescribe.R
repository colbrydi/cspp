#' Get full description function
#'
#' This function will pull the long description for a variable(s)
#'     in the Correlates of State Policy Project data.
#'
#' @param variables variable names from cspp, as strings
#' @export
#'

fullDescribe = function(variables){
  descriptions = c()
  for(var in variables){
    description = cspp:::variable_info$longer.description[cspp:::variable_info$variable.name==var]
    descriptions = c(descriptions, description)
  }
  return(descriptions)
}
