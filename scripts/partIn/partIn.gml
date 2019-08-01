//Initialize Beam Shatter Particle Type
globalvar partBEAMSHATTER;
partBEAMSHATTER = part_type_create();

globalvar partDRONESHATTER;
partDRONESHATTER = part_type_create();

//Settings

//Beam Shattering
part_type_sprite(partBEAMSHATTER,sBEAMPART,0,0,true);
part_type_size(partBEAMSHATTER,.5,1,0,0);
part_type_speed(partBEAMSHATTER,5,10,-.1,0);
part_type_direction(partBEAMSHATTER,0,360,0,0);
part_type_orientation(partBEAMSHATTER,partBEAMSHATTER.direction,partBEAMSHATTER.direction,1,0,0);
part_type_gravity(partBEAMSHATTER,.2,270);
part_type_life(partBEAMSHATTER,25,50);
part_type_alpha3(partBEAMSHATTER,1,1,0);

//Drone Gib Particles
part_type_sprite(partDRONESHATTER,sDRONEPART,0,0,true);
part_type_size(partDRONESHATTER,1,1.5,0,0);
part_type_speed(partDRONESHATTER,3,5,-.1,0);
part_type_direction(partDRONESHATTER,0,360,0,0);
part_type_orientation(partDRONESHATTER,partDRONESHATTER.direction,partDRONESHATTER.direction,1,0,0);
part_type_gravity(partDRONESHATTER,.3,270);
part_type_life(partDRONESHATTER,25,50);
part_type_alpha3(partDRONESHATTER,1,1,0);