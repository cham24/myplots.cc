#' Create a quick histogram in ggplot.
#'
#' This will graph two given vectors in a ggplot-style histogram. The x-axis
#' will be labeled "x", the y-axis labeled "y", and the title labeled "title"
#' by default.
#'
#' @param data This is the numeric vector to be plotted in a histogram.
#' @param xlab This is the label for the x-axis.
#' @param ylab This is the label for the y-axis.
#' @param title This is the title for the histogram.
#'
#' @return This function returns a ggplot histogram object.
#'
#' @examples
#' ## Create a histogram of x vs frequency.
#' x <- rnorm(100)
#' ghist(x)
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

ghist <- function(data, xlab = "x", ylab = "y", title = "title") {
    ggplot() +
    geom_histogram(aes(x = data), bins = 30,
                   fill = "skyblue1", color = "black") +
    labs(x = xlab, y = ylab, title = title)
}
