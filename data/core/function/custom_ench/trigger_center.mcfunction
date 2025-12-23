scoreboard players set @s armor_extension 100
execute as @s at @s positioned ^ ^ ^2 unless entity @e[type=!#minecraft:bypass,distance=..2.2] at @s positioned ^1 ^ ^2 unless entity @e[type=!#minecraft:bypass,distance=..2.2] at @s positioned ^-1 ^ ^2 unless entity @e[type=!#minecraft:bypass,distance=..2.2] as @s at @s run function core:custom_ench/defence/promise
execute as @s at @s run function core:custom_ench/defence/absorption
execute as @s store result score @s temp_max_hp run attribute @s max_health get 0.6
execute as @s at @s if score @s health <= @s temp_max_hp run function core:custom_ench/defence/revolve
execute as @s at @s if score @s health > @s temp_max_hp run function core:custom_ench/defence/courage

execute as @s at @s if score @s time_not_taking_damage matches ..40 run function core:custom_ench/defence/ethereal

execute as @s at @s if score @s com_kill_timing matches 500.. run function core:custom_ench/defence/invade
execute as @s if score @s death_escape_timing matches 0 run function core:custom_ench/defence/death_escape
