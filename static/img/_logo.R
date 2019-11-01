library(igraph)
library(magrittr)

set.seed(1234)
g = erdos.renyi.game(750,.01,"gnp")
V(g)$size <- 4
V(g)$frame.color <- rgb(33, 37, 41, maxColorValue = 255)
V(g)$color <- rgb(153,153,153,maxColorValue = 255)
V(g)$label <- ""
E(g)$arrow.mode <- 0
g <- delete.edges(g,E(g))



png("static/img/logo.png", width=1024, height=1024, units="px", res=300)
par(bg=rgb(33, 37, 41, maxColorValue = 255))
par(mar=c(1,1,1,1))
plot(g,layout=layout_nicely(g))
dev.off()
