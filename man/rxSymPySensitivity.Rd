% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rxsympy.R
\name{rxSymPySensitivity}
\alias{rxSymPySensitivity}
\title{Calculate the sensitivity equations for a model}
\usage{
rxSymPySensitivity(model, calcSens, calcJac = FALSE, keepState = NULL,
  collapseModel = FALSE)
}
\arguments{
\item{model}{RxODE family of objects}

\item{calcSens}{Either a logical or list of sensitivity parameters
to calculate. When \code{TRUE}, calculate the sensitivities of
all the known parameters.  When \code{FALSE} raise an error.}

\item{calcJac}{A boolean that determines if the Jacobian should be
calculated.}

\item{keepState}{State parameters to keep the sensitivities for.}

\item{collapseModel}{A boolean to collapse the model that each
expression only depends on the unspecified parameters (instead on LHS quantities).}
}
\value{
Model syntax that includes the sensitivity parameters.
}
\description{
This expands the model to calculate sensitivities.  This requires
rSymPy.
}
\author{
Matthew L. Fidler
}
