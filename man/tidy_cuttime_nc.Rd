% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_cuttime_nc.R
\name{tidy_cuttime_nc}
\alias{tidy_cuttime_nc}
\title{Format a 3D-array to a S-mode data frame and set the time period}
\usage{
tidy_cuttime_nc(datalist, only_convert = TRUE, season, initial_year,
  end_year)
}
\arguments{
\item{datalist}{List. 3D-array of atmospheric or environmental variable, longitudes, latitudes and time. I.e. the list returned by \code{read_nc}.}

\item{only_convert}{Logical. If TRUE the function only format data, if FALSE data is formatted and subsetted by specific time and/or season period.}

\item{season}{Character. Name of the season wanted (i.g. "winter", "spring", "summer", "fall", "year").}

\item{initial_year}{Integer. Start year wanted to subset the data.}

\item{end_year}{Integer. End year wanted to subset the data.}
}
\value{
A list with: \itemize{
   \item{A vector of dates.}
   \item{A dataframe of the variable in S-mode.}
   \item{A character with the name of the season (if only_convert = FALSE).}
}
}
\description{
This function format the 3D-array output from \code{read_nc} function to a S-mode dataframe (variables = grid points, observations = days). Optionally, you can set the time period between specific years and/or specify if you want work with the full year or only with 3-month season.
}
\examples{
# Load data (mslp or precp_grid)
data(mslp)
# Converting our data into a S-mode, but without modifying time period
smode_mslp <- tidy_cuttime_nc(mslp, only_convert = TRUE)
# matrix conversion and setting time period for winters between 2001 and 2010
smode_mslp <- tidy_cuttime_nc(mslp, only_convert = FALSE, season = "winter",
                             initial_year = 2001, end_year = 2010)

}
\seealso{
\code{\link{read_nc}}
}
