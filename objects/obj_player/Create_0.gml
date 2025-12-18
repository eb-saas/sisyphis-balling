keybindForward = ord("D");
keybindBackward = ord("A");
keybindJump = vk_space;
keybindDribble = ord("S");

playerXVelocity = 0;
playerYVelocity = 0;
airDrag = 0.2;
floorDrag = 0.4;
gravityForce = 6;
onFloor = false;

function hillSlope(x) {
	return -0.1*x+700
}
//window_set_fullscreen(true)