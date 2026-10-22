\name{compareIdentical}
\alias{compareIdentical}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compare Two Objects for Identity }
\description{
  This function is just a wrapper for the \code{identical()} function to
  determine whether two objects are identical.  Its usefulness
  is in being able to be combined with other functions in the
  \pkg{compare} package that
  perform much more relaxed comparisons.
}
\usage{
compareIdentical(model, comparison, transform = character(), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{\dots}{ Allows arguments that are only relevant to other
    comparison functions. }
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
compareIdentical(1:10/10, 1:10/10)
compareIdentical(1:10/10, 3:12/10 - 2/10)
}
\keyword{utilities}
\keyword{logic}
