#' Sexagesimal to Decimal Latitude conversion function
#'
#' \code{latsex2dec} converts sexagesimal latitude data to decimal latitude values.
#'
#' @param degree    The value in degrees of the latitude.
#' @param minute    The value in minutes of the latitude.
#' @param second    The value in seconds of the latitude.
#' @param direction   The direction, as "N" or "S", of the latitude.
#'
#' @return The function returns the latitude value converted in the decimal numeral system
#'
#' @usage latsex2dec(degree, minute, second, direction)
#'
#' @examples
#' latsex2dec(degree = 10, minute = 10, second = 10, direction = "N")
#' 

# LAT_SEX2DEC
# Converts latitude from sexagesimal to decimal numeral system.

latsex2dec <- function(degree, minute, second, direction) {
  if (direction == "N") {
    declat <- degree + (minute / 60) + (second / 3600)
  } else {
    declat <- -(degree + (minute / 60) + (second / 3600))
  }
  return(declat)
}
