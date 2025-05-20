
scoreboard objectives add temp_rotate_limit_1 dummy
scoreboard players set @s temp_rotate_limit_1 15
execute at @s rotated 0 0 if score @s temp_rotate_limit_1 matches 1.. run function center_calculation:particle/enemy/flame_up_cyl_apply
scoreboard objectives remove temp_rotate_limit_1
