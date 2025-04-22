scoreboard objectives add temp_jump_strength dummy
scoreboard objectives add temp_attack_damage dummy

execute at @s run summon marker ~ ~ ~ {Tags:["titan_shock_temp"],data:{damage:0.0}}
execute at @s store result score @s temp_jump_strength run attribute @p jump_strength get 10
execute at @s store result score @s temp_attack_damage run attribute @p attack_damage get 10
execute at @s store result entity @n[tag=titan_shock_temp] data.damage double 0.01 run scoreboard players operation @s temp_jump_strength *= @s temp_attack_damage
execute as @s at @s run function center_calculation:item_spe/passive_trig/titan_shock_effect with entity @n[tag=titan_shock_temp] data
execute at @s run kill @n[tag=titan_shock_temp]

scoreboard objectives remove temp_jump_strength
scoreboard objectives remove temp_attack_damage