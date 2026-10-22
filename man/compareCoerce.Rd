\name{compareCoerce}
\alias{compareCoerce}
\alias{compareCoerce.logical}
\alias{compareCoerce.integer}
\alias{compareCoerce.numeric}
\alias{compareCoerce.character}
\alias{compareCoerce.factor}
\alias{compareCoerce.array}
\alias{compareCoerce.matrix}
\alias{compareCoerce.table}
\alias{compareCoerce.data.frame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compare Two Objects of Different Class }
\description{
  Compare two objects for equality, coercing the comparison object
  to the same class as the model object if
  necessary beforehand.
}
\usage{
compareCoerce(model, comparison, transform = character(),
              equal = TRUE, ...)

\method{compareCoerce}{data.frame}(model, comparison,
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
  This function is generic, with methods for logical, integer, numeric,
  and  character vectors, factors, arrays, matrices, tables, data
  frames, and lists.
  
  The integer and numeric methods use
  the appropriate special-case coercion for factors.
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
compareCoerce(letters, factor(letters))
}
\keyword{utilities}
\keyword{logic}
