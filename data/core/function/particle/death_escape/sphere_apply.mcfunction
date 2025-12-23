
scoreboard players set @s temp_rotate_limit_2 10
function core:particle/death_escape/sphere_extension
scoreboard players remove @s temp_rotate_limit_1 1
execute if score @s temp_rotate_limit_1 matches 1.. rotated ~18 ~ run function core:particle/death_escape/sphere_apply