#' Scale with Nordic Microbes colors
#'
#' @param palette A palette from the normic_colors vector
#' @param ... Arguments to pass on to scale_*_manual
#'
#' @name scale_normic
#'
#' @return a set of aesthetic values to map data values to. The values will be matched in order (usually alphabetical) with the limits of the scale, or with breaks if provided. If this is a paletted vector, then the values will be matched based on the palettes instead. Data values that don't match will be given na.value.
#'
#' @examples
#' library(ggplot2)
#' df = data.frame(x = c("A", "B", "C", "D", "E", "F", "G"), y = 1:7)
#' ggplot(df, aes(x, y, col = y)) +
#'  geom_point() +
#'  scale_color_normic_c("greens_gradient")


#' @rdname scale_normic
#'
#' @export
scale_colour_normic_d = function(palette = "darks_discrete", ...) {
  ggplot2::scale_colour_manual(values = normic_palettes(palette,
                                                        type = "discrete"), ...)
}

#' @rdname scale_normic
#'
#' @export
scale_fill_normic_d = function(palette = "darks_discrete", ...) {
  ggplot2::scale_fill_manual(values = normic_palettes(palette,
                                                      type = "discrete"), ...)
}

#' @rdname scale_normic
#'
#' @export
scale_colour_normic_c = function(palette = "greens_gradient", ...) {
  ggplot2::scale_colour_gradientn(colours = normic_palettes(palette,
                                                            type = "continuous"), ...)
}

#' @rdname scale_normic
#'
#' @export
scale_fill_normic_c = function(palette = "greens_gradient", ...) {
  ggplot2::scale_fill_gradientn(colours = normic_palettes(palette,
                                                          type = "continuous"), ...)
}

#' @rdname scale_normic
#' @export
scale_color_normic_d = scale_colour_normic_d
#' @rdname scale_normic
#' @export
scale_color_normic_c = scale_colour_normic_c
