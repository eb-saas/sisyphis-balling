show_debug_message(string(x)+", "+string(y))

x = x + playerXVelocity
if (y + playerYVelocity > hillSlope(x)) {
	y = hillSlope(x)
	onFloor = true
} else {
	y = y + playerYVelocity
	onFloor = false
}

var dragMult = (onFloor ? 1 - global.floorDrag : 1 - global.airDrag)

if (keyboard_check(keybindForward)) {
	playerXVelocity += 1.5
}
if (keyboard_check(keybindBackward)) {
	playerXVelocity += -1.5
}
if (keyboard_check(keybindJump) && onFloor) {
	playerYVelocity += -100
}
if (keyboard_check(keybindToss) && current_time - prevTossTime >= 100) {
	show_debug_message("Toss!")
	var thrownBall = instance_create_layer(x, y, "Ball", obj_playerBall)
	thrownBall.ballXVelocity = 30 + power(playerXVelocity, 2) + (random(10) - 5)
	thrownBall.ballYVelocity = -50 + -power(playerYVelocity, 1.25) + (random(10) - 5)
	
	prevTossTime = current_time
}
if (keyboard_check(keybindDribble1)) {
	show_debug_message("Dribble1")
}
if (keyboard_check(keybindDribble2)) {
	show_debug_message("Dribble2")
}

playerXVelocity = playerXVelocity * dragMult
playerYVelocity = playerYVelocity * dragMult + (onFloor ? 0 : global.gravityForce)