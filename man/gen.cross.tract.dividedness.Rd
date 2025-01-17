% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tract-lvl-divM-fcns.R
\name{gen.cross.tract.dividedness}
\alias{gen.cross.tract.dividedness}
\title{gen.cross.tract.dividedness}
\usage{
gen.cross.tract.dividedness(
  region,
  divs,
  nbd.query.fcn = tigris::tracts,
  region.id.colm = "rid",
  fill.nhpn.gaps = F,
  erase.water = F,
  year = 2019,
  ...
)
}
\arguments{
\item{nbd.query.fcn}{i.e., tracts or block_groups; passed onto
\code{geox::tracts.from.sf}}

\item{region.id.colm}{identifer column for supplied region}

\item{...}{
  Arguments passed on to \code{\link[=polygonal.div]{polygonal.div}}
  \describe{
    \item{\code{region}}{\code{sf} object representing neighborhoods to allocate to subdivision}
    \item{\code{divs}}{linear \code{sf} representing divisions.}
    \item{\code{negative.buffer}}{Shrink region by this amount only for calculating polygons.
Useful for handling shpfiles w/ different resolutions, especially for regions
along an international border. Defaults to 100m.}
    \item{\code{min.size}}{Minimum (area) size for population, in meters. Defaults to 5e5, or
1/2 a km^2. Set to NULL to not filter by size.}
    \item{\code{return.sf}}{If true, returns an sf object, w/ one row per polygon
subdivision, that can easily be mapped or allocated to neighborhoods. If false
(default), returns number of polygons.}
  }}

\item{cutout.water}{wheter or not to cut out water areas before getting
dividedness.}
}
\value{
a data.frame with one row per census tract in the supplied region, with a
geoid column and a poly.id column indicating which "polygon division" each tract
is in. Tracts with different identifiers in this column are across a division
from one another.
}
\description{
Given a large region: Place, CZ, CBSA, etc., and a division object, represented by
an \code{sf} object with only linear features, allocate each neighborhood, defined as
tracts or block groups, to a side of the division within the area.
}
