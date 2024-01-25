normic_colors <- list(
  greens_gradient = c("#365628", "#578A40", "#6FAF53", "#CFE4C6"),
  yellows_gradient = c("#8A6E0B", "#D4A810", "#F2CE50", "#FAEBB8"),
  purples_gradient = c("#56365F", "#7F508D", "#B48EBF", "#DBC9E1"),
  palette = c("#609947", "#89b03c", "#c0d441", "#e8a226", "#efc42e", "#725b99", "#9b69aa"),
  greens_compl = c("#609947", "#89b03c", "#c0d441"),
  yellows_compl = c("#e8a226", "#efc42e"),
  purples_compl = c("#725b99", "#9b69aa"),
  darks_discrete = c("#609947", "#e8a226", "#725b99"),
  lights_discrete = c("#c0d441", "#efc42e", "#9b69aa")
)


normic_palettes = function(name, n, all_palettes = normic_colors, type = c("discrete", "continuous")) {
  palette = all_palettes[[name]]
  if (missing(n)) {
    n = length(palette)
  }
  type = match.arg(type)
  out = switch(type,
               continuous = grDevices::colorRampPalette(palette)(n),
               discrete = palette[1:n]
  )
  structure(out, name = name, class = "palette")
}

scale_colour_normic_d = function(name = "darks_discrete") {
  ggplot2::scale_colour_manual(values = normic_palettes(name,
                                                        type = "discrete"))
}

scale_fill_normic_d = function(name = "darks_discrete") {
  ggplot2::scale_fill_manual(values = normic_palettes(name,
                                                      type = "discrete"))
}

scale_colour_normic_c = function(name = "greens_gradient") {
  ggplot2::scale_colour_gradientn(colours = normic_palettes(name = name,
                                                         type = "continuous"))
}

scale_fill_normic_c = function(name = "greens_gradient") {
  ggplot2::scale_fill_gradientn(colours = normic_palettes(name = name,
                                                          type = "continuous"))
}


scale_color_normic_d = scale_colour_normic_d
scale_color_normic_c = scale_colour_normic_c




library("ggplot2")
df = data.frame(x = c("A", "B", "C", "D", "E", "F", "G"),
                y = 1:7)
ggplot(data = df,
           mapping = aes(x = x, y = y, col = y)) +
  geom_point() +
  theme_minimal() +
  theme(legend.position = c(0.05, 0.95),
        legend.justification = c(0, 1),
        legend.title = element_blank(),
        axis.title = element_blank()) +
  scale_color_normic_c("yellows_gradient")


scale_colour_normic_c()

