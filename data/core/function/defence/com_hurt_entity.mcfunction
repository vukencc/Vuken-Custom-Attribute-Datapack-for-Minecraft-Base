#scores entity related
execute as @s at @s run summon marker ~ ~ ~ {Tags:["temp_melee_inner"],data:{bleed:0.0,combo:0.0,crit:0.0,current:0.0,curse:0.0,first_strike:0.0,focus:0.0,quake:0.0,thunder_aspect:0}}
#bleed combo crit current curse first_strike focus ice_aspect quake slayer thunder_aspect water_aspect
execute at @s as @n[type=marker,tag=temp_melee_inner] run function core:custom_ench/melee/ench_pre
#slayer
execute at @s positioned ^ ^ ^2 as @e[type=!#minecraft:bypass,distance=..3.5,nbt={HurtTime:10s}] run function core:custom_ench/melee/melee_argu with entity @n[type=marker,tag=temp_melee_inner] data

execute as @p at @s if score @s melee_quake matches 1.. run function core:custom_ench/melee/melee_trig with entity @n[type=marker,tag=temp_melee_inner] data

execute if score @s melee_combo matches 1.. run scoreboard players set @s ench_combo_timing 30

kill @n[type=marker,tag=temp_melee_inner]

execute at @s run function operation:event/player/hurt_entity/trigger

advancement revoke @s only core:com_hurt_entity
