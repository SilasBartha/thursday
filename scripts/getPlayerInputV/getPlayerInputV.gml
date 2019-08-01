///@function getPlayerInputH()

return max(keyboard_check_pressed(ord("W")), keyboard_check_pressed(vk_space), gamepad_button_check_pressed(0,gp_face1), 0) - max(keyboard_check_released(ord("W")), keyboard_check_released(vk_space), gamepad_button_check_released(0,gp_face1), 0);