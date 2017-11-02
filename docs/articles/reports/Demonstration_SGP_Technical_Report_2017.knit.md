---
title: "Student Growth Percentiles"
subtitle: "Theory and Implementation in R"
abstract: "This document provides an introduction to Student Growth Percentiles (SGP)"
author: "Damian W Betebenner & Adam R VanIwaarden"
date: "October 12th, 2017"
keywords: "SGP, student growth percentiles, student growth projections, R"
style: "tufte"
includes:
  in_header: SGP_Cover_Page.tex
  before_body: dedication.tex
---




# Preface

The following provides a brief introduction to generalized additive models and some thoughts on getting started within the R environment.  It doesn't assume much more than a basic exposure to regression, and maybe a general idea of R though not necessarily any particular expertise. The presentation is of a very applied nature, and such that the topics build upon the familiar and generalize to the less so, with the hope that one can bring the concepts they are comfortable with to the new material. The audience in mind is a researcher with typical applied science training.

As this document is more conceptual, a basic familiarity with R is all that is needed to follow the code, though there is much to be gained from simple web browsing on R if one needs it. And while it wasn't the intention starting out, this document could be seen as a vignette for the <span class="pack">mgcv</span> package, which is highly recommended.

This section provides basic details about the calculation of student growth percentiles from Georgia state assessment data using the [`R` Software Environment](http://www.r-project.org/) [@Rsoftware] in conjunction with the [`SGP` package](https://github.com/CenterForAssessment/SGP) [@sgp2017].  For a more in-depth discussion of SGP calculation, see Betebenner [-@Betebenner:2009], and see Shang, VanIwaarden and Betebenner [-@ShangVanIBet:2015] and Appendix B of this report for further information on the SIMEX measurement error correction methodology.

This document was created with [Rstudio](http://rstudio.org/) and rmarkdown. <span class="marginnote">Last modified 2017-11-01. Original draft August, 2012.</span>

\cite{Betebenner:2009}

Color guide:

- <span class="emph">important term</span>
- [link]()
- <span class="pack">package</span>
- <span class="func">function</span>
- <span class="objclass">object or class</span>

R Info: **R version 3.4.2 (2017-09-28) Short Summer**



# Conclusion

Generalized additive models are a conceptually straightforward tool that allows one to incorporate nonlinear predictor effects into their otherwise linear models. In addition, they allow one to keep within the linear and generalized linear modeling frameworks with which one is already familiar, while providing new avenues of model exploration and possibly improved results.  As was demonstrated, it is easy enough with just a modicum of familiarity to pull them off within the R environment, and as such, it is hoped that this document provides the means to do so.


# References
