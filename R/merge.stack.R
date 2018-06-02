#' Merge your jenga stacks
#'
#' @param stack1 A jenga stack as created by \code{create.slot}
#' @param stack2 A jenga stack as created by \code{create.slot}
#'
#' @return a merged jenja stack



merge.stack <- function(stack1, stack2){

  nameSlot1 <- deparse(substitute(stack1))
  nameSlot2 <- deparse(substitute(stack2))

  newList <- list(stack1, stack2)
  names(newList) <- c(nameSlot1, nameSlot2)
}
