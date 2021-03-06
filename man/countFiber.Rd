% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/countFiber.R
\name{countFiber}
\alias{countFiber}
\title{Count the elements of a fiber Ax = b}
\usage{
countFiber(A, b, dir = tempdir(), quiet = TRUE, cache = TRUE, ...)
}
\arguments{
\item{A}{the A matrix of Ax = b}

\item{b}{the b vector of Ax = b}

\item{dir}{directory to place the files in, without an ending /}

\item{quiet}{show latte output}

\item{cache}{use count (default) or fcount}

\item{...}{additional arguments to \code{\link{count}}}
}
\value{
an integer
}
\description{
Count the elements of a fiber Ax = b
}
\details{
\code{countFiber} uses LattE's count function (via algstat's 
\code{\link{count}} function) to count the fiber  In many cases,
the number of such tables is enormous.  In these cases, instead
of giving back an integer \code{countFiber} provides a character
string with the integer in it; see examples.
}
\examples{

\dontrun{ 


data(politics)
(A <- hmat(c(2,2), list(1, 2)))
countTables(politics, A)
b <- A \%*\% tab2vec(politics)
countFiber(A, b)


# this counts the number of ways 10 non-negative integers can sum to 100
A <- ones(1, 10)
countFiber(A, 100, cache = FALSE)
system.time(countFiber(A, 100, cache = FALSE))
system.time(countFiber(A, 100))
system.time(countFiber(A, 100))


}

}
\seealso{
\code{\link{count}}
}

