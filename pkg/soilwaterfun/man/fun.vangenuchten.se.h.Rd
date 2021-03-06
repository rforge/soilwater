\name{fun.vangenuchten.se.h}
\alias{fun.vangenuchten.se.h}
\title{van Genuchten 1980's function for soil relative saturation.}
\description{Calculate the relative saturation Se of a soil at a given 
tension h with the Van Genuchten water retention function.}
\usage{fun.vangenuchten.se.h(h, alpha, n, cPar = 1)}
\arguments{
  \item{h}{Vector of numerical. Pressure head of the soil, in [m]. Matrix 
potential values will also work, as in practice abs(h) is used.}
  \item{alpha}{Single numerical. alpha (shape) parameter of the Van Genuchten 
water retention function, in [m-1] (inverse length unit of h).}
  \item{n}{Single numerical. n shape parameter of the Van Genuchten water 
retention function, dimensionless [-]. See also the 'cPar' 
parameter that, along with 'n', is used to calculate van Genuchten's 
m parameter.}
  \item{cPar}{Single numerical. Value of the c parameter of the Van Genuchten 
water retention function, that allows to calculate the m parameter 
so m = (1 - cPar/n). Dimensionless [-]. Usually fixed / constant.}
}

\value{The function returns the relative water content (degree of 
saturation, Se, [-]).}
\references{van Genuchten M. Th., 1980. A closed form equation 
for predicting the hydraulic conductivity of unsaturated soils. 
Soil Science Society of America Journal, 44:892-898.
Kutilek M. & Nielsen D.R., 1994. Soil hydrology. 
Catena-Verlag, GeoEcology textbook, Germany. ISBN: 
9-923381-26-3., 370 p.}
\author{Julien Moeys <jules_m78-soiltexture@yahoo.fr> [aut, cre]}




\examples{require( "soilwaterfun" ) 

# Example with the properties of the Footprint soil type P22i, 
# 3rd layer:
fun.vangenuchten.se.h( 
    h       = c(0,0.01,0.1,1,10,100,158), # [m]
    alpha   = 3.561099,                   # [m-1]
    n       = 1.212074                    # [-]
)   #}
