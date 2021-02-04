extends Node 


#Harjutus 4.1
func _ready():

	var empty = []
	var nimed = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	nimed.erase("Reyes")
	nimed.append("Artur")
	var size = nimed.size()
	var sorteer = nimed.sort()
	var biggest = nimed.max()
	print("Kokku on nii palju mängijat: ",size)
	print("Esimene nimi on: ",nimed[0])
	print("Pikeim nimi on: ",biggest)
	for nimi in nimed:
		print("Mängijad: ",nimi)


#Harjutus 4.2
	var player = {"name":"Artur", "health":10, "gold":100, "items":["sword","helmet", "shield"]}
	for stats in player:
		print(player[stats])
	
	
	

