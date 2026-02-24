# We are using the consensus squamate tree from Tonini et al. (2016) - doi: 10.1016/j.biocon.2016.03.039
# We saved the tree (from the supplementary materials) in this repository) ('IBC06772-mmc6.tre')

# Set your working directory
# Use this if not in this directory: setwd(<path-to-dir-with-tre-file>)

# Import ape library
## Install if you haven't using install.packages('ape'=Analysis of Phylogenetics and Evolution)
library(ape)

#setwd(<insert_path_to_your_working_directory>)

# Read tree (which is a Newick file)
squa <- read.tree('IBC06772-mmc6.tre')
# Verify the 9755 species
squa
# Create vector with species of interest
iguania_species_of_interest<-c("Pogona_barbata", "Phrynocephalus_scutellatus", "Phrynocephalus_ornatus", "Trapelus_agilis", "Bufoniceps_laungwalaensis", "Ctenophorus_nuchalis", "Leiocephalus_schreibersii", "Leiocephalus_barahonensis", "Corytophanes_cristatus", "Crotaphytus_collaris", "Crotaphytus_vestigium", "Gambelia_wislizenii", "Gambelia_copeii", "Crotaphytus_bicinctores", "Crotaphytus_dickersonae", "Enyalioides_heterolepis", "Hoplocercus_spinosus", "Amblyrhynchus_cristatus", "Iguana_iguana", "Dipsosaurus_dorsalis", "Sauromalus_ater", "Microlophus_thoracicus", "Microlophus_grayii", "Tropidurus_spinulosus", "Tropidurus_erythrocephalus", "Callisaurus_draconoides", "Uma_inornata", "Holbrookia_maculata", "Cophosaurus_texanus", "Phrynosoma_hernandesi", "Phrynosoma_coronatum", "Sceloporus_magister", "Sceloporus_arenicolus", "Petrosaurus_mearnsi", "Liolaemus_melanogaster", "Ctenoblepharys_adspersa", "Liolaemus_olongasta", "Phymaturus_patagonicus", "Chalarodon_madagascariensis", "Oplurus_quadrimaculatus", "Diplolaemus_bibronii")

# Prune for iguania
iguania_pruned <- drop.tip(squa,squa$tip.label[-match(species_of_interest, squa$tip.label)])
iguania_pruned
# Set plot size
par(mar = c(5, 5, 4, 0) + 0.1)  # Adjust the margin values as needed
# Make branches longer so text doesn't cover species name
#plot(squa_pruned, edge.width = 2, xlim = c(100, 1100), ylim = c(-10, 110))
plot(ladderize(iguania_pruned, right = TRUE), edge.width = 2)  # ladderize() makes the branches longer
# The right = TRUE parameter is used to specify that the branches should be lengthened on the right side of the tree
#laddersize() isn't working as expected. The main issue is the text boxes change size as I increase the plot size, 
#so when I make the plot bigger the problem (the text box covering the species name) gets worse.


families_of_interest<-c("Coleonyx_variegatus","Cordylus_cordylus","Egernia_depressa","Scincus_scincus","Lamprolepis_smaragdina","Tracheloptychus_petersi","Gerrhosaurus_skoogi","Acanthodactylus_schmidti","Acanthodactylus_gongrorhynchatus","Alopoglossus_angulatus","Gymnophthalmus_speciosus","Aspidoscelis_tigris","Heloderma_suspectum","Xenosaurus_grandis","Elgaria_multicarinata","Diploglossus_monotropis","Shinisaurus_crocodilurus","Lanthanotus_borneensis","Varanus_acanthurus","Ctenophorus_nuchalis","Trioceros_jacksonii","Leiocephalus_schreibersii","Corytophanes_cristatus","Crotaphytus_collaris","Dipsosaurus_dorsalis","Callisaurus_draconoides","Anolis_ricordi","Polychrus_acutirostris","Ctenoblepharys_adspersa","Chalarodon_madagascariensis","Diplolaemus_bibronii","Microlophus_thoracicus","Enyalioides_heterolepis")

# Prune for iguania
families_pruned <- drop.tip(squa,squa$tip.label[-match(families_of_interest, squa$tip.label)])
families_pruned
# Set plot size
par(mar = c(5, 5, 4, 0) + 0.1)  # Adjust the margin values as needed
# Make branches longer so text doesn't cover species name
#plot(squa_pruned, edge.width = 2, xlim = c(100, 1100), ylim = c(-10, 110))
plot(ladderize(families_pruned, right = TRUE), edge.width = 2) 