% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_design.R
\name{gen_gsg}
\alias{gen_gsg}
\title{Generating global sampling grids with constant distance between sample
locations on the surface of a sphere}
\usage{
gen_gsg(dis, bnd = NULL)
}
\arguments{
\item{dis}{Distance in kilometers between sample locations}

\item{bnd}{Polygon outline of an area of interest for which the sampling grid
is generated (a \code{\link[sp]{SpatialPolygonsDataFrame}} object). If
\code{NULL}, a global grid is generated.}
}
\value{
An object of \code{\link[sp]{SpatialPointsDataFrame}} holding the
  sampling locations of the grid.
}
\description{
Generating global sampling grids with constant distance between sample
locations on the surface of a sphere
}
\details{
The grid consists of equidistant points along circles of latitude on
  a spheroid (WGS84/Pseudo-Mercator, epsg:43328).
}
\examples{
# Boundary of Germany
ger_bnd <- load_boundary(x = NA, country_code = "DEU", adm_level = 0);

gsg_ger <- gen_gsg(50, ger_bnd);
plot(gsg_ger)
}
\author{
Lutz Fehrmann
}
