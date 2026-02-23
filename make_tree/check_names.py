name_list = ["Pogona_barbata", "Phrynocephalus_scutellatus", "Phyrnocephalus_ornatus", "Trapelus_agilis", "Bufoniceps_laungwalaensis", "Ctenophorus_nuchalis", "Leiocephalus_schreibersii", "Leiocephalus_barahonensis", "Corytophanes_cristatus", "Crotaphytus_collaris", "Crotaphytus_vestigium", "Gambelia_wislizenii", "Gambelia_copeii", "Crotaphytus_bicinctores", "Crotaphytus_dickersonae", "Enyaliodes_heterolepis", "Hoplocercus_spinosus", "Amblyrhynchus_cristatus", "Iguana_iguana", "Dipsosaurus_dorsalis", "Sauromalus_ater", "Microlophus_thoracicus", "Microlophus_grayii", "Tropidurus_spinulosis", "Tropidurus_erythrocephalus", "Callisaurus_draconoides", "Uma_inornata", "Holbrookia_maculata", "Cophosaurus_texanus", "Phrynosoma_hernandesi", "Phyrynosoma_coronatum", "Sceloporus_magister", "Sceloporus_arenicolus", "Petrosaurus_mearnsi", "Liolaemus_melanogaster", "Ctenoblepharys_adspersa", "Liolaemus_olongasta", "Phymaturus_patagonicus", "Chalarodon_madagascariensis", "Oplurus_quadrimaculatus", "Diplolaemus_bibronii"]

with open('IBC06772-mmc6.tre', 'r') as infile:
	tree = infile.readline()
	for line in name_list:
		if line not in tree:
			print(f"ERROR: {line} not in tree")
