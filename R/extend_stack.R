#' Extend your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @param new.slot a character input, of the name of the new slot to be created.
#' @return an extended jenja stack
#' @export



extend_stack <- function(stack, new.slot){

  nameSlot <- deparse(substitute(stack))

  stack[length(stack)+1] <- list(NULL)
  names(stack)[length(stack)] <- new.slot

  assign(nameSlot, stack, envir=.GlobalEnv)

}
