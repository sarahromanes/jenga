#' Check the status of your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @return print statement on the number of filled and empty slots in your jenga stack


status.stack <- function(stack){

  empty  <- names(which(lapply(stack,length)==0))
  filled <- names(which(lapply(stack,length)!=0))

  if(length(empty)==0){
    cat(green("All slots are filled!"))

  }else if(length(filled)==0){
    cat(red("All slots are empty!"))

  }else{
    cat(crayon::blue(paste("Total of", length(filled), "slots filled out of", length(stack), "total slots\n")))
    cat("\n")
    cat(crayon::green$underline('Filled slots:'))
    cat(crayon::blue$italic(filled))
    cat("\n")
    cat(crayon::red$underline('Empty slots:'))
    cat(crayon::blue$italic(empty))
    cat("\n")
  }
}
