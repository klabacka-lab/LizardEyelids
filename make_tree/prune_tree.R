# We are using the consensus squamate tree from Tonini et al. (2016) - doi: 10.1016/j.biocon.2016.03.039
# We saved the tree (from the supplementary materials) in this repository) ('IBC06772-mmc6.tre')

# Set your working directory
# Use this if not in this directory: setwd(<path-to-dir-with-tre-file>)

# Import ape library
## Install if you haven't using install.packages('ape'=Analysis of Phylogenetics and Evolution)
library(ape)

setwd(<insert_path_to_your_working_directory>)

# Read tree (which is a Newick file)
squa <- read.tree('IBC06772-mmc6.tre')
# Verify the 9755 species
squa
# Create vector with species of interest
species_of_interest <- c("Aspidoscelis_gularis","Aspidoscelis_scalaris","Aspidoscelis_inornata","Aspidoscelis_marmorata","Podarcis_muralis","Podarcis_raffoneae","Lacerta_agilis","Hemicordylus_capensis","Sceloporus_undulatus","Python_bivittatus","Calyptommatus_sinebrachiatus","Euleptes_europaea","Gekko_japonicus","Salvator_merianae","Sphenodon_punctatus","Tretioscincus_oriximinensis")