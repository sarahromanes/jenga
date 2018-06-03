#' Create a new jenga stack
#'
#' @param slot.names A vector of names for the stack to be created.
#' @return stack, an empty list named as given by \code{slot.names}, and of length of the input vector.
#' @export
#' @examples
#'
#' my.stack <- create.slot(c("Variable 1", "Variable 2", "Variable 3"))

create.stack <- function(slot.names){

  stack <- vector("list", length(slot.names))
  names(stack) <- slot.names
  return(stack)

}
