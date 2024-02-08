#' Create a quick box plot in ggplot.
#'
#' This function creates a ggplot box plot of a numeric vector. If a numeric
#' and a categorical variable are given, it creates side-by-side box plots.
#' The x-axis will be labeled "x", the y-axis labeled "y", and the title
#' labeled "title" by default.
#'
#' @param x A numeric vector for which box plot needs to be plotted. If a second argument is provided, this should be the categorical variable.
#' @param y A categorical vector if side-by-side box plots are needed (Optional).
#' @param horizontal Logical indicating whether the box plot(s) should be horizontal (TRUE) or vertical (FALSE).
#' @param xlab This is the label for the x-axis.
#' @param ylab This is the label for the y-axis.
#' @param title This is the title for the histogram.

#' @return This function returns a ggplot box plot object.
#'
#' @examples
#' ## Create a box plot(s) of a single (or multiple) variable(s)
#' x <- rnorm(100)
#' gbox(x)
#' gbox(x, sample(c("A", "B"), 100, replace = TRUE))
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

gbox <- function(x, y = NULL, horizontal = FALSE, xlab = "x", ylab = "y", title = "title") {
  if(is.null(y)) {
    gg <- ggplot() +
      geom_boxplot(aes(x = factor(1), y = x),
                   fill = "lightpink", color = "black") +
      theme_minimal() +
      labs(x = xlab, y = ylab, title = title)
  } else {
    gg <- ggplot() +
      geom_boxplot(aes(x = y, y = x), fill = "skyblue", color = "black") +
      theme_minimal() +
      labs(x = xlab, y = ylab, title = title)
  }

  if(horizontal) {
    gg <- gg + coord_flip()
  }
  return(gg)
}
