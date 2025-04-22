summon marker ~ ~ ~ {Tags:["temp_execute_attack_count"],data:{damage:0.0}}
scoreboard objectives add temp_attack_damage dummy
scoreboard objectives add temp_attack_speed dummy
execute store result score @s temp_attack_damage run attribute @s attack_damage get 10
execute store result score @s temp_attack_speed run attribute @s attack_speed get 10
execute store result entity @n[tag=temp_execute_attack_count] data.damage double 0.005 run scoreboard players operation @s temp_attack_damage *= @s temp_attack_speed
particle sweep_attack ^ ^ ^2 0.8 0.8 0.8 0.1 10 normal
particle sweep_attack ^1 ^ ^2 0.8 0.8 0.8 0.1 10 normal
particle sweep_attack ^-1 ^ ^2 0.8 0.8 0.8 0.1 10 normal
playsound block.anvil.use hostile @s ~ ~ ~ 1 1.7 1
function center_calculation:item_spe/active/continue/execute_attack with entity @n[tag=temp_execute_attack_count] data
scoreboard objectives remove temp_attack_damage
scoreboard objectives remove temp_attack_speed
kill @n[tag=temp_execute_attack_count]