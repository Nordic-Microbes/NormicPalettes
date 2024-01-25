#' Create palette from normic_colors
#'
#' @param palette A palette from the normic_colors vector
#' @param n Number of colors
#' @param all_palettes normic_colors
#' @param type one of "discrete" or "continuous"
#'
#' @return A palette object
#' @export
#'
#' @examples
#' normic_palettes("greens_gradient")

normic_palettes = function(palette, n, all_palettes = normic_colors, type = c("discrete", "continuous")) {
  x = all_palettes[[palette]]
  if (missing(n)) {
    n = length(x)
  }
  type = match.arg(type)
  out = switch(type,
               continuous = grDevices::colorRampPalette(x)(n),
               discrete = x[1:n]
  )
  structure(out, name = palette, class = "palette")
}
