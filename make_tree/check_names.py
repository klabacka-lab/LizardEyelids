name_list = ["Coleonyx_variegatus","Cordylus_cordylus","Egernia_depressa","Scincus_scincus","Lamprolepis_smaragdina","Tracheloptychus_petersi","Gerrhosaurus_skoogi","Acanthodactylus_schmidti","Acanthodactylus_gongrorhynchatus","Alopoglossus_angulatus","Gymnophthalmus_speciosus","Aspidoscelis_tigris","Heloderma_suspectum","Xenosaurus_grandis","Elgaria_multicarinata","Diploglossus_monotropis","Shinisaurus_crocodilurus","Lanthanotus_borneensis","Varanus_acanthurus","Ctenophorus_nuchalis","Trioceros_jacksonii","Leiocephalus_schreibersii","Corytophanes_cristatus","Crotaphytus_collaris","Dipsosaurus_dorsalis","Callisaurus_draconoides","Anolis_ricordi","Polychrus_acutirostris","Ctenoblepharys_adspersa","Chalarodon_madagascariensis","Diplolaemus_bibronii","Microlophus_thoracicus","Enyalioides_heterolepis"]

with open('IBC06772-mmc6.tre', 'r') as infile:
	tree = infile.readline()
	for line in name_list:
		if line not in tree:
			print(f"ERROR: {line} not in tree")
		else:
			print("FOUND")