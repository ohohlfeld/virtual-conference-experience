library(ggplot2)

plotFactorDistribution <- function(data, field, xlabel) {
  ggplot(data, aes_string(field)) +
    geom_bar(aes(y = ..count.. / sum(..count..) * 100)) +
    scale_x_discrete(drop=FALSE) +
    xlab(xlabel) +
    ylab("% Responses") + 
    theme_bw()
}
