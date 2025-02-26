% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mt_plots_stats_compare.R
\name{mt_plots_stats_compare}
\alias{mt_plots_stats_compare}
\title{Comparative plot between two statistical results}
\usage{
mt_plots_stats_compare(
  D1,
  stat1,
  filter1,
  D2 = D1,
  stat2,
  filter2,
  filter_op = "AND",
  title = "",
  label_col = "name",
  point_size = 1.5,
  return_plot_only = F,
  data_outfile = NULL,
  use_estimate = F
)
}
\arguments{
\item{D1}{First \code{SummarizedExperiment} input to compare; the one in the pipeline.}

\item{stat1}{Name of statistical result in the first dataset.}

\item{filter1}{Filter term, defining which features to label from first statistical result (can use elements of stats table).}

\item{D2}{Second \code{SummarizedExperiment} input. If not given, will be the same as the first. Default: D1.}

\item{stat2}{Name of statistical result in second dataset.}

\item{filter2}{Filter term, defining which features to label from second statistical result (can use elements of stats table).}

\item{filter_op}{If AND -> two colors, one for those where both stats match the criterion, and one where they don't.
If OR -> three colors, a third one where only one stat matches the criterion. Default: "AND".}

\item{title}{OPTIONAL. Title of plot. Default: "".}

\item{label_col}{OPTIONAL. Name of column in the statistical results data frame to use for labeling points. Default: "name".}

\item{point_size}{Size of the points on the ggplot. Default: 1.5.}

\item{return_plot_only}{Return only the plot object. WARNING: setting this to true makes the function non-MT
pipeline compatible. Default: F.}

\item{data_outfile}{Name of Excel file to output statistical result data to. Default: NULL.}

\item{use_estimate}{Use estimate for comparison, instead of statistic. Default: F.}
}
\value{
$result$output: plot, p-value histogram

$result$output2: statistical result data frame
}
\description{
Produces a plot that compares the directed -log10 p-values between two previously executed statistics.
}
\examples{
\dontrun{## compare two stats from inside the same pipeline
... \%>\%
mt_plots_stats_compare(stat1='WT',
  filter1= p.adj<0.1,
  stat2='KO',
  filter2= p.adj<0.1,
  filter_op = 'OR'
) \%>\% ...

## compare two stats from different pipelines, as part of the pipeline of the second
# 'comp' is a string that contains the name of a comparison (here both SEs have the same comparison on two datasets)
.. \%>\% mt_plots_stats_compare(
  stat1 = comp, filter1 = p.adj<0.1,
  D2 = firstPipeSE, stat2 = comp, filter2 = p.adj<0.1,
  filter_op = "OR") \%>\% ...

## compare two stats from different pipelines, output as plot object
## not part of the actual MT pipelines, but separate call
# 'comp' is a string that contains the name of a comparison (here both SEs have the same comparison on two datasets)
gg <- mt_plots_stats_compare(
  D1 = D1, stat1 = comp, filter1 = p.adj<0.1,
  D2 = D2, stat2 = comp, filter2 = p.adj<0.1,
  filter_op = "OR", return_plot_only=T)
}

}
\author{
JK
}
