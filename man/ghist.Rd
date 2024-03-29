% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ghist.R
\name{ghist}
\alias{ghist}
\title{Create a quick histogram in ggplot.}
\usage{
ghist(data, xlab = "x", ylab = "y", title = "title")
}
\arguments{
\item{data}{This is the numeric vector to be plotted in a histogram.}

\item{xlab}{This is the label for the x-axis.}

\item{ylab}{This is the label for the y-axis.}

\item{title}{This is the title for the histogram.}
}
\value{
This function returns a ggplot histogram object.
}
\description{
This will graph two given vectors in a ggplot-style histogram. The x-axis
will be labeled "x", the y-axis labeled "y", and the title labeled "title"
by default.
}
\examples{
## Create a histogram of x vs frequency.
x <- rnorm(100)
ghist(x)

}
