% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerSim.R
\name{powerSim}
\alias{powerSim}
\title{Estimate power by simulation.}
\usage{
powerSim(
  fit,
  test = fixed(getDefaultXname(fit)),
  sim = fit,
  fitOpts = list(),
  testOpts = list(),
  simOpts = list(),
  seed,
  ...
)
}
\arguments{
\item{fit}{a fitted model object (see \code{\link{doFit}}).}

\item{test}{specify the test to perform. By default, the first fixed effect in \code{fit} will be tested.
(see: \link{tests}).}

\item{sim}{an object to simulate from. By default this is the same as \code{fit} (see \code{\link{doSim}}).}

\item{fitOpts}{extra arguments for \code{\link{doFit}}.}

\item{testOpts}{extra arguments for \code{\link{doTest}}.}

\item{simOpts}{extra arguments for \code{\link{doSim}}.}

\item{seed}{specify a random number generator seed, for reproducible results.}

\item{...}{any additional arguments are passed on to \code{\link{simrOptions}}. Common options include:
\describe{
  \item{\code{nsim}:}{the number of simulations to run (default is \code{1000}).}
  \item{\code{alpha}:}{the significance level for the statistical test (default is \code{0.05}).}
  \item{\code{progress}:}{use progress bars during calculations (default is \code{TRUE}).}
  }}
}
\description{
Perform a power analysis for a mixed model.
}
\examples{
fm1 <- lmer(y ~ x + (1|g), data=simdata)
powerSim(fm1, nsim=10)

}
\seealso{
\code{\link{print.powerSim}}, \code{\link{summary.powerSim}}, \code{\link{confint.powerSim}}
}
