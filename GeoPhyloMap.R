#Install libraries
library(phytools)
library(plotrix)
library(ape)
library("ctv")

#Scale bar function
scaleBar <- function(x0, y0, graphicalDistance, branchDistance, scaleFactor){
  ratio <- graphicalDistance/branchDistance
  barLength <- ratio*scaleFactor
  y1 <- y0-barLength
  segments(x0, y0, x0, y1)
  segments(x0-2, y0, x0+2, y0)
  segments(x0-2, y1, x0+2, y1)
  text(x0+15, 0.5*(y0+y1), labels = scaleFactor)
}

#Import tree as Newick string
phy_vel <- "(1:0.012050729069545098,2:0.000229,(((3:0.000138,4:0.0020980134886547886):0.0013610035289037398,(((5:0.0,6:0.0013952307287854742):0.000640,7:0.0):0.000366,8:0.000271):0.000358):0.000524,(9:0.001103364759468463,((10:0.002042599598520107,11:0.0):0.000650,(12:0.004080601362437594,13:0.00543420193797581):0.000023):0.000237):0.000149):0.0013050606723265462);"

#Import GPS data
gps_vel <- f.velupitesGPS2

#Phy_vel as tree
tree_vel <- read.tree(text = phy_vel)

#Add tree to world map
obj_vel <- phylo.to.map(multi2di(tree), gps_vel[,2:3], type = "phylogram", database = "world")

#Add scale bar
scaleBar(-180, 150, 85.1621, 0.012050729069545098, 0.005)