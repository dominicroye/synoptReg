#' Mean Sea Level pressure files
#'
#' Data from a ERA-20C reanalysis data set downloaded from ECMWF
#' (\url{http://apps.ecmwf.int/datasets/data/era20c-daily/levtype=sfc/type=an/}).
#' This data corresponds to global daily values of mean sea level pressure with 125 x 125 km resolution from January 2000 to december 2009. Geographic window: 60N-30N,30W-15E.
#'
#' @docType data
#'
#' @usage data(mslp)
#'
#' @format A list with values of pressure and coordinates (longitude, latitude, time)
#' \describe{
#'   \item{datavar}{mean sea level pressure values, Pa}
#'   \item{lon}{46}
#'   \item{latitude}{31}
#'   \item{dates}{3653, ten years (2000-01-01 / 2009-12-31)}
#' }
#' @keywords datasets
#'
#' @references Poli et al. (2016)
#' \emph{ERA-20C: An Atmospheric Reanalysis of the Twentieth Century.
#'              J. Climate, 29, https://doi.org/10.1175/JCLI-D-15-0556.1}
#'
#' @examples
#' data(mslp)
"mslp"
