x += ballXVelocity
if (y + ballYVelocity > hillSlope(x)) {
	y = hillSlope(x)
	onFloor = true
} else {
	y = y + ballYVelocity
	onFloor = false
}

var dragMult = (onFloor ? 1 - global.floorDrag : 1 - global.airDrag)

ballXVelocity = ballXVelocity * dragMult
ballYVelocity = ballYVelocity * dragMult + (onFloor ? 0 : global.gravityForce)

if (current_time - timeSpawned >= 10000) {
	instance_destroy()
}