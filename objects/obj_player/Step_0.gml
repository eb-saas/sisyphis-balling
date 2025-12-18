show_debug_message(string(x)+", "+string(y))

x = x + playerXVelocity
if (y + playerYVelocity > hillSlope(x)) {
	y = hillSlope(x)
	onFloor = true
} else {
	y = y + playerYVelocity
	onFloor = false
}

drag = (onFloor ? 1 - floorDrag : 1 - airDrag)

if (keyboard_check(keybindForward)) {
	playerXVelocity += 1.5
}
if (keyboard_check(keybindBackward)) {
	playerXVelocity += -1.5
}
if (keyboard_check(keybindJump) && onFloor) {
	playerYVelocity += -100
}
if (keyboard_check(keybindDribble)) {
	show_debug_message("Dribble!")
}

playerXVelocity = playerXVelocity * drag
playerYVelocity = playerYVelocity * drag + (onFloor ? 0 : gravityForce)