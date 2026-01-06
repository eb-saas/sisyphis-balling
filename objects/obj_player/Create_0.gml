keybindForward = ord("D");
keybindBackward = ord("A");
keybindJump = vk_space;
keybindToss = ord("K");
keybindDribble1 = ord("J");
keybindDribble2 = ord("L");

playerXVelocity = 0;
playerYVelocity = 0;
global.airDrag = 0.2;
global.floorDrag = 0.4;
global.gravityForce= 6;
onFloor = false;
prevTossTime = -1000;

//window_set_fullscreen(true)