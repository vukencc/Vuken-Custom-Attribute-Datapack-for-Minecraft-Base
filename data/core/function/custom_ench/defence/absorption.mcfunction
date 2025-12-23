execute store result score @s absorption_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/absorption" 5
execute store result score @s absorption_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/absorption" 5
execute store result score @s absorption_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/absorption" 5
execute store result score @s absorption_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/absorption" 5
execute store result score @s absorption_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/absorption" 5
execute store result score @s absorption_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/absorption" 5
scoreboard players operation @s absorption_p1 += @s absorption_p2
scoreboard players operation @s absorption_p1 += @s absorption_p3
scoreboard players operation @s absorption_p1 += @s absorption_p4
scoreboard players operation @s absorption_p1 += @s absorption_p5
scoreboard players operation @s absorption_p1 += @s absorption_p6
scoreboard objectives add abs_amount dummy
execute as @s store result score @s abs_amount run data get entity @s AbsorptionAmount
execute at @s if score @s abs_amount matches 1.. if score @s absorption_p1 matches 1.. run particle glow ~ ~1 ~ 1 1 1 0.1 25 normal
execute at @s if score @s abs_amount matches 1.. if score @s absorption_p1 matches 1.. run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
scoreboard players operation @s absorption_p1 *= @s abs_amount
scoreboard players operation @s armor_extension += @s absorption_p1