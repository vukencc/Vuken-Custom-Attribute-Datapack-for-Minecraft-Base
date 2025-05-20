particle flame ^ ^ ^3 0 0.1 0 2 0 normal
particle flame ^ ^ ^-3 0 0.1 0 2 0 normal
particle flame ^-3 ^ ^ 0 0.1 0 2 0 normal
particle flame ^3 ^ ^ 0 0.1 0 2 0 normal
execute rotated ~6 ~ if score @s temp_rotate_limit_1 matches 1.. run function center_calculation:particle/enemy/flame_up_cyl_apply
