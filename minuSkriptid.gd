#Artur Snigurski
#IT20
#25.01.2021



extends Node
var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	var nimi = "Artur"
	var elud = 10
	print(nimi+" "+str(elud))
	print("Nime pikkus: ", len(nimi))
	print("Elude arv: ",elud+2)
	print(rng.randi_range(0, 19))
