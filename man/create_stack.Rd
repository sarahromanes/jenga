% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_stack.R
\name{create_stack}
\alias{create_stack}
\title{Create a new jenga stack}
\usage{
create_stack(slot.names)
}
\arguments{
\item{slot.names}{A vector of names for the stack to be created.}
}
\value{
stack, an empty list named as given by \code{slot.names}, and of length of the input vector.
}
\description{
Create a new jenga stack
}
\examples{

my.stack <- create_stack(c("Variable 1", "Variable 2", "Variable 3"))
}
