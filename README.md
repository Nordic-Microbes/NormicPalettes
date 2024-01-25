# Description
 A package for using Nordic Microbes A/S colors in ggplot2 scales
# Installation: 
```
devtools::install_github("marklyng/NormicPalettes")
```

## See all the color palettes:
```
NormicPalettes::normic_colors
```

# Usage:
```
library(tidyverse)

df <- tibble(x = LETTERS[seq(6)],
             y = seq(6))
df

ggplot(df, aes(x, y, col = y)) +
    geom_point() +
    NormicPalettes::scale_color_normic_c()


ggplot(df, aes(x, y, col = x)) +
    geom_point() +
    NormicPalettes::scale_color_normic_d("palette")
```
