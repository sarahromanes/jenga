#' Update a slot of your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @param object An object to be inserted into the jenga stack
#' @param updatedSlot a character input, of the slot to be updated. Must match slots already in the stack.
#' @param SAVE if \code{SAVE=TRUE}, then the updated slot will be saved to disk in an .RData file of the name of the stack.
#' @return an updated jenja stack



update.stack <- function(stack, object, slot, save=TRUE){

  inds <- which(names(stack)==slot)

  nameSlot <- deparse(substitute(stack))


  if(length(inds)==0){
    stop(paste("Unknown slot",slot, "-- not an assigned slot in", nameSlot))
  }

  else{

    stack[[inds]] <-  object
    assign(nameSlot, stack, envir=.GlobalEnv)

    cat(paste("Slot",nameSlot,"has been updated for slot", slot))

  }

  if(save){
    save(stack, file=paste0(nameSlot, ".RData"))
  }
}
