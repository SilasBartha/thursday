///@function getPlayerInputH()

return max(keyboard_check(vk_right), keyboard_check(ord("D")),-gamepad_axis_value(0,gp_axislh),0)-max(keyboard_check(vk_left), keyboard_check(ord("A")),gamepad_axis_value(0,gp_axislh),0);