extends Node

var playerScore = 0
var aiScore = 0

func _process(delta):
	$AiScore.text = str(aiScore)
	$PlayerScore.text = str(playerScore)

func reset_ball():
	$ball.position = Vector2(506, 308)

func print_scores():
	print(str(playerScore) + ":" + str(aiScore))

func _on_PlayerGoal_body_entered(body):
	if body == find_node("ball"):
		aiScore += 1
		print_scores()
		reset_ball()
	
func _on_AiGoal_body_entered(body):
	if body == find_node("ball"):
		playerScore += 1
		print_scores()
		reset_ball()
