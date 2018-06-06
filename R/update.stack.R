#' Update a slot of your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @param objects a list of items to be inserted into the jenga stack
#' @param slots a vector of character inputs, of the slot/s to be updated. Must match slots already in the stack. Order of slots corresponds to order of objects
#' @param SAVE if \code{SAVE=TRUE}, then the updated slot will be saved to disk in an .RData file of the name of the stack.
#' @return an updated jenja stack
#' @export



update.stack <- function(stack, objects, slots, save=TRUE){

  inds <- which(names(stack)%in%slots)

  nameSlot <- deparse(substitute(stack))


  if(length(inds)==0){
    stop(paste("Unknown slots input-- not an assigned slot in", nameSlot))
  }

  else{

    stack[inds] <-  objects
    assign(nameSlot, stack, envir=.GlobalEnv)

    #cat(paste("Jenga stack",nameSlot,"has been updated for slot", slot))

    cat("\n")
    cat(crayon::blue(paste("Jenga stack", "`",nameSlot,"`", "has been updated for","\n")))
    cat("\n")

    slots1 <- paste0(
      crayon::green(cli::symbol$bullet), " ",
      crayon::col_align(slots, max(crayon::col_nchar(slots)))
    )

    if (length(slots1) %% 2 == 1) {
      slots1 <- append(slots1, "")
    }
    col1 <- seq_len(length(slots1) / 2)
    info <- paste0(slots1[col1], "     ", slots1[-col1])

    message(paste(info, collapse = "\n"))

    cat("\n")

  }

  if(save){
    save(stack, file=paste0(nameSlot, ".RData"))
  }
}
