\name{compareIgnoreAttrs}
\alias{compareIgnoreAttrs}
\title{ Compare Two Objects with Different Attributes }
\description{
  Compare two objects for equality, ignoring any attributes if 
  necessary beforehand.
}
\usage{
compareIgnoreAttrs(model, comparison, transform = character(),
                   equal = TRUE, ...)
}
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{equal}{ Whether to test for equality if the test for identity
    fails. }
  \item{\dots}{ Arguments passed to \code{compareEqual()}. }
}
\value{
  An object of class \code{"comparison"}.
  Use \code{isTRUE()} to determine whether the
  comparison has succeeded.
}
\author{ Paul Murrell }
\seealso{
  \code{\link{compare}} and
  \code{\link{compareEqual}}
}
\examples{
model <- list(a=1:26, b=letters)
comparison <- model
attr(comparison, "test") <- "test"
compareIgnoreAttrs(model, comparison)
}
\keyword{utilities}
\keyword{logic}
