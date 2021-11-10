#' analyze inflammation
#'
#' This function analyze mean, maximum, and minimum of inflammation's daily record.
#' @param filename The filename of inflammation data in csv format.
#' @return
#' @export
#' @examples
#' analyze("data/inflammation-01.csv")

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}
