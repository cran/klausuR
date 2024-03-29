% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/klausur.gen.marks.R
\name{klausur.gen.marks}
\alias{klausur.gen.marks}
\title{Generate mark assignments}
\usage{
klausur.gen.marks(
  mark.labels = NULL,
  answ = NULL,
  wght = NULL,
  suggest = list(mean = NULL, sd = NULL),
  minp = 0
)
}
\arguments{
\item{mark.labels}{Either a vector with labels (names) for all marks that should be assigned to certain test scores,
or one of the arguments 6, 11, 16, "DIHK", "UK", "USA" or "A" (see Details). If NULL,
      you will be asked to type in labels.}

\item{answ}{Either an object with item names in klausuR scheme (see \code{\link[klausuR:klausur]{klausur}}),
e.g. your observation data,
      or an integer representing the maximum score of the test. If NULL, you will
be asked for the maximum score.}

\item{wght}{A vector with weights for each item. If NULL,
      the number of items is used as maximum score, that is,
each item gives a point.}

\item{suggest}{A list with the elements \code{mean} and \code{sd}. If both are not NULL,
      this function will suggest marks for achieved points
assuming normal distribution. That is,
      "mean" and "sd" should be set to the corresponding values of the test's results.}

\item{minp}{An integer value,
      in case there is a minimum score no-one can fall below (which can happen, e.g., with ET/NRET scoring and
different numbers of answer alternatives). Should be left as is in most cases.}
}
\value{
A character vector.
}
\description{
Create a vector of marks to be used by \code{\link[klausuR:klausur]{klausur}}.
}
\details{
If \code{mark.labels} is set to one of the arguments 6, 11, 16, "DIHK", "UK",
      "USA" or "A", often used schemes for marks will be used as
a preset. In case of \code{mark.labels=6}, marks will go from 1 (best) to 6 (failed),
      as widely used in German schools.
In case of \code{mark.labels=11}, marks will range from 1.0 (best) to 5.0 (failed),
      with the marks 1 through 3 being
split into three decimal steps .0, .3 and .7,
      as is often used in academic institutions. In case of \code{mark.labels=16},
marks will be a range of points from 15 (best) to 0 (failed),
      as often used in German gymnasiums. If \code{mark.labels="A"},
marks A to F are given.

For the other cases some more probably useful assumptions are being made,
      which percentage of achieved points leads to which mark.
If \code{mark.labels="DIHK"}, marks will be 1 through 6,
      and  calculated according to usual standards of the Deutsche Industrie- und Handelskammer
(1 > 92\%, 2 > 81\%, 3 > 67\%, 4 > 50\%, 5 > 30\%, 6 below that).
If \code{mark.labels="UK"}, marks are A > 90\%, B > 65\%, C > 35\%,
      D > 10\% and E below that, and for \code{mark.labels="USA"} it's
A > 90\%, B > 80\%, C > 70\%,
      D > 60\% and F below that. Please note that the percentages indicate individual test results
and not "the best X percent of the sample".
If you'd rather use your own system, either declare it as a vector, or leave as NULL,
      and you'll be
asked (be sure to \strong{begin with the worst} mark!).

The parameter \code{answ} is quite versatile as well. You can just feed it your observation data,
      if it complies
with the naming scheme for items (\code{Item###},
      see also \code{\link[klausuR:klausur.gen]{klausur.gen}}), and
\code{klausur.gen.marks} will calculate the maximum score automatically. Or you assign the maximum directly as an integer
value.

Another feature can be toggled with the parameter \code{suggest}. If you feed it with the mean and standard deviation values of your test's
results,
      marks are automatically assigned to the achieved score under the assumption of normal distribution. Please understand that
the naming "suggest" is not an accident! This is only a suggestion, please review it,
      tweak it, revise it, until it fits your needs.
However, this feature can directly be called by \code{\link[klausuR:klausur]{klausur}}.
}
\examples{
\dontrun{
notenschluessel <- klausur.gen.marks(mark.labels=11,answ=antworten)
}
}
\seealso{
\code{\link[klausuR:klausur]{klausur}}
}
\author{
m.eik michalke \email{meik.michalke@uni-duesseldorf.de}
}
\keyword{utilities}
