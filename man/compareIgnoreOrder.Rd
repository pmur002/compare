\name{compareIgnoreOrder}
\alias{compareIgnoreOrder}
\alias{compareIgnoreOrder.data.frame}
\title{ Compare Two Objects with Different Order }
\description{
  Compare two objects for equality, sorting them if
  necessary beforehand.
}
\usage{
compareIgnoreOrder(model, comparison, transform = character(),
                   equal = TRUE, \dots)

\method{compareIgnoreOrder}{data.frame}(model, comparison,
                   transform=character(),
                   equal=TRUE, 
                   ignoreColOrder=FALSE,
                   ignoreNameCase=FALSE,
                   \dots) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{equal}{ Whether to test for equality if the test for identity fails. }
  \item{ignoreColOrder}{ For data frames,
    whether to reorder columns by name first. }
  \item{ignoreNameCase}{ For data frames and lists,
    whether to ignore the case of names when reordering
    components by name. }
  \item{\dots}{ Arguments passed to \code{compareEqual()}. }
}
\details{
  This function is generic, with specific methods for arrays, matrices,
  tables, and data frames.

  For arrays, matrices, and tables, the dimensions are sorted (by dimnames).
  For data frames, the rows are sorted, not the columns.
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
compareIgnoreOrder(1:10, 10:1)
}
\keyword{utilities}
\keyword{logic}
