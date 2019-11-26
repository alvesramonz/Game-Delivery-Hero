extends StaticBody2D

var flip = true
var posicaoInicial 
var posicaoFinal
var velocidade = 0.4

func _ready():
	$AnimatedSprite.play("Idle")
	posicaoInicial = $".".position.x
	posicaoFinal = posicaoInicial + 700	
	
	
func _process(delta):
	if(posicaoInicial >= posicaoInicial and flip):
		$".".position.x -= velocidade
		$AnimatedSprite.flip_h = true
		if($".".position.x <= posicaoInicial):
			flip = false
			
	if($".".position.x <= posicaoFinal and !flip):
		$".".position.x += velocidade
		$AnimatedSprite.flip_h = false
		if($".".position.x >= posicaoFinal):
			flip = true
