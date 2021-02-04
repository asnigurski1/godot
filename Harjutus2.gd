extends Node
#Artur Snigurski 
#IT20


#Harjutus 3
func _ready():
	
	var player1_hit = RandomNumberGenerator.new()
	var player2_hit = RandomNumberGenerator.new()
	
	var player1 = 100
	var player2 = 100
	
	player1_hit = (player1_hit.randi_range(8, 15))
	player2_hit = (player2_hit.randi_range(8, 15))
		
	while player1 >=0 and player2>=0:
		print("Player1 lõõb: ", player1_hit)
		print("Player2 elud: ", player2 - player1_hit)
		player2-=player1_hit
		print("Player2 lõõb: ", player2_hit)
		print("Player1 elud: ", player1 - player2_hit)
		player1-=player2_hit
		if player1<=0:
			print("Player2 võitis!")
		elif player2<=0:
			print("Player1 võitis!")
		
		



#Harjutus 2
	var item = 3
	var gold = 19
	if item<=gold:
		print("Ost sooritatud. Jääk: ",gold-item)
	else:
		print("Jääb puudu %s kulda" % [gold-item])
	
	
	var a = 5
	var b = 6
	if a==b:
		print("See on ruut")
	else:
		print("Küljed %s ja %s ei moodusta ruutu")
		
