extends Node

var salveSuurus = 5
var vaenlaseElud = 100
var skoor = 0
var laskude_arv = 0 
var effektiivsus = 0
	
func _ready():
	
	
	var vaenlaseElud = RandomNumberGenerator.new()



func reload():
	salveSuurus = 5
	
		


func tulista():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	laskude_arv+= 1
	salveSuurus-= 1
	if bool(randi() % 2):
		skoor+= 1
		vaenlaseElud-= rng.randi_range(8, 12)
		print("Pihtas")
	else:
		print("Möödas")
		
	  
	
func effekt():
	var eff = skoor*100/laskude_arv

	#mina_tulistan = (mina_tulistan.randi_range(8, 12))

func _process(delta):
	if vaenlaseElud>0:
		if Input.is_action_just_pressed("Reload"):
			print("*laeb*")
			reload()
		if Input.is_action_just_pressed("Tulista"):
			if salveSuurus>0:
				tulista() 
				print("Elud: ",vaenlaseElud)
			else:
				print("*klikk klikk*")
				
			print("Salves: ",salveSuurus)
			
	else:
		print()
		print("-------Game over!-------")
		print("Skoor: ",skoor)
		print("Laskude arv: ",laskude_arv)
		print("Effektiivsus: ",effekt() )
		get_tree().quit()
		 
