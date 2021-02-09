extends Node

var mpoints = 0
var cpoints = 0
var mvalik
var rng = RandomNumberGenerator.new()
var rnd
var compc

func comp():
	rng.randomize()
	rnd = rng.randi_range(1,3)
	compc=rnd
	if compc==1:
		$arvuti.text="Rock"
	elif compc==2:
		$arvuti.text="Paper"
	else:
		$arvuti.text="Scissors"
func _on_rock_pressed():
	$valik.text="Rock"
	mvalik=1
	comp()
	if mvalik==compc:
		$out.text="Tie"
	elif mvalik==1 and compc==3:
		$out.text="Your point"
		mpoints+=1
		$mpoints.text="Your points: "+str(mpoints)
		losewin()
	elif mvalik==1 and compc==2:
		$out.text="Computer's point"
		cpoints+=1
		$cpoints.text="Computer's points: "+str(cpoints)
		losewin()
func _on_paper_pressed():
	$valik.text="Paper"
	mvalik=2
	comp()
	if mvalik==compc:
		$out.text="Tie"
	elif mvalik==2 and compc==1:
		$out.text="Your point"
		mpoints+=1
		$mpoints.text="Your points: "+str(mpoints)
		losewin()
	elif mvalik==2 and compc==3:
		$out.text="Computer's point"
		cpoints+=1
		$cpoints.text="Computer's points: "+str(cpoints)
		losewin()
func _on_scissors_pressed():
	$valik.text="Scissors"
	mvalik=3
	comp()
	if mvalik==compc:
		$out.text="Tie"
	elif mvalik==3 and compc==2:
		$out.text="Your point"
		mpoints+=1
		$mpoints.text="Your points: "+str(mpoints)
		losewin()
	elif mvalik==3 and compc==1:
		$out.text="Computer's point"
		cpoints+=1
		$cpoints.text="Computer's points: "+str(cpoints)
		losewin()
func _on_restart_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
func losewin():
	if mpoints>=5 or cpoints>=5:
		if mpoints>cpoints:
			$win.text="You win!"
			get_tree().paused = true
		else:
			$win.text="You lose."
			get_tree().paused = true
