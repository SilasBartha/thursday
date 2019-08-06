/// @description Init
//Open .ini file
ini_open("savedata.ini");
//Player Default Vars
accH = ini_read_real("Player", "Acceleration", 0.25);
mVelH = ini_read_real("Player", "Max Velocity", 5);
mVelV = ini_read_real("Player", "Jump Height", 10);
ini_close();
//Movement Variables
velH = 0;
velV = 0;
jumpBuffered = false;
jumpChain = 0;
canMove = true;