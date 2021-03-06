% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gei_analysis_functions.R
\name{sreg}
\alias{sreg}
\title{The Sites Regression (SREG, or GGE) model}
\usage{
sreg(formula, data, gen.col = "gen", env.col = "env", n.terms = 1)
}
\arguments{
\item{formula}{A formula specifying the model.}

\item{data}{A data frame in which the variables specified in the formula will be found.
If missing, the variables are searched for in the standard way.}

\item{gen.col}{The name of the column in \code{data} containing the genotype factor.}

\item{env.col}{The name of the column in \code{data} containing the environment factor.}

\item{n.terms}{The number of multiplicative terms to include in the model.
Defaults to 1 (i.e. SREG_1).}
}
\description{
Fit a sites-regression model (SREG, or GGE) to analyze genotype-
environment interactions in plant breeding experiments.
}
\examples{
# Use the gauch.soy dataset
data("gauch.soy")

# Filter
gauch_soy1 <- droplevels(subset(gauch.soy, env \%in\% c("A77", "A80", "A83")))

sreg_fit <- sreg(formula = yield ~ gen + env + gen:env, data = gauch_soy1)

}
