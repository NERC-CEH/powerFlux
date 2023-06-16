---
title: 'Statistical Power analysis and uncertainty quantification for chamber measurements of N$_2$O and CH$_4$ fluxes'
author: 
- Peter Levy and Nick Cowan
date: Centre for Ecology and Hydrology, Bush Estate, Penicuik, EH26 0QB, U.K.
output:
  html_document: 
    toc: no
    keep_md: yes
---


<!-- README.md is generated from README.Rmd. Please edit that file -->



## Introduction 
This document describes the `powerFlux` R package for statistical power analysis and uncertainty quantification for chamber measurements of N$_2$O and CH$_4$ fluxes.  Most users will only use one or two functions `get_ci_flux` and `get_omega_ci`, which return the expected confidence intervals in instantaneous flux measurements and cumulative fluxes expressed as emission factors.

## Installation
The package can be installed directly from a bundled .tar.gz file or directly from GitHub, using `install_github` from remotes.


```r
# If not already installed:
# install.packages(c("remotes"))
library(remotes)  # for install_github

# install powerFlux from github
install_github("NERC-CEH/powerFlux")
```

## Using the package
Now we can load the package.

```r
library(powerFlux)
```

You can then call the `powerFlux` functions directly from the R command line, as described below. The basic input is a set of parameters which define the chamber set-up and sampling characteristics.


## Individual chamber flux measurements
The flux of a GHG from the soil surface within a chamber is calculated from the rate of change in the mixing ratio $d \chi / d t$ (in mol GHG/mol air/ s), adjusted for the density of air per unit surface area:

$$F = \frac{d \chi} {d t} \times \rho \frac{V}{A}$$

where $F$ is the surface flux in mol GHG/m^2^/s, $\rho$ is the density of air in mol/m^3^, and $V$ and $A$ are the volume and area of the chamber (which simplifies to the height $h = V/A$ for most common chamber shapes). The term $\rho h$ can be considered a constant for a given chamber under typical conditions.

The term $d \chi / d t$ is usually estimated as the slope $\beta$ of a linear regression between $\chi$ and time $t$ during the chamber closure (although various methods accounting for non-linearity are also used).
The uncertainty in this term is estimated by the standard algebra of linear regression, where the 95% confidence interval (CI) in the slope $\beta$ is given:

$$CI_{\beta}^{95} = \sqrt{ \frac{\sigma_\chi^2} {n-1 \sum (t_i - \bar{t})^2} } \times \mathbb{T}$$

where $\sigma\chi^2$ is the residual variance, $n$ is the number of data points, $\sum (t_i - \bar{t})^2$ is the variance in the $x$ independent variable, time, and $\mathbb{T}$ represents the t statistic, with a value of 1.96 for a sample size greater than 20. We can define a function which calculates this 95% confidence interval in chamber flux measurements, given the characteristic of the chamber and analyser.

The uncertainty, as quantified by the 95 % confidence interval, depends on the residual (unexplained) variation in mixing ratio $\sigma_\chi$ (`sigma_chi` in the code), the number of gas samples, their spread over time, and the chamber height. We use the `units` package to take care of unit conversions. To estimate $\sigma_\chi$ a priori, we can use the noise or precision quoted for the gas analyser - the standard deviation $\sigma$ in recorded $\chi$ under constant conditions. This will be an underestimate, and there will be additional variation coming from all the vagaries of sampling from a chamber (imperfect mixing, pressure fluctuations, leaks, etc.). Empirically, $\sigma_\chi$ is the residual standard error in the linear regression of $\chi$ versus $t$, as this includes both sources of error, so previous values of this can be used to estimate for future experiments. Chamber height comes into the equation because it determines the scaling factor between changes in mixing ratio and the calculated flux: the same flux will have a smaller effect on the mixing ratio in a tall chamber compared to a short one.

Below, we specify $\sigma_\chi$ of 20 nmol N$_2$O/mol, 
10 gas samples, spread regularly over time 5 minutes, and a chamber height of 23 cm.


```r
sigma_chi <- set_units(20, nmol_n2o/mol)
height <- set_units(0.23, m)
t_max <- set_units(5 * 60, s)
n_gas <- 10
v_t <- get_v_t(t_max, n_gas)
sigma_t <- get_sigma_t(v_t)

ci <- get_ci_flux(sigma_chi = sigma_chi,
            height = height,
            sigma_t = sigma_t,
            n_gas = n_gas)
print(ci)
```

```
## 1.381144 [nmol_n2o/m^2/s]
```

The 95 % confidence interval for a flux measured with this system will be $\pm$ 1.381 in its associated units.

## Uncertainty in Cumulative flux or Emission Factors

tbc
