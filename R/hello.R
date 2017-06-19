

#' @title Snake caser
#'
#' @description A function for an RStudio Add-in to convert a sentence-like character string to a single element using snake case (i.e. words all lower case and separated by underscores). Useful for making variable names from natural language expressions.
#'
#' @param x chr A character string
#'
#' @return A character string in snake case
#' @export
#'
#' @importFrom  rstudioapi getActiveDocumentContext modifyRange
#'
snake_caser = function(x) {

  context <- rstudioapi::getActiveDocumentContext()
  for (con in rev(context$selection))
  rstudioapi::modifyRange(con$range, to_snake_case(con$text), context$id)

}


#' @title To snake case
#'
#' @description A function to convert a sentence-like character string to a single element using snake case (i.e. punctuation removed, words to all lower case and separated by underscores). Useful for making variable names from natural language expressions. Inspired by Bob Rudis' docxtractr::mcga( (\url{(https://github.com/hrbrmstr/docxtractr/})
#'
#' @param x chr A character string
#'
#' @return A character string in snake case
#' @export
#'
#' @examples
#' to_snake_case("snakes are venomous, not poisonous!")
#'



to_snake_case = function(x) {
  x <- tolower(x)
  x <- gsub("[[:punct:][:space:]]+", "_", x)
  x <- gsub("_+", "_", x)
  x <- gsub("(^_|_$)", "", x)
  x
}


