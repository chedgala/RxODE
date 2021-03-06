% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rxsympy.R
\name{rxSymPySetupPred}
\alias{rxSymPySetupPred}
\title{Setup Pred function based on RxODE object.}
\usage{
rxSymPySetupPred(obj, predfn, pkpars = NULL, errfn = NULL,
  init = NULL, grad = FALSE, sum.prod = FALSE,
  pred.minus.dv = TRUE, theta.derivs = FALSE, only.numeric = FALSE,
  grad.internal = FALSE, theta.internal = FALSE,
  optExpression = TRUE, run.internal = RxODE.sympy.run.internal,
  interaction = TRUE)
}
\arguments{
\item{obj}{RxODE object}

\item{predfn}{Prediction function}

\item{pkpars}{Pk Pars function}

\item{errfn}{Error function}

\item{init}{Initialization parameters for scaling.}

\item{grad}{Boolean indicated if the the equations for the
gradient be calculated}

\item{sum.prod}{A boolean determining if RxODE should use more
numerically stable sums/products.}

\item{pred.minus.dv}{Boolean stating if the FOCEi objective
function is based on PRED-DV (like NONMEM).  Default TRUE.}

\item{theta.derivs}{Boolean indicating if theta derivatives are
setup}

\item{only.numeric}{Instead of setting up the sensitivities for
the inner problem, modify the RxODE to use numeric
differentiation for the numeric inner problem only.}

\item{grad.internal}{Internal gradient flag.  This function is
recursively called, and this shouldn't be set by the user.}

\item{theta.internal}{Internal theta flag.  This function is
recursively called and shouldn't be called by the user.}

\item{optExpression}{Optimize the model text for computer
evaluation.}

\item{run.internal}{Boolean to see if the function should be run
internally.}

\item{interaction}{Boolean to determine if \code{dR^2/deta} is
calculated for FOCEi (not needed for FOCE)}
}
\value{
RxODE object expanded with predfn and with calculated
    sensitivities.
}
\description{
This is for the so-called inner problem.
}
\author{
Matthew L. Fidler
}
\keyword{internal}
