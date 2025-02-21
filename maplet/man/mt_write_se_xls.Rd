% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mt_write_se_xls.R
\name{mt_write_se_xls}
\alias{mt_write_se_xls}
\title{Output assay, colData and rowData into an Excel file}
\usage{
mt_write_se_xls(D, file)
}
\arguments{
\item{D}{\code{SummarizedExperiment} input.}

\item{file}{Output filename to write to.}
}
\value{
Does not change the \code{SummarizedExperiment} object.
}
\description{
Exports the current \code{SummarizedExperiment} (not the metadata) to an Excel file.
}
\examples{
\dontrun{\%>\% mt_write_se_xls(file = "out.xlsx") \%>\%}

}
\author{
JK
}
