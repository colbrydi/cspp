#' Convert Rd files to HTML for documentation
#'
#' This function takes Rd output files (documentation files
#'     that R uses), and converts them to HTML for documentation
#'     that fits course requirement.
#'
#' @param Rdname name of RD file
#' @param labels data frame of variable labels,
#'               columns are variable, obs are descriptions
#' @export
#'

convert = function(RdNames){
  for(Rdfile in RdNames){
  tools::Rd2HTML(paste0("./man/", Rdfile, ".Rd"),out = paste0("./doc/", Rdfile, ".html"))
  }
}
