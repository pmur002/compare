\name{compareIgnoreNameCase}
\alias{compareIgnoreNameCase}
\alias{compareIgnoreNameCase.data.frame}
\alias{compareIgnoreNames}
\alias{compareIgnoreNames.data.frame}
\title{ Compare Two Objects with Different Names }
\description{
  Compare two objects for equality, ignoring the case of
  name attributes, or ignoring name attributes altogether, if 
  necessary beforehand.
}
\usage{
compareIgnoreNameCase(model, comparison, transform = character(),
                      equal = TRUE, ...)

\method{compareIgnoreNameCase}{data.frame}(model, comparison, transform=character(),
                      equal=TRUE, 
                      colsOnly=TRUE,
                      ignoreColOrder=FALSE,
                      ignoreNameCase=FALSE,
                      ...)

compareIgnoreNames(model, comparison, transform=character(),
                   equal=TRUE, ...) 

\method{compareIgnoreNames}{data.frame}(model, comparison, transform=character(),
                   equal=TRUE, 
                   colsOnly=TRUE,
                   ignoreColOrder=FALSE,
                   ignoreNameCase=FALSE,
                   ...) 

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{equal}{ Whether to test for equality if the test for identity
    fails. }
  \item{colsOnly}{ Only ignore (case of) column names (NOT row names). }
  \item{ignoreColOrder}{ For data frames and lists, sort the columns or
    components by name before ignoring the case of names. }
  \item{ignoreNameCase}{ When reordering the columns or components by
    name (i.e., when \code{ignoreColOrder=TRUE}),
    whether to ignore the case of the names. }
  \item{\dots}{ Arguments passed to \code{compareEqual()}. }
}
\details{
  These functions are generic, with specific methods for
  data frames and lists.
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
model <- data.frame(x=1:26, y=letters, z=factor(letters),
                    stringsAsFactors=FALSE)
comparison <- data.frame(a=1:26, b=letters, c=factor(letters),
                         stringsAsFactors=FALSE)
compareIgnoreNames(model, comparison)
}
\keyword{utilities}
\keyword{logic}
