% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readDCEntry.R
\name{readDCEntry}
\alias{readDCEntry}
\title{readDCEntry}
\usage{
readDCEntry(file, url, raw)
}
\arguments{
\item{file}{a valid file path, as object of class \code{character}}

\item{url}{a valid URL, as object of class \code{character}}

\item{raw}{indicates if the function should return the raw XML. By
default this is set to \code{FALSE} and the function will try to map
the xml data to the \pkg{atom4R} data model.}
}
\value{
a \pkg{atom4R} object inheriting \code{DCEntry}
}
\description{
\code{readDCEntry} is a function to read a DC XML entry from a file
or url into an object in the \pkg{atom4R} model.
}
\examples{
\donttest{
  dcfile <- paste0(
    "https://raw.githubusercontent.com/eblondel/atom4R/master/",
    "inst/extdata/examples/zenodo_dc_export.xml"
  )
  dc <- readDCEntry(dcfile)
}

}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
