# Geophylogenies
This code superimposes a phylogenetic tree onto a world map, with a scale bar. It uses the packages Phytools, Plotrix, Ape, and ctv. To install these packages:
> install(“Phytools”)
>
> install(“Plotrix”)
>
> install(“Ape”)
> 
> install(“ctv”)

Then to use these packages:
> library(phytools)
>
> library(plotrix)
>
> library(ape)
>
> library("ctv")

The tree input should be as a Newick string, and the GPS data needs to be in decimal latitude and longitude, with an ID for the branch labels.
