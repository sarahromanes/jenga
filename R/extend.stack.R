#' Extend your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @param extendedSlot a character input, of the name of the new slot to be created.
#' @return an extended jenja stack



extend.stack <- function(stack, extendedSlot){

  nameSlot <- deparse(substitute(stack))

  stack[[length(stack)+1]] <- list()
  names(stack)[length(stack)] <- extendedSlot
  stack$extendedSlot <- list(NULL)
  assign(nameSlot, stack, envir=.GlobalEnv)

}
