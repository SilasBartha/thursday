/// @description Draw
draw_self();

//Hit Flash Using Shader
flash = max(0, flash-1);
if(flash>0){
shader_set(shWHITE);
draw_self();
shader_reset();
}

