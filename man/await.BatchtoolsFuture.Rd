% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatchtoolsFuture-class.R
\name{await.BatchtoolsFuture}
\alias{await.BatchtoolsFuture}
\title{Awaits the value of a batchtools future}
\usage{
\method{await}{BatchtoolsFuture}(future, cleanup = TRUE,
  timeout = getOption("future.wait.timeout", 30 * 24 * 60 * 60),
  delta = getOption("future.wait.interval", 1),
  alpha = getOption("future.wait.alpha", 1.01), ...)
}
\arguments{
\item{future}{The future.}

\item{cleanup}{If TRUE, the registry is completely removed upon
success, otherwise not.}

\item{timeout}{Total time (in seconds) waiting before generating an error.}

\item{delta}{The number of seconds to wait between each poll.}

\item{alpha}{A factor to scale up the waiting time in each iteration such
that the waiting time in the k:th iteration is \code{alpha ^ k * delta}.}

\item{\ldots}{Not used.}
}
\value{
The value of the evaluated expression.
If an error occurs, an informative Exception is thrown.
}
\description{
Awaits the value of a batchtools future
}
\details{
Note that \code{await()} should only be called once, because
after being called the actual asynchronous future may be removed
and will no longer available in subsequent calls.  If called
again, an error may be thrown.
}
\keyword{internal}
