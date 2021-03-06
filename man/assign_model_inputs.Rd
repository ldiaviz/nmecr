% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assign_model_inputs.R
\name{assign_model_inputs}
\alias{assign_model_inputs}
\title{Assign inputs for various modeling algorithms within nmecr.}
\usage{
assign_model_inputs(timescale_days = NULL,
  has_temp_knots_defined = FALSE, equal_temp_segment_points = TRUE,
  temp_segments_numeric = 6, temp_knots_value = c(40, 55, 65, 80, 90),
  initial_breakpoints = c(50, 65), regression_type = c("TOWT", "TOW",
  "SLR", "HDD-CDD Multivariate Regression", "HDD Regression",
  "CDD Regression", "Three Parameter Cooling", "Three Parameter Heating",
  "Four Parameter Linear Model", "Five Parameter Linear Model"),
  occupancy_threshold = 0.65)
}
\arguments{
\item{timescale_days}{Numeric corresponding to the timescale for weighting function - used in demand predictions. Default to NULL for energy predictions.}

\item{has_temp_knots_defined}{Logical specifying whether the temp_knots are pre-defined or will be calculated by the algorithm. Default: FALSE.
If set to FALSE, variables 'equal_tem_segment_points' and 'temp_segments_numeric' are used to calculate the temperature knots.#'}

\item{equal_temp_segment_points}{Logical specifying structure of temperature segments: equal number of points vs. equal segment length. Default: TRUE
Only used if has_temp_knots_defined is set to FALSE.}

\item{temp_segments_numeric}{Numeric specifying number of temperature segments. Default: 6
Only used if has_temp_knots_defined is set to FALSE.}

\item{temp_knots_value}{Vector specifying manually defined temperature knots.  Only used if has_temp_knots_defined is set to TRUE.}

\item{initial_breakpoints}{Vector indicating the initial breakpoints (changepoints) to regress over.}

\item{regression_type}{Character string indictating the modeling algorithm to run}

\item{occupancy_threshold}{a fractional value for calculating occupancy schedule of the training dataset}
}
\value{
a list specifying the chosen algorithm inputs
}
\description{
Assign inputs for various modeling algorithms within nmecr.
}
