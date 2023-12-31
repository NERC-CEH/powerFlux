% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerFlux.R
\name{get_ci_omega}
\alias{get_ci_omega}
\title{get_ci_omega}
\usage{
get_ci_omega(
  sigma_chi = units::set_units(10, nmol_n2o/mol),
  height = units::set_units(0.23, m),
  t_max = units::set_units(30 * 60, s),
  n_gas = 4,
  N_appl = units::set_units(0.1489069 * 1e+09, nmol_n2o/m^2),
  omega = 0.01,
  n_days = 28,
  n_mmnt_per_day = 10,
  n_sims = 3,
  d_max = units::set_units(28 * secs_per_day, s),
  delta = 11.8,
  k = 0.86,
  sigma_s = 1.5,
  rel_error = FALSE,
  plot_graph = FALSE,
  plot_histogram = FALSE,
  get_v_omega = FALSE,
  trt_diff_obs = 0.005
)
}
\arguments{
\item{sigma_chi}{PARAM_DESCRIPTION, Default: units::set_units(10, nmol_n2o/mol)}

\item{height}{PARAM_DESCRIPTION, Default: units::set_units(0.23, m)}

\item{t_max}{PARAM_DESCRIPTION, Default: units::set_units(30 * 60, s)}

\item{n_gas}{PARAM_DESCRIPTION, Default: 4}

\item{N_appl}{PARAM_DESCRIPTION, Default: units::set_units(0.1489069 * 1e+09, nmol_n2o/m^2)}

\item{omega}{PARAM_DESCRIPTION, Default: 0.01}

\item{n_days}{PARAM_DESCRIPTION, Default: 28}

\item{n_mmnt_per_day}{PARAM_DESCRIPTION, Default: 10}

\item{n_sims}{PARAM_DESCRIPTION, Default: 3}

\item{d_max}{PARAM_DESCRIPTION, Default: units::set_units(28 * secs_per_day, s)}

\item{delta}{PARAM_DESCRIPTION, Default: 11.8}

\item{k}{PARAM_DESCRIPTION, Default: 0.86}

\item{sigma_s}{PARAM_DESCRIPTION, Default: 1.5}

\item{rel_error}{PARAM_DESCRIPTION, Default: FALSE}

\item{plot_graph}{PARAM_DESCRIPTION, Default: FALSE}

\item{plot_histogram}{PARAM_DESCRIPTION, Default: FALSE}

\item{get_v_omega}{PARAM_DESCRIPTION, Default: FALSE}

\item{trt_diff_obs}{PARAM_DESCRIPTION, Default: 0.005}
}
\value{
OUTPUT_DESCRIPTION
}
\description{
FUNCTION_DESCRIPTION
}
\details{
DETAILS
}
\examples{
\dontrun{
if(interactive()){
 #EXAMPLE1
 }
}
}
