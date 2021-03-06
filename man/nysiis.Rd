% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nysiis.R
\name{nysiis}
\alias{nysiis}
\title{New York State Identification and Intelligence System}
\usage{
nysiis(word, maxCodeLen = 6, modified = FALSE, clean = TRUE)
}
\arguments{
\item{word}{string or vector of strings to encode}

\item{maxCodeLen}{maximum length of the resulting encodings, in characters}

\item{modified}{if \code{TRUE}, use the modified NYSIIS algorithm}

\item{clean}{if \code{TRUE}, return \code{NA} for unknown alphabetical characters}
}
\value{
the NYSIIS encoded character vector
}
\description{
The NYSIIS phonetic algorithm
}
\details{
The \code{nysiis} function phentically encodes the given
string using the New York State Identification and Intelligence
System (NYSIIS) algorithm. The algorithm is based on the
implementation provided by Wikipedia and is implemented in pure R
using regular expressions.

The variable \code{maxCodeLen} is the limit on how long the returned
NYSIIS code should be.  The default is 6.

The variable \code{modified} directs \code{nysiis} to use the
modified method instead of the original.

The \code{nysiis} algorithm is only defined for inputs over the
standard English alphabet, \emph{i.e.}, "A-Z.". Non-alphabetical
characters are removed from the string in a locale-dependent fashion.
This strips spaces, hyphens, and numbers.  Other letters, such as
"Ü," may be permissible in the current locale but are unknown to
\code{nysiis}.  For inputs outside of its known range, the output is
undefined and \code{NA} is returned and a \code{warning} this thrown.
If \code{clean} is \code{FALSE}, \code{nysiis} attempts to process the
strings.  The default is \code{TRUE}.
}
\examples{
nysiis("Robert")
nysiis("rupert")
nysiis(c("Alabama", "Alaska"), modified = TRUE)
nysiis("mississippi", 4)

}
\references{
Robert L. Taft, \emph{Name search techniques}, Bureau of Systems
Development, Albany, New York, 1970.
}
\seealso{
Other phonics: \code{\link{caverphone}},
  \code{\link{cologne}}, \code{\link{lein}},
  \code{\link{metaphone}}, \code{\link{mra_encode}},
  \code{\link{onca}}, \code{\link{phonex}},
  \code{\link{phonics}}, \code{\link{rogerroot}},
  \code{\link{soundex}}, \code{\link{statcan}}
}
\concept{phonics}
