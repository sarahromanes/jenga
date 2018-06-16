#' Check the status of your jenga stack
#'
#' @param stack A jenga stack as created by \code{create.slot}
#' @return print statement on the number of filled and empty slots in your jenga stack
#' @export


status_stack <- function(stack){

  empty  <- names(which(lapply(stack,length)==0))
  filled <- names(which(lapply(stack,length)!=0))

  if(length(empty)==0){
    cat("\n")
    cat(crayon::green("All slots are filled!"))

  }else if(length(filled)==0){
    cat("\n")
    cat(crayon::red("All slots are empty!"))

  }else{
    cat("\n")
    cat(crayon::blue(paste("Total of", length(filled), "slots filled out of", length(stack), "total slots\n")))
    cat("\n")

    message(
      cli::rule(
        left = crayon::bold("Filled Slots")
      )
    )
    cat("\n")

    filled1 <- paste0(
      crayon::green(cli::symbol$tick), " ",
      crayon::col_align(filled, max(crayon::col_nchar(filled)))
    )

    if (length(filled1) %% 2 == 1) {
      filled1 <- append(filled1, "")
    }
    col1 <- seq_len(length(filled1) / 2)
    info <- paste0(filled1[col1], "     ", filled1[-col1])

    message(paste(info, collapse = "\n"))

    cat("\n")

    ###########################################

    message(
      cli::rule(
        left = crayon::bold("Empty Slots")
      )
    )
    cat("\n")

    empty1 <- paste0(
      crayon::red(cli::symbol$cross), " ",
      crayon::col_align(empty, max(crayon::col_nchar(empty)))
    )

    if (length(empty1) %% 2 == 1) {
      empty1 <- append(empty1, "")
    }
    col1 <- seq_len(length(empty1) / 2)
    info <- paste0(empty1[col1], "     ", empty1[-col1])

    message(paste(info, collapse = "\n"))



  }
}


