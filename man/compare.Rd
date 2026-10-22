\name{compare}
\alias{compare}
\alias{compareName}
\concept{approximately equal}
\concept{equality testing}
\title{ Compare Two Objects }
\description{
  Compare two objects and, if they are not the same, attempt
  to transform them to see if they are the same after being
  transformed.
}
\usage{
compare(model, comparison,
        equal = TRUE,
        coerce = allowAll,
        shorten = allowAll,
        ignoreOrder = allowAll,
        ignoreNameCase = allowAll,
        ignoreNames = allowAll,
        ignoreAttrs = allowAll,
        round = FALSE,
        ignoreCase = allowAll,
        trim = allowAll,
        dropLevels = allowAll,
        ignoreLevelOrder = allowAll,
        ignoreDimOrder = allowAll,
        ignoreColOrder = allowAll,
        ignoreComponentOrder = allowAll,
        colsOnly = !allowAll,
        allowAll = FALSE)

compareName(model, compName,
            ...,
            ignore.case = TRUE,
            compEnv = .GlobalEnv)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ The \dQuote{correct} object. }
  \item{comparison}{ The object to be compared with the \code{model}. }
  \item{equal}{ Test for equality if test for identity fails. }
  \item{coerce}{ If objects are not the same, allow coercion of
    comparsion to model class. }
  \item{shorten}{ If the length of one object is less than the other,
    shorten the longer object. }
  \item{ignoreOrder}{ Ignore the order of values when comparing. }
  \item{ignoreNameCase}{ Ignore the case of names when comparing. }
  \item{ignoreNames}{ Ignore names attributes altogether. }
  \item{ignoreAttrs}{ Ignore attributes altogether. }
  \item{round}{ If objects are not the same, allow numbers to be rounded. }
  \item{ignoreCase}{ Ignore the case of string values. }
  \item{trim}{ Ignore leading and trailing spaces in string values. }
  \item{dropLevels}{ If factors are not the same, allow unused levels
    to be dropped. }
  \item{ignoreLevelOrder}{ Ignore the order of factor levels. }
  \item{ignoreDimOrder}{ Ignore the order of dimensions when comparing
    matrices, arrays, or tables. }
  \item{ignoreColOrder}{ Ignore the order of columns when comparing data
    frames. }
  \item{ignoreComponentOrder}{ Ignore the order of components
    when comparing lists. }
  \item{colsOnly}{ Only transform columns (not rows) when
    comparing data frames. }
  \item{allowAll}{ Allow any sort of transformation (almost; see
    Details). }
  \item{compName}{ A string giving the \emph{name} of the comparison object. }
  \item{\dots}{ Arguments to be passed to \code{compare()}.}
  \item{ignore.case}{ Ignore the case of the name when searching for
    the comparison object. }
  \item{compEnv}{ An environment within which to search for the
    comparison object. }
}
\details{
  The \code{compare()} function compares two objects for equality.
  The arguments
  allow for various transformations of the objects (e.g., type
  coercion) in order to try and achieve equality.
  
  Specific transformations can be turned on via the appropriate
  argument, or the \code{allowAll} argument can be used to
  enable all transformations, with the exception of
  rounding of numeric values.

  The \code{compareName()} function is a wrapper for \code{compare()}
  that requires the \emph{name} of the comparison object rather than
  the objects itself, plus it allows an environment to be supplied
  that contains the actual comparison object.  This is useful for the
  situation where a particular object with a particular name should have
  been generated and allows the generated object to differ from the
  desired object in terms of the case of its name.
}
\value{
  An object of class \code{"comparison"}.

  This is a list.  The most important components are \code{result},
  which gives the overall success/failure of the comparison,
  and \code{transform}, which describes the transformations
  attempted during the comparison (whether they were successful or not).
}
\author{ Paul Murrell }
\seealso{
  \code{\link{comparison-class}} and
  \code{\link{compareEqual}}
}
\examples{
obj1 <- c("a", "a", "b", "c")
obj2 <- factor(obj1)
compare(obj1, obj2, allowAll=TRUE)
}
\keyword{utilities}
\keyword{logic}
