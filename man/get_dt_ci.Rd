% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerFlux.R
\name{get_dt_ci}
\alias{get_dt_ci}
\title{get_dt_ci}
\usage{
get_dt_ci(
  sigma_chi = units::set_units(25, nmol_n2o/mol),
  height = units::set_units(0.23, m),
  sigma_t = units::set_units(90, s),
  n_gas = 10,
  meanlog = 0,
  sdlog = 1,
  max_flux = units::set_units(5, nmol_n2o/m^2/s)
)
}
\arguments{
\item{sigma_chi}{PARAM_DESCRIPTION, Default: units::set_units(25, nmol_n2o/mol)}

\item{height}{PARAM_DESCRIPTION, Default: units::set_units(0.23, m)}

\item{sigma_t}{PARAM_DESCRIPTION, Default: units::set_units(90, s)}

\item{n_gas}{PARAM_DESCRIPTION, Default: 10}

\item{meanlog}{PARAM_DESCRIPTION, Default: 0}

\item{sdlog}{PARAM_DESCRIPTION, Default: 1}

\item{max_flux}{PARAM_DESCRIPTION, Default: units::set_units(5, nmol_n2o/m^2/s)}
}
\value{
A data table containg CI values
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
