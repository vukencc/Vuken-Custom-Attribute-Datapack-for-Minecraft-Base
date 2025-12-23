
scoreboard players set @s temp_rotate_limit_2 20
function core:particle/skill/cm/sphere_extension
scoreboard players remove @s temp_rotate_limit_1 1
execute if score @s temp_rotate_limit_1 matches 1.. rotated ~9 ~ run function core:particle/skill/cm/sphere_apply