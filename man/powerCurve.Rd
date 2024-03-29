% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerCurve.R
\name{powerCurve}
\alias{powerCurve}
\title{Estimate power at a range of sample sizes.}
\usage{
powerCurve(
  fit,
  test = fixed(getDefaultXname(fit)),
  sim = fit,
  along = getDefaultXname(fit),
  within,
  breaks,
  seed,
  fitOpts = list(),
  testOpts = list(),
  simOpts = list(),
  ...
)
}
\arguments{
\item{fit}{a fitted model object (see \code{\link{doFit}}).}

\item{test}{specify the test to perform. By default, the first fixed effect in \code{fit} will be tested.
(see: \link{tests}).}

\item{sim}{an object to simulate from. By default this is the same as \code{fit} (see \code{\link{doSim}}).}

\item{along}{the name of an explanatory variable. This variable will have its number of levels varied.}

\item{within}{names of grouping variables, separated by "+" or ",". Each combination of groups will be
extended to \code{n} rows.}

\item{breaks}{number of levels of the variable specified by \code{along} at each point on the power curve.}

\item{seed}{specify a random number generator seed, for reproducible results.}

\item{fitOpts}{extra arguments for \code{\link{doFit}}.}

\item{testOpts}{extra arguments for \code{\link{doTest}}.}

\item{simOpts}{extra arguments for \code{\link{doSim}}.}

\item{...}{any additional arguments are passed on to \code{\link{simrOptions}}. Common options include:
\describe{
  \item{\code{nsim}:}{the number of simulations to run (default is \code{1000}).}
  \item{\code{alpha}:}{the significance level for the statistical test (default is \code{0.05}).}
  \item{\code{progress}:}{use progress bars during calculations (default is \code{TRUE}).}
  }}
}
\description{
This function runs \code{\link{powerSim}} over a range of sample sizes.
}
\examples{
\dontrun{
fm <- lmer(y ~ x + (1|g), data=simdata)
pc1 <- powerCurve(fm)
pc2 <- powerCurve(fm, breaks=c(4,6,8,10))
print(pc2)
plot(pc2)
}

}
\seealso{
\code{\link{print.powerCurve}}, \code{\link{summary.powerCurve}}, \code{\link{confint.powerCurve}}
}
