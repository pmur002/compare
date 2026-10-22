\name{compareShorten}
\alias{compareShorten}
\alias{compareShorten.data.frame}
\title{ Compare Two Objects with Different Lengths }
\description{
  Compare two objects for equality, shortening either one if
  necessary beforehand.
}
\usage{
compareShorten(model, comparison, transform = character(),
               equal = TRUE, \dots)

\method{compareShorten}{data.frame}(model, comparison, transform=character(),
               equal=TRUE, colsOnly=TRUE,
               ignoreColOrder=FALSE, ignoreNameCase=FALSE, ...)

}
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{equal}{ Whether to test for equality if the test for identity fails. }
  \item{colsOnly}{ Whether to only drop extra columns (not rows) when
    comparing data frames. }
  \item{ignoreColOrder}{ For data frames,
    whether to reorder columns by name first. }
  \item{ignoreNameCase}{ For data frames and lists,
    whether to ignore the case of names when reordering
    components by name. }
  \item{\dots}{ Arguments passed to \code{compareEqual()}. }
}
\details{
  This function checks whether the two objects being compared are
  of the same size and, if they are not, it shrinks the larger one.
  Then the two objects are compared using \code{compareIdentical()}
  and, if that fails and \code{equal=TRUE}, using \code{compareEqual()}.

  This function is generic, with specific methods for arrays, matrices,
  tables, and data frames.
  
  For vectors, extra elements are dropped from the longer object.
  For data frames, extra columns, (and, if
  \code{colsOnly=FALSE}, extra rows) are dropped.  For lists,
  extra components are dropped.  For arrays, extra dimensions are
  dropped.  For matrices, the \code{comparison} is forced to be
  two-dimensional.  For tables, extra dimensions are collapsed
  (using \code{sum()}).
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
compareShorten(1:5, 1:10)
compareShorten(matrix(1:10, ncol=2),
               array(1:100, dim=c(5, 2, 10)))
}
\keyword{utilities}
\keyword{logic}
