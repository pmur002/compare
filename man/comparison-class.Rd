\name{comparison-class}
\alias{comparison-class}
\alias{transforms}
\alias{isTRUE}
\alias{isTRUE.comparison}
\title{ Comparison Between Two Objects }
\description{
  This class is used to represent the result of a comparison between
  two objects.
  
  It is just a list, with the following components:
  \describe{
    \item{result}{ Logical value indicating whether the comparison
      succeeded (the objects were the same). }
    \item{transform}{ Character vector of descriptions of any
      transformations that have been applied to the objects being
      compared. }
    \item{tM}{ The transformed model object. }
    \item{tC}{ The transformed comparison object. }
    \item{tMpartial}{ The partially transformed model object. }
    \item{tCpartial}{ The partially transformed comparison object. }
    \item{partialTransform}{ The transformations that have been applied
      to the objects being compared, \emph{except for} any
      transformations that were applied during the test for equality
      (i.e., by \code{compareEqual()}). }
  }
}
\usage{
isTRUE(x)

transforms(comp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x, comp}{ A comparison object. }
}
\details{
  Partial values in the result of a comparison are useful for when a
  comparison fails, but a subsequent comparison will be attempted, i.e.,
  for daisy-chaining the various \code{compareSomething()} functions,
  i.e., what \code{compare()} does.
}
\value{
  \code{isTRUE()} returns a logical value, based on the comparison
  \code{result}.

  \code{transforms()} returns a character vector of transformation
  descriptions.
}
\author{ Paul Murrell }
\seealso{
  \code{\link{compare}} and
  \code{\link{compareEqual}}
}
\examples{
isTRUE(compareIgnoreOrder(1:10, 10:1))
transforms(compareIgnoreOrder(1:10, 10:1))
}
\keyword{utilities}
\keyword{logic}
