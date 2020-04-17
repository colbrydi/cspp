#' Get years function
#'
#' This function will print the years available for a variable(s)
#'     in the Correlates of State Policy Project data.
#'
#' @param variables variable names from cspp, as strings
#' @export
#'

years = function(variables){
  descriptions = c()
  for(var in variables){
    description = cspp:::variable_info$years[cspp:::variable_info$variable.name==var]
    descriptions = c(descriptions, description)
  }
  return(descriptions)
}
