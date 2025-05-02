execute as @s at @s run summon item ^ ^1.3 ^1 {Item:{id:magma_block,count:1},PickupDelay:999999,Tags:["flameborn","flameborn_active","timing_limited","timing_limited_160"]}
execute at @s positioned ^ ^1.3 ^1 run attribute @n[type=item,tag=flameborn] scale base set 1.5
execute at @s as @n[type=item,tag=flameborn_active] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute at @s as @n[type=item,tag=flameborn_active] at @s run tp @s ~ ~ ~ ~180 ~
execute at @s as @n[type=item,tag=flameborn_active] at @s run tp @s ^ ^ ^1
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_x_det run data get entity @s Pos[0] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_y_det run data get entity @s Pos[1] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_z_det run data get entity @s Pos[2] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s run tp @s ^ ^ ^-1
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_x run data get entity @s Pos[0] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_y run data get entity @s Pos[1] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s store result score @s entity_z run data get entity @s Pos[2] 10
execute at @s as @n[type=item,tag=flameborn_active] at @s store result entity @s Motion[0] double 0.045 run scoreboard players operation @s entity_x_det -= @s entity_x
execute at @s as @n[type=item,tag=flameborn_active] at @s store result entity @s Motion[1] double 0.045 run scoreboard players operation @s entity_y_det -= @s entity_y
execute at @s as @n[type=item,tag=flameborn_active] at @s store result entity @s Motion[2] double 0.045 run scoreboard players operation @s entity_z_det -= @s entity_z
tag @n[type=item,tag=flameborn_active] remove flameborn_active
execute at @s run playsound entity.blaze.shoot hostile @s ~ ~ ~
scoreboard players set @s shared_active_cd 280