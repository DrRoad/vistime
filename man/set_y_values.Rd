% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_y_values.R
\name{set_y_values}
\alias{set_y_values}
\title{Heuristic to distribute events and ranges in y space}
\usage{
set_y_values(data)
}
\arguments{
\item{data}{the data frame with data to be distributed, has to have \code{start}, \code{end} and \code{subplot} column}
}
\value{
the data frame enriched with numeric \code{y} column
}
\description{
Instead of naive "always increment by 1" approach, we are using a more sophisticated method to use plot space efficiently
}
\examples{
\dontrun{
set_y_values(data.frame(
  event = 1:4, start = c("2019-01-01", "2019-01-10"),
  end = c("2019-01-01", "2019-01-10"), subplot = 1
), stringsAsFactors = F)
}
}
