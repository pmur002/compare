\name{compareEqual}
\alias{compareEqual}
\alias{compareEqual.logical}
\alias{compareEqual.numeric}
\alias{compareEqual.character}
\alias{compareEqual.factor}
\alias{compareEqual.matrix}
\alias{compareEqual.array}
\alias{compareEqual.table}
\alias{compareEqual.data.frame}
\alias{compareEqual.list}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compare Two Objects for Equality }
\description{
  Compare two objects and allow for various minor differences
  between them.
}
\usage{
compareEqual(model, comparison, transform = character(), \dots)

\method{compareEqual}{logical}(model, comparison, transform = character(), \dots)

\method{compareEqual}{numeric}(model, comparison, transform = character(),
             round=FALSE,
             \dots)

\method{compareEqual}{character}(model, comparison, transform=character(),
             ignoreCase=FALSE,
             trim=FALSE,
             \dots)

\method{compareEqual}{factor}(model, comparison, transform=character(),
             dropLevels=FALSE,
             ignoreLevelOrder=FALSE,
             \dots) 

\method{compareEqual}{matrix}(model, comparison, transform=character(),
             ignoreDimOrder=FALSE,
             \dots) 

\method{compareEqual}{array}(model, comparison, transform=character(),
             ignoreDimOrder=FALSE,
             \dots) 

\method{compareEqual}{table}(model, comparison, transform=character(),
             ignoreDimOrder=FALSE,
             \dots) 

\method{compareEqual}{data.frame}(model, comparison, transform=character(),
             ignoreColOrder=FALSE,
             ignoreNameCase=FALSE,
             \dots,
             recurseFun=compareEqual) 

\method{compareEqual}{list}(model, comparison, transform=character(),
             ignoreComponentOrder=FALSE,
             ignoreNameCase=FALSE,
             \dots,
             recurseFun=compareEqual) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{transform}{ A character vector containing any transformations
    that have been performed on the objects prior to this comparison. }
  \item{round}{ For numeric vectors,
    whether the objects should be rounded before comparison.
    If \code{FALSE} there is no rounding, if \code{TRUE} both objects
    are rounded to zero decimal places, if an integer value, then
    both objects are rounded to the specified number of decimal
    places. May also be a function (of one argument). }
  \item{ignoreCase}{ For character vectors,
    whether to ignore the case of the strings. }
  \item{trim}{ For character vectors,
    whether to ignore leading and trailing white space. }
  \item{dropLevels}{ For factors,
    whether to drop unused levels before the comparison. }
  \item{ignoreLevelOrder}{ For factors,
    whether to ignore the order of levels. }
  \item{ignoreDimOrder}{ For matrices, arrays, and tables,
    whether to reorder of the dimensions by name
    before the comparison. }
  \item{ignoreColOrder}{ For data frames,
    whether to reorder the columns by name
    before the comparison. }
  \item{ignoreComponentOrder}{ For lists,
    whether to reorder the components by name
    before the comparison. }
  \item{ignoreNameCase}{ For data frames and lists,
    whether to ignore the case of names when reordering
    components by name. }
  \item{\dots}{ Other arguments controlling the comparison. }
  \item{recurseFun}{ For data frames,
    the function to use to compare the columns
    of the data frames. For lists, the function used to compare
    the components of the list. }
}
\details{
  This function compares two objects for identity (using
  \code{identical()}), then if that fails and \code{equal=TRUE},
  compares the objects for equality.  The arguments allow for
  various relaxations on what \dQuote{equal} means.
  
  For numeric vectors, the comparison uses \code{all.equal()}
  to allow for differences in floating-point representation.
  The \code{round} argument also allows for much more lenient
  comparisons.  The \code{round} argument can also be a function,
  e.g., \code{floor()} (see other examples below).
}
\value{
  An object of class \code{"comparison"}.
  Use \code{isTRUE()} to determine whether the
  comparison has succeeded.
}
\author{ Paul Murrell }
\seealso{
  \code{\link{compare}}
}
\examples{
compareEqual(letters, paste(" ", letters, " "), trim=TRUE)
compareEqual(c(.1, 1, 10), c(.13, 1.3, 13),
             round=function(x) { signif(x, 1) })
}
\keyword{utilities}
\keyword{logic}
